class ExerciceStatiquesController < ApplicationController
  # GET /exercice_statiques
  # GET /exercice_statiques.json
  def index
    @exercice_statiques = ExerciceStatique.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @exercice_statiques }
    end
  end

  # GET /exercice_statiques/1
  # GET /exercice_statiques/1.json
  def show
    @exercice_statique = ExerciceStatique.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @exercice_statique }
    end
  end

  # GET /exercice_statiques/new
  # GET /exercice_statiques/new.json
  def new
    @exercice_statique = ExerciceStatique.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @exercice_statique }
    end
  end

  # GET /exercice_statiques/1/edit
  def edit
    @exercice_statique = ExerciceStatique.find(params[:id])
  end

  # POST /exercice_statiques
  # POST /exercice_statiques.json
  def create
    @exercice_statique = ExerciceStatique.new(params[:exercice_statique])

    respond_to do |format|
      if @exercice_statique.save
        format.html { redirect_to @exercice_statique, notice: 'Exercice statique was successfully created.' }
        format.json { render json: @exercice_statique, status: :created, location: @exercice_statique }
      else
        format.html { render action: "new" }
        format.json { render json: @exercice_statique.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /exercice_statiques/1
  # PUT /exercice_statiques/1.json
  def update
    @exercice_statique = ExerciceStatique.find(params[:id])

    respond_to do |format|
      if @exercice_statique.update_attributes(params[:exercice_statique])
        format.html { redirect_to @exercice_statique, notice: 'Exercice statique was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @exercice_statique.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /exercice_statiques/1
  # DELETE /exercice_statiques/1.json
  def destroy
    @exercice_statique = ExerciceStatique.find(params[:id])
    @exercice_statique.destroy

    respond_to do |format|
      format.html { redirect_to exercice_statiques_url }
      format.json { head :no_content }
    end
  end
end
