class ExercicesController < ApplicationController
  # GET /exercices
  # GET /exercices.json
  def index
    @exercices = Exercice.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @exercices }
    end
  end

  # GET /exercices/1
  # GET /exercices/1.json
  def show
    @exercice = Exercice.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @exercice }
    end
  end

  # GET /exercices/new
  # GET /exercices/new.json
  def new
    @exercice = Exercice.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @exercice }
    end
  end

  # GET /exercices/1/edit
  def edit
    @exercice = Exercice.find(params[:id])
  end

  # POST /exercices
  # POST /exercices.json
  def create
    @exercice = Exercice.new(params[:exercice])

    respond_to do |format|
      if @exercice.save
        format.html { redirect_to @exercice, notice: 'Exercice was successfully created.' }
        format.json { render json: @exercice, status: :created, location: @exercice }
      else
        format.html { render action: "new" }
        format.json { render json: @exercice.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /exercices/1
  # PUT /exercices/1.json
  def update
    @exercice = Exercice.find(params[:id])

    respond_to do |format|
      if @exercice.update_attributes(params[:exercice])
        format.html { redirect_to @exercice, notice: 'Exercice was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @exercice.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /exercices/1
  # DELETE /exercices/1.json
  def destroy
    @exercice = Exercice.find(params[:id])
    @exercice.destroy

    respond_to do |format|
      format.html { redirect_to exercices_url }
      format.json { head :no_content }
    end
  end
end
