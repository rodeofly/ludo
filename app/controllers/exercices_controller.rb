# encoding: UTF-8

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
    text = @exercice.contenu
    #Effacer tout avant begin document
    text.gsub!(/.*?(?=\\begin{document)/im, "")

    # Remplacer les <anchor1>exp1$<anchor2> par exp2
    # $text$ => (text)
    text.gsub!(/\$(.*?)\$/im, '\(\\1\)')
    # textit{text} => <i>text</i>
    text.gsub!(/\\textit\{(.*?)\}/im, '<i>\\1</i>')
    # \begin{center} => <center>text</center>
    text.gsub!(/\\begin\{center\}(.*?)\\end\{center\}/im, '<center>\\1</center>')
    
    # Can't Match Html !
    text.gsub!("~", "")
    text.gsub!("\\begin{document}", "")
    text.gsub!("\\end{document}", "")
    text.gsub!("\\medskip", "")
    text.gsub!("\\bigskip", "")

    # Bon Match !
    text.gsub!("\\'E", "É")
    text.gsub!("\\exo", "<h1>Exercice</h1>")
    text.gsub!("\\begin{itemize}", "<ul>")
    text.gsub!("\\item " ,"<li>")
    text.gsub!("\\end{itemize}", "</ul>")
    text.gsub!("\\begin{enumerate}", "<ol>")
    text.gsub!("\\end{enumerate}", "</ol>")
    @exercice.contenu= text

    require 'rserve/simpler'
    r = Rserve::Simpler.new
    # convert with hash.to_dataframe or Rserve::DataFrame.new(hash)
    r.command(:filename => '/var/www/ludo/app/assets/images/R/rplot.png') do %Q{
        
        png(filename)
        vals <- curve( (x-5)*(x-3)/( (x+1)*(x-4) ), -3 ,5, n=1000)
        is.na(vals$y) <- abs(vals$y) > 100
        plot(vals, type="l",xlab="x axis", ylab="y axis", main="représentation graphique", ylim=c(0,20), xlim=c(0,20), pch=15, col="blue")
        dev.off()
      }
    end
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
