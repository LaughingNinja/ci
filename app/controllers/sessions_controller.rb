class SessionsController < ApplicationController
  def new
  end
  
  def create
    username = "WET\\" + params[:session][:name]
    password = params[:session][:password]    
    ldap = Net::LDAP.new :host => "wet-ads.corp.wetdesign.com", :port => 389, :auth => { :method => :simple, :username => username, :password => password}

    if ldap.bind #Try LDAP authentication

      base_dn = "DC=corp,DC=wetdesign,DC=com"
      filter = Net::LDAP::Filter.eq( "sAMAccountName", params[:session][:name] )

      #Retrieve email and display name
      ldap.search( :base => base_dn, :filter => filter ) do |entry|
          session[:email] = entry.mail[0].strip
          session[:displayname] = entry.displayName[0].strip 
       end   
       
       persist_locally
       authenticate_locally   

    else #Fail LDAP authentication
      fail_to_login
    end
  end
  
  def destroy
    sign_out
    redirect_to "/signin"
  end
  
  
  
  private

    def persist_locally
      if User.find_by_name(params[:session][:name]).nil?
         @user = User.new
         @user.name = params[:session][:name]
         @user.password = params[:session][:password]
         @user.email = session[:email]
         @user.display_name = session[:displayname]
         @user.admin = false
         @user.image = generate_image_name(session[:displayname])
         @user.save
      end      
    end   
    
    def authenticate_locally
      user = User.authenticate(params[:session][:name])
 
      if user.nil? 
        fail_to_login
      else
        sign_in user
        redirect_to root_url
      end      
    end
  
    def fail_to_login
      flash.now[:error] = "Invalid email/password combination."
      render 'new'      
    end  
    
    def generate_image_name(display_name)
      image_name = display_name.gsub(' ','_') + ".jpg"
    end
  

end
