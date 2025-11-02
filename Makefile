# see https://github.com/keisuke-nakata/texlive-ja/blob/main/Makefile
tex2pdf:
	docker run --rm -it -v $(PWD):/workdir texlive-ja:latest sh -c 'latexmk -C $(target).tex && latexmk $(target).tex && latexmk -c $(target).tex'
