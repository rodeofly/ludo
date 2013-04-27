class StatiquesController < ApplicationController
  # GET /statiques
  # GET /statiques.json
  def index
    @statiques = Statique.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @statiques }
    end
  end

  # GET /statiques/1
  # GET /statiques/1.json
  def show
    @statique = Statique.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @statique }
    end
  end

  # GET /statiques/new
  # GET /statiques/new.json
  def new
    @statique = Statique.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @statique }
    end
  end

  # GET /statiques/1/edit
  def edit
    @statique = Statique.find(params[:id])
  end

  # POST /statiques
  # POST /statiques.json
  def create
    @statique = Statique.new(params[:statique])

    respond_to do |format|
      if @statique.save
        format.html { redirect_to @statique, notice: 'Statique was successfully created.' }
        format.json { render json: @statique, status: :created, location: @statique }
      else
        format.html { render action: "new" }
        format.json { render json: @statique.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /statiques/1
  # PUT /statiques/1.json
  def update
    @statique = Statique.find(params[:id])

    respond_to do |format|
      if @statique.update_attributes(params[:statique])
        format.html { redirect_to @statique, notice: 'Statique was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @statique.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /statiques/1
  # DELETE /statiques/1.json
  def destroy
    @statique = Statique.find(params[:id])
    @statique.destroy

    respond_to do |format|
      format.html { redirect_to statiques_url }
      format.json { head :no_content }
    end
  end
end
