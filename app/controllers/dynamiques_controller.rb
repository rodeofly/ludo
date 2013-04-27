class DynamiquesController < ApplicationController
  # GET /dynamiques
  # GET /dynamiques.json
  def index
    @dynamiques = Dynamique.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @dynamiques }
    end
  end

  # GET /dynamiques/1
  # GET /dynamiques/1.json
  def show
    @dynamique = Dynamique.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @dynamique }
    end
  end

  # GET /dynamiques/new
  # GET /dynamiques/new.json
  def new
    @dynamique = Dynamique.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @dynamique }
    end
  end

  # GET /dynamiques/1/edit
  def edit
    @dynamique = Dynamique.find(params[:id])
  end

  # POST /dynamiques
  # POST /dynamiques.json
  def create
    @dynamique = Dynamique.new(params[:dynamique])

    respond_to do |format|
      if @dynamique.save
        format.html { redirect_to @dynamique, notice: 'Dynamique was successfully created.' }
        format.json { render json: @dynamique, status: :created, location: @dynamique }
      else
        format.html { render action: "new" }
        format.json { render json: @dynamique.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /dynamiques/1
  # PUT /dynamiques/1.json
  def update
    @dynamique = Dynamique.find(params[:id])

    respond_to do |format|
      if @dynamique.update_attributes(params[:dynamique])
        format.html { redirect_to @dynamique, notice: 'Dynamique was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @dynamique.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dynamiques/1
  # DELETE /dynamiques/1.json
  def destroy
    @dynamique = Dynamique.find(params[:id])
    @dynamique.destroy

    respond_to do |format|
      format.html { redirect_to dynamiques_url }
      format.json { head :no_content }
    end
  end
end
