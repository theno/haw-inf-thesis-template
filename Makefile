# If "make all" does not work on Gentoo Linux change 'openout_any = p' to
# 'openout_any = r' in file /etc/texmf-dist/web2c/texmf.cnf.
#
# If you can't change this param (eg. no root-access) compile manually using target 'dull'.

MAIN = report

DEPENDS = md/*.md  tex/*.tex  bib/*.bib  sty/*.sty  img/*.pdf

.PHONY : all clean

all : $(MAIN).pdf

$(MAIN).pdf : $(MAIN).tex $(DEPENDS)
	rubber -f --pdf -m pdftex -s $<
	rubber-info --check $<

img/%.pdf : img/%.dia
	dia2pdf $<

clean :
	rm -f *.aux *.bbl *.blg *.glo *.idx *.ilg *.ind *.ist *.log *.nlo *.nls *.out *.pdf *.toc md/*.md.tex tmp.*

dull : clean
	pdflatex -shell-escape $(MAIN).tex
	bibtex $(MAIN)
	pdflatex -shell-escape $(MAIN).tex
	pdflatex -shell-escape $(MAIN).tex
	pdflatex -shell-escape $(MAIN).tex
