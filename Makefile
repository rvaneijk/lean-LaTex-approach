viriya:
	/cygdrive/h/portable_apps/Start.exe &
	/cygdrive/h/portable_apps/PortableApps/SumatraPDFPortable/SumatraPDFPortable.exe -inverse-search "\"H:\portable_apps\PortableApps\Notepad++Portable\Notepad++Portable.exe\" -n%l \"%f\"" &
	/cygdrive/h/portable_apps/PortableApps/Notepad++Portable/Notepad++Portable.exe &sumatra:
	/cygdrive/h/portable_apps/PortableApps/SumatraPDFPortable/SumatraPDFPortable.exe -inverse-search "\"H:\portable_apps\PortableApps\Notepad++Portable\Notepad++Portable.exe\" -n%l \"%f\"" 
	
bib:
	/cygdrive/h/portable_apps/miktex-portable/miktex/bin/bibtex.exe ClassicThesis
	/cygdrive/h/portable_apps/miktex-portable/miktex/bin/bibtex.exe gov
	/cygdrive/h/portable_apps/miktex-portable/miktex/bin/bibtex.exe rep
	/cygdrive/h/portable_apps/miktex-portable/miktex/bin/bibtex.exe mypub
	/cygdrive/h/portable_apps/miktex-portable/miktex/bin/bibtex.exe myint
	/cygdrive/h/portable_apps/miktex-portable/miktex/bin/bibtex.exe mypan
	/cygdrive/h/portable_apps/miktex-portable/miktex/bin/bibtex.exe myack

index:
	/cygdrive/h/portable_apps/miktex-portable/miktex/bin/makeindex ClassicThesis.idx -t ClassicThesis.ilg -o ClassicThesis.ind  -s ClassicThesis.ist

clean:
	rm -f *.aux *.log *.bbl *.blg *.brf *.cb *.ind *.idx *.ilg *.inx *.ps *.dvi *.toc *.out *.lof *.lol *.lot *.loa \
	./Chapters/*.aux ./Chapters/*.log ./Chapters/*.log ./Chapters/*.bbl ./Chapters/*.blg\
	./FrontBackmatter/*.aux ./FrontBackmatter/*.log ./FrontBackmatter/*.log ./FrontBackmatter/*.bbl ./FrontBackmatter/*.blg

all:
	rm -f *.aux *.log *.bbl *.blg *.brf *.cb *.ind *.idx *.ilg *.inx *.ps *.dvi *.toc *.out *.lof *.lol *.lot *.loa \
	./Chapters/*.aux ./Chapters/*.log ./Chapters/*.log ./Chapters/*.bbl ./Chapters/*.blg\
	./FrontBackmatter/*.aux ./FrontBackmatter/*.log ./FrontBackmatter/*.log ./FrontBackmatter/*.bbl ./FrontBackmatter/*.blg
	/cygdrive/h/portable_apps/miktex-portable/miktex/bin/pdflatex.exe -interaction=nonstopmode -synctex=1 --src-specials ClassicThesis.tex
	/cygdrive/h/portable_apps/miktex-portable/miktex/bin/bibtex.exe ClassicThesis
	/cygdrive/h/portable_apps/miktex-portable/miktex/bin/bibtex.exe gov
	/cygdrive/h/portable_apps/miktex-portable/miktex/bin/bibtex.exe rep
	/cygdrive/h/portable_apps/miktex-portable/miktex/bin/bibtex.exe mypub
	/cygdrive/h/portable_apps/miktex-portable/miktex/bin/bibtex.exe myint
	/cygdrive/h/portable_apps/miktex-portable/miktex/bin/bibtex.exe mypan
	/cygdrive/h/portable_apps/miktex-portable/miktex/bin/bibtex.exe myack
	/cygdrive/h/portable_apps/miktex-portable/miktex/bin/pdflatex.exe -interaction=nonstopmode -synctex=1 --src-specials ClassicThesis.tex
	/cygdrive/h/portable_apps/miktex-portable/miktex/bin/makeindex ClassicThesis.idx -t ClassicThesis.ilg -o ClassicThesis.ind  -s ClassicThesis.ist
	/cygdrive/h/portable_apps/miktex-portable/miktex/bin/pdflatex.exe -interaction=nonstopmode -synctex=1 --src-specials ClassicThesis.tex
	/cygdrive/h/portable_apps/miktex-portable/miktex/bin/pdflatex.exe -interaction=nonstopmode -synctex=1 --src-specials ClassicThesis.tex
