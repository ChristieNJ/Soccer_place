class EventoDeportivosController < ApplicationController
  # GET /evento_deportivos
  # GET /evento_deportivos.json
  def index
    @evento_deportivos = EventoDeportivo.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @evento_deportivos }
    end
  end

  # GET /evento_deportivos/1
  # GET /evento_deportivos/1.json
  def show
    @evento_deportivo = EventoDeportivo.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @evento_deportivo }
    end
  end

  # GET /evento_deportivos/new
  # GET /evento_deportivos/new.json
  def new
    @evento_deportivo = EventoDeportivo.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @evento_deportivo }
    end
  end

  # GET /evento_deportivos/1/edit
  def edit
    @evento_deportivo = EventoDeportivo.find(params[:id])
  end

  # POST /evento_deportivos
  # POST /evento_deportivos.json
  def create
    @evento_deportivo = EventoDeportivo.new(params[:evento_deportivo])

    respond_to do |format|
      if @evento_deportivo.save
        format.html { redirect_to @evento_deportivo, notice: 'Evento deportivo was successfully created.' }
        format.json { render json: @evento_deportivo, status: :created, location: @evento_deportivo }
      else
        format.html { render action: "new" }
        format.json { render json: @evento_deportivo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /evento_deportivos/1
  # PUT /evento_deportivos/1.json
  def update
    @evento_deportivo = EventoDeportivo.find(params[:id])

    respond_to do |format|
      if @evento_deportivo.update_attributes(params[:evento_deportivo])
        format.html { redirect_to @evento_deportivo, notice: 'Evento deportivo was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @evento_deportivo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /evento_deportivos/1
  # DELETE /evento_deportivos/1.json
  def destroy
    @evento_deportivo = EventoDeportivo.find(params[:id])
    @evento_deportivo.destroy

    respond_to do |format|
      format.html { redirect_to evento_deportivos_url }
      format.json { head :no_content }
    end
  end
end
