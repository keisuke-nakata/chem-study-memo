# `make md2pdf target=<stem of filename>`
md2pdf:
	pandoc --pdf-engine=lualatex -V documentclass=ltjsarticle -V luatexjapresetoptions=hiragino-pron -o $(target).pdf $(target).md

# `make tex2pdf target=<stem of filename>`
# vscode では、 LaTeX Workshop Extension で View LaTeX PDF File するのが楽
# see https://qiita.com/rainbartown/items/d7718f12d71e688f3573
tex2pdf:
	latexmk -pv $(target).tex
