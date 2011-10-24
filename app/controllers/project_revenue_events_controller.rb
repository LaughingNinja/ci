class ProjectRevenueEventsController < ApplicationController
  # GET /project_revenue_events
  # GET /project_revenue_events.xml
  def index
    @project_revenue_events = ProjectRevenueEvent.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @project_revenue_events }
    end
  end

  # GET /project_revenue_events/1
  # GET /project_revenue_events/1.xml
  def show
    @project_revenue_event = ProjectRevenueEvent.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @project_revenue_event }
    end
  end

  # GET /project_revenue_events/new
  # GET /project_revenue_events/new.xml
  def new
    @project_revenue_event = ProjectRevenueEvent.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @project_revenue_event }
    end
  end

  # GET /project_revenue_events/1/edit
  def edit
    @project_revenue_event = ProjectRevenueEvent.find(params[:id])
  end

  # POST /project_revenue_events
  # POST /project_revenue_events.xml
  def create
    @project_revenue_event = ProjectRevenueEvent.new(params[:project_revenue_event])

    respond_to do |format|
      if @project_revenue_event.save
        format.html { redirect_to(@project_revenue_event, :notice => 'Project revenue event was successfully created.') }
        format.xml  { render :xml => @project_revenue_event, :status => :created, :location => @project_revenue_event }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @project_revenue_event.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /project_revenue_events/1
  # PUT /project_revenue_events/1.xml
  def update
    @project_revenue_event = ProjectRevenueEvent.find(params[:id])

    respond_to do |format|
      if @project_revenue_event.update_attributes(params[:project_revenue_event])
        format.html { redirect_to(@project_revenue_event, :notice => 'Project revenue event was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @project_revenue_event.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /project_revenue_events/1
  # DELETE /project_revenue_events/1.xml
  def destroy
    @project_revenue_event = ProjectRevenueEvent.find(params[:id])
    @project_revenue_event.destroy

    respond_to do |format|
      format.html { redirect_to(project_revenue_events_url) }
      format.xml  { head :ok }
    end
  end
end
