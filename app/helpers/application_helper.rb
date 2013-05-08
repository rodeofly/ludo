# encoding: UTF-8

module ApplicationHelper
  def lesc(text)
    LatexToPdf.escape_latex(text)
    
  end
  
  def hesc(text)
    
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
  end
end
