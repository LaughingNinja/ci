class CiprojectsController < ApplicationController
  before_filter :only_if_logged_in
  
  def index
    if !params["start_date"].nil? && !params["end_date"].nil?
      start_date = params["start_date"].to_date.to_s
      end_date =  params["end_date"].to_date.to_s  
      @ciprojects = Project.joins(:faults) & Fault.limit_date_range(start_date, end_date )
      render :partial => "grid", :locals => { :faults => @ciprojects }
    else
      @ciprojects = Ciproject.all
      respond_to do |format|
        format.html { render :html => @ciprojects}
      end
    end
  end  
  
  def new
      @ciproject = Ciproject.new 
      @site_cities = City.all
      @ship_cities = City.all
      @site_countries = Country.all
      @ship_countries = Country.all
      @site_provinces = Province.all
      @ship_provinces = Province.all
      @project_managers = User.all
      @project_designers = User.all
      @project_architects = User.all
      @project_engineers = User.all
      @bd_managers = User.all
      @field_tech1s = User.all
      @field_tech2s = User.all
      @programmer1s = User.all
      @programmer2s = User.all
      
      respond_to do |format|
        format.html
        format.xml {render :xml => @ciproject }
      end  
  end
  
  def create
    @ciproject = Ciproject.new(params[:ciproject])
    
    if @ciproject.save
      redirect_to ciprojects_path
    end
  end
  
  def edit
  end
  
  def update
    @ciproject = Ciproject.find(params[:id])
    if @ciproject.update_attributes(params[:ciproject])
      redirect_to ciprojects_path
    end 
  end
  
  def destroy
    @ciproject = Ciproject.find(params[:id])
    if @ciproject.destroy
      redirect_to ciprojects_path
    end
  end 

  def show
    @ciproject = Ciproject.find(params[:id])
    @site_cities = City.all
    @ship_cities = City.all
    @site_countries = Country.all
    @ship_countries = Country.all
    @site_provinces = Province.all
    @ship_provinces = Province.all
    @project_managers = User.all
    @project_designers = User.all
    @project_architects = User.all
    @project_engineers = User.all
    @bd_managers = User.all
    @field_tech1s = User.all
    @field_tech2s = User.all
    @programmer1s = User.all
    @programmer2s = User.all
    respond_to do |format|
      format.html
    end
  end

end
