# Projektarbeit geschrieben als Markdown innerhalb von LaTeX

Dies ist eine Vorlage für die Bachelorarbeit, Masterarbeit und
Projektausarbeitungen die im Informatik-Bachelor bzw. -Master an der HAW
(Hochschule für Angewandte Wissenschaften Hamburg) anzufertigen sind.

Das besondere hieran ist, daß die einzelnen Kapitel (und Unterkapitel) nicht nur
in LaTeX, sondern auch in eigenen *Markdown*-Dateien geschrieben werden können.

In Markdown zu schreiben ist einfacher und intuitiver als in LaTeX zu
schreiben.  So ist die Ablenkung durch (wie ich finde komplizierte)
LaTeX-Syntax nicht da, ein Konzentrieren nur auf das eigentliche Thema
fällt leichter.

Diese Vorlage habe ich mal vor geraumer Zeit von der allgemeinen Vorlage
abgeleitet, aufgeräumt, ein wenig umstrukturiert und um den Markdown-Support
erweitert.


# Struktur

    > tree
    .
    ├── Makefile
    ├── README.md
    ├── bib
    │   └── myliterature.bib
    ├── img
    ├── md
    │   └── markdownfile.md
    ├── pdf
    │   ├── titel.pdf
    │   └── titel_leer.pdf
    ├── report.tex
    ├── sty
    │   ├── mystyle.sty
    │   └── newCommands.sty
    └── tex
        └── texfile.tex


# PDF erzeugen

    make

Wenn das nicht klappt:

    make dull

Aufräumen (löscht auch das PDF!):

    make clean


# Links

* Markdown:
  * http://de.wikipedia.org/wiki/Markdown
  * https://guides.github.com/features/mastering-markdown/
  * https://help.github.com/articles/github-flavored-markdown/
  * https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet
* Pandoc:
  * http://pandoc.org/index.html
  * http://pandoc.org/demo/example9/pandocs-markdown.html
* Markdown in LaTeX:
  * Markdown Environment: http://tex.stackexchange.com/a/101731
  * Process Markdown File: http://tex.stackexchange.com/a/31185
* Rubber (verwendet im Makefile):
  * https://launchpad.net/rubber
  * http://vim.wikia.com/wiki/Compiling\_LaTeX\_from\_Vim

* Originalvorlage:
  * http://www.haw-hamburg.de/fakultaeten-und-departments/ti/ti-fsb/abschlussarbeiten.html#c107779
  * Download als Zip-File: http://www.haw-hamburg.de/fileadmin/user\_upload/FakTI/FSB\_TI/Abschlussarbeiten/I/haw-vorlage\_LaTeX.zip

