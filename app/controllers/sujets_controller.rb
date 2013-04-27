class SujetsController < ApplicationController
  # GET /sujets
  # GET /sujets.json
  def index
    @sujets = Sujet.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @sujets }
    end
  end

  # GET /sujets/1
  # GET /sujets/1.json
  def show
    @sujet = Sujet.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @sujet }
    end
  end

  # GET /sujets/new
  # GET /sujets/new.json
  def new
    @sujet = Sujet.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @sujet }
    end
  end

  # GET /sujets/1/edit
  def edit
    @sujet = Sujet.find(params[:id])
  end

  # POST /sujets
  # POST /sujets.json
  def create
    @sujet = Sujet.new(params[:sujet])

    respond_to do |format|
      if @sujet.save
        format.html { redirect_to @sujet, notice: 'Sujet was successfully created.' }
        format.json { render json: @sujet, status: :created, location: @sujet }
      else
        format.html { render action: "new" }
        format.json { render json: @sujet.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /sujets/1
  # PUT /sujets/1.json
  def update
    @sujet = Sujet.find(params[:id])

    respond_to do |format|
      if @sujet.update_attributes(params[:sujet])
        format.html { redirect_to @sujet, notice: 'Sujet was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @sujet.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sujets/1
  # DELETE /sujets/1.json
  def destroy
    @sujet = Sujet.find(params[:id])
    @sujet.destroy

    respond_to do |format|
      format.html { redirect_to sujets_url }
      format.json { head :no_content }
    end
  end
end
