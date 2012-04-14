class CanchaFutbolsController < ApplicationController
  # GET /cancha_futbols
  # GET /cancha_futbols.json
  def index
    @cancha_futbols = CanchaFutbol.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @cancha_futbols }
    end
  end

  # GET /cancha_futbols/1
  # GET /cancha_futbols/1.json
  def show
    @cancha_futbol = CanchaFutbol.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @cancha_futbol }
    end
  end

  # GET /cancha_futbols/new
  # GET /cancha_futbols/new.json
  def new
    @cancha_futbol = CanchaFutbol.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @cancha_futbol }
    end
  end

  # GET /cancha_futbols/1/edit
  def edit
    @cancha_futbol = CanchaFutbol.find(params[:id])
  end

  # POST /cancha_futbols
  # POST /cancha_futbols.json
  def create
    @cancha_futbol = CanchaFutbol.new(params[:cancha_futbol])

    respond_to do |format|
      if @cancha_futbol.save
        format.html { redirect_to @cancha_futbol, notice: 'Cancha futbol was successfully created.' }
        format.json { render json: @cancha_futbol, status: :created, location: @cancha_futbol }
      else
        format.html { render action: "new" }
        format.json { render json: @cancha_futbol.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /cancha_futbols/1
  # PUT /cancha_futbols/1.json
  def update
    @cancha_futbol = CanchaFutbol.find(params[:id])

    respond_to do |format|
      if @cancha_futbol.update_attributes(params[:cancha_futbol])
        format.html { redirect_to @cancha_futbol, notice: 'Cancha futbol was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @cancha_futbol.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cancha_futbols/1
  # DELETE /cancha_futbols/1.json
  def destroy
    @cancha_futbol = CanchaFutbol.find(params[:id])
    @cancha_futbol.destroy

    respond_to do |format|
      format.html { redirect_to cancha_futbols_url }
      format.json { head :no_content }
    end
  end
end
