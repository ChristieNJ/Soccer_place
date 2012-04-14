class ServAdicionalesController < ApplicationController
  # GET /serv_adicionales
  # GET /serv_adicionales.json
  def index
    @serv_adicionales = ServAdicionale.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @serv_adicionales }
    end
  end

  # GET /serv_adicionales/1
  # GET /serv_adicionales/1.json
  def show
    @serv_adicionale = ServAdicionale.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @serv_adicionale }
    end
  end

  # GET /serv_adicionales/new
  # GET /serv_adicionales/new.json
  def new
    @serv_adicionale = ServAdicionale.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @serv_adicionale }
    end
  end

  # GET /serv_adicionales/1/edit
  def edit
    @serv_adicionale = ServAdicionale.find(params[:id])
  end

  # POST /serv_adicionales
  # POST /serv_adicionales.json
  def create
    @serv_adicionale = ServAdicionale.new(params[:serv_adicionale])

    respond_to do |format|
      if @serv_adicionale.save
        format.html { redirect_to @serv_adicionale, notice: 'Serv adicionale was successfully created.' }
        format.json { render json: @serv_adicionale, status: :created, location: @serv_adicionale }
      else
        format.html { render action: "new" }
        format.json { render json: @serv_adicionale.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /serv_adicionales/1
  # PUT /serv_adicionales/1.json
  def update
    @serv_adicionale = ServAdicionale.find(params[:id])

    respond_to do |format|
      if @serv_adicionale.update_attributes(params[:serv_adicionale])
        format.html { redirect_to @serv_adicionale, notice: 'Serv adicionale was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @serv_adicionale.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /serv_adicionales/1
  # DELETE /serv_adicionales/1.json
  def destroy
    @serv_adicionale = ServAdicionale.find(params[:id])
    @serv_adicionale.destroy

    respond_to do |format|
      format.html { redirect_to serv_adicionales_url }
      format.json { head :no_content }
    end
  end
end
