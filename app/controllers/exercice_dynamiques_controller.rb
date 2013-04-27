class ExerciceDynamiquesController < ApplicationController
  # GET /exercice_dynamiques
  # GET /exercice_dynamiques.json
  def index
    @exercice_dynamiques = ExerciceDynamique.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @exercice_dynamiques }
    end
  end

  # GET /exercice_dynamiques/1
  # GET /exercice_dynamiques/1.json
  def show
    @exercice_dynamique = ExerciceDynamique.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @exercice_dynamique }
    end
  end

  # GET /exercice_dynamiques/new
  # GET /exercice_dynamiques/new.json
  def new
    @exercice_dynamique = ExerciceDynamique.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @exercice_dynamique }
    end
  end

  # GET /exercice_dynamiques/1/edit
  def edit
    @exercice_dynamique = ExerciceDynamique.find(params[:id])
  end

  # POST /exercice_dynamiques
  # POST /exercice_dynamiques.json
  def create
    @exercice_dynamique = ExerciceDynamique.new(params[:exercice_dynamique])

    respond_to do |format|
      if @exercice_dynamique.save
        format.html { redirect_to @exercice_dynamique, notice: 'Exercice dynamique was successfully created.' }
        format.json { render json: @exercice_dynamique, status: :created, location: @exercice_dynamique }
      else
        format.html { render action: "new" }
        format.json { render json: @exercice_dynamique.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /exercice_dynamiques/1
  # PUT /exercice_dynamiques/1.json
  def update
    @exercice_dynamique = ExerciceDynamique.find(params[:id])

    respond_to do |format|
      if @exercice_dynamique.update_attributes(params[:exercice_dynamique])
        format.html { redirect_to @exercice_dynamique, notice: 'Exercice dynamique was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @exercice_dynamique.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /exercice_dynamiques/1
  # DELETE /exercice_dynamiques/1.json
  def destroy
    @exercice_dynamique = ExerciceDynamique.find(params[:id])
    @exercice_dynamique.destroy

    respond_to do |format|
      format.html { redirect_to exercice_dynamiques_url }
      format.json { head :no_content }
    end
  end
end
