class TurnosController < ApplicationController
  # GET /turnos
  # GET /turnos.json
  def index
    @turnos = Turno.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @turnos }
    end
  end

  # GET /turnos/1
  # GET /turnos/1.json
  def show
    @turno = Turno.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @turno }
    end
  end

  # GET /turnos/new
  # GET /turnos/new.json
  def new
    @turno = Turno.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @turno }
    end
  end

  # GET /turnos/1/edit
  def edit
    @turno = Turno.find(params[:id])
  end

  # POST /turnos
  # POST /turnos.json
  def create
    @turno = Turno.new(params[:turno])

    respond_to do |format|
      if @turno.save
        format.html { redirect_to @turno, notice: 'Turno was successfully created.' }
        format.json { render json: @turno, status: :created, location: @turno }
      else
        format.html { render action: "new" }
        format.json { render json: @turno.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /turnos/1
  # PUT /turnos/1.json
  def update
    @turno = Turno.find(params[:id])

    respond_to do |format|
      if @turno.update_attributes(params[:turno])
        format.html { redirect_to @turno, notice: 'Turno was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @turno.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /turnos/1
  # DELETE /turnos/1.json
  def destroy
    @turno = Turno.find(params[:id])
    @turno.destroy

    respond_to do |format|
      format.html { redirect_to turnos_url }
      format.json { head :no_content }
    end
  end
end
