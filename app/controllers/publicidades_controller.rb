class PublicidadesController < ApplicationController
  # GET /publicidades
  # GET /publicidades.json
  def index
    @publicidades = Publicidade.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @publicidades }
    end
  end

  # GET /publicidades/1
  # GET /publicidades/1.json
  def show
    @publicidade = Publicidade.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @publicidade }
    end
  end

  # GET /publicidades/new
  # GET /publicidades/new.json
  def new
    @publicidade = Publicidade.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @publicidade }
    end
  end

  # GET /publicidades/1/edit
  def edit
    @publicidade = Publicidade.find(params[:id])
  end

  # POST /publicidades
  # POST /publicidades.json
  def create
    @publicidade = Publicidade.new(params[:publicidade])

    respond_to do |format|
      if @publicidade.save
        format.html { redirect_to @publicidade, notice: 'Publicidade was successfully created.' }
        format.json { render json: @publicidade, status: :created, location: @publicidade }
      else
        format.html { render action: "new" }
        format.json { render json: @publicidade.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /publicidades/1
  # PUT /publicidades/1.json
  def update
    @publicidade = Publicidade.find(params[:id])

    respond_to do |format|
      if @publicidade.update_attributes(params[:publicidade])
        format.html { redirect_to @publicidade, notice: 'Publicidade was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @publicidade.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /publicidades/1
  # DELETE /publicidades/1.json
  def destroy
    @publicidade = Publicidade.find(params[:id])
    @publicidade.destroy

    respond_to do |format|
      format.html { redirect_to publicidades_url }
      format.json { head :no_content }
    end
  end
end
