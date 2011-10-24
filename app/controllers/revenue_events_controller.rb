class RevenueEventsController < ApplicationController
  # GET /revenue_events
  # GET /revenue_events.xml
  def index
    @revenue_events = RevenueEvent.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @revenue_events }
    end
  end

  # GET /revenue_events/1
  # GET /revenue_events/1.xml
  def show
    @revenue_event = RevenueEvent.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @revenue_event }
    end
  end

  # GET /revenue_events/new
  # GET /revenue_events/new.xml
  def new
    @revenue_event = RevenueEvent.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @revenue_event }
    end
  end

  # GET /revenue_events/1/edit
  def edit
    @revenue_event = RevenueEvent.find(params[:id])
  end

  # POST /revenue_events
  # POST /revenue_events.xml
  def create
    @revenue_event = RevenueEvent.new(params[:revenue_event])

    respond_to do |format|
      if @revenue_event.save
        format.html { redirect_to(@revenue_event, :notice => 'Revenue event was successfully created.') }
        format.xml  { render :xml => @revenue_event, :status => :created, :location => @revenue_event }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @revenue_event.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /revenue_events/1
  # PUT /revenue_events/1.xml
  def update
    @revenue_event = RevenueEvent.find(params[:id])

    respond_to do |format|
      if @revenue_event.update_attributes(params[:revenue_event])
        format.html { redirect_to(@revenue_event, :notice => 'Revenue event was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @revenue_event.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /revenue_events/1
  # DELETE /revenue_events/1.xml
  def destroy
    @revenue_event = RevenueEvent.find(params[:id])
    @revenue_event.destroy

    respond_to do |format|
      format.html { redirect_to(revenue_events_url) }
      format.xml  { head :ok }
    end
  end
end
