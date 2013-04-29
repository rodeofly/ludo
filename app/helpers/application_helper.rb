module ApplicationHelper

  def hesc(text)
    text.gsub!(/.*?(?=\\begin{document)/im, "")
    text.gsub!("\\exo", "<h1>Exercice</h1>")

    text.gsub!("\\medskip", "")
    text.gsub!("\\bigskip", "")


    text.gsub!(/(\$(.*?)\$)/i, '\(\\2\)')

    text.gsub!("\\begin{itemize}", "<ul>")
    text.gsub!("\\item " ,"<li>")
    text.gsub!("\\end{itemize}", "</ul>")
    text.gsub!("\\begin{enumerate}", "<ol>")
    text.gsub!("\\end{enumerate}", "</ol>")
    return raw(text)
    
  end
end
