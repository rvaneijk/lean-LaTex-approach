lean-LaTex-approach
===================

Lean LaTex approach with inverse pdf search.

Lean approach to edit LaTex documents with inverse PDF search. With the inverse search synchronization feature, double-clicking on the PDF file in SumatraPDF brings you directly to corresponding line in the .tex source file.

Pre requisites:
- cygwin
- portable SumatraPDF
- MikTex
- notepad++

The advantage is full control over the edit and make process.

Typical usage:
(1) make viriva
This sets up your development IDE which consists of:
- notepad ++
- portable SumatraPDF
- cygwin commandline to create pdf
(2) make all

Commands:
make viriya:
This commands sets up the IDE (SumatraPDF, Notepad++)

make clean:
This command cleans up all temporary files

make bib:
This command creates all bibliographic library files needed

make index:
This command creates the index files needed

make all:
This commands creates a full, clean pdf