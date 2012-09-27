class DiaferiadosController < ApplicationController
   before_filter :authenticate_user!, :except => [:show, :index]
  # GET /diaferiados
  # GET /diaferiados.json
  def index
    @diaferiados = Diaferiado.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @diaferiados }
    end
  end

  # GET /diaferiados/1
  # GET /diaferiados/1.json
  def show
    @diaferiado = Diaferiado.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @diaferiado }
    end
  end

  # GET /diaferiados/new
  # GET /diaferiados/new.json
  def new
    @diaferiado = Diaferiado.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @diaferiado }
    end
  end

  # GET /diaferiados/1/edit
  def edit
    @diaferiado = Diaferiado.find(params[:id])
  end

  # POST /diaferiados
  # POST /diaferiados.json
  def create
    @diaferiado = Diaferiado.new(params[:diaferiado])

    respond_to do |format|
      if @diaferiado.save
        format.html { redirect_to @diaferiado, notice: 'Diaferiado was successfully created.' }
        format.json { render json: @diaferiado, status: :created, location: @diaferiado }
      else
        format.html { render action: "new" }
        format.json { render json: @diaferiado.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /diaferiados/1
  # PUT /diaferiados/1.json
  def update
    @diaferiado = Diaferiado.find(params[:id])

    respond_to do |format|
      if @diaferiado.update_attributes(params[:diaferiado])
        format.html { redirect_to @diaferiado, notice: 'Diaferiado was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @diaferiado.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /diaferiados/1
  # DELETE /diaferiados/1.json
  def destroy
    @diaferiado = Diaferiado.find(params[:id])
    @diaferiado.destroy

    respond_to do |format|
      format.html { redirect_to diaferiados_url }
      format.json { head :no_content }
    end
  end
end
