class CanchasFutbolsController < ApplicationController
  # GET /canchas_futbols
  # GET /canchas_futbols.json
  def index
    @canchas_futbols = CanchasFutbol.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @canchas_futbols }
    end
  end

  # GET /canchas_futbols/1
  # GET /canchas_futbols/1.json
  def show
    @canchas_futbol = CanchasFutbol.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @canchas_futbol }
    end
  end

  # GET /canchas_futbols/new
  # GET /canchas_futbols/new.json
  def new
    @canchas_futbol = CanchasFutbol.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @canchas_futbol }
    end
  end

  # GET /canchas_futbols/1/edit
  def edit
    @canchas_futbol = CanchasFutbol.find(params[:id])
  end

  # POST /canchas_futbols
  # POST /canchas_futbols.json
  def create
    @canchas_futbol = CanchasFutbol.new(params[:canchas_futbol])

    respond_to do |format|
      if @canchas_futbol.save
        format.html { redirect_to @canchas_futbol, notice: 'Canchas futbol was successfully created.' }
        format.json { render json: @canchas_futbol, status: :created, location: @canchas_futbol }
      else
        format.html { render action: "new" }
        format.json { render json: @canchas_futbol.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /canchas_futbols/1
  # PUT /canchas_futbols/1.json
  def update
    @canchas_futbol = CanchasFutbol.find(params[:id])

    respond_to do |format|
      if @canchas_futbol.update_attributes(params[:canchas_futbol])
        format.html { redirect_to @canchas_futbol, notice: 'Canchas futbol was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @canchas_futbol.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /canchas_futbols/1
  # DELETE /canchas_futbols/1.json
  def destroy
    @canchas_futbol = CanchasFutbol.find(params[:id])
    @canchas_futbol.destroy

    respond_to do |format|
      format.html { redirect_to canchas_futbols_url }
      format.json { head :no_content }
    end
  end
end
