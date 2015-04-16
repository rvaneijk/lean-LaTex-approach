#Lean-LaTex-approach

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

Problem: Syntax higlighting, Notepad++/TeX integration
Solution:
(1) disable Tex in Preferences|SyntaxMarking,
(2) load http://www.blaeu.com/uploads/tex/tex_udl.xml
(3) cd “H:\portable_apps\PortableApps\Notepad++Portable\App\Notepad++\plugins\APIs” && cp tex.xml userDefineLang.xml

Problem: Smart spell checking
Solution:
(4) install Aspell and dictionary
(5) install npp_exec plugin, <F6>,

NPP_SAVE
NPP_RUN "H:\portable_apps\Aspell\bin\aspell.exe" -t --add-tex-command="definecolor ppp,lstdefinestyle pp,color p,operatorname p" check "$(FULL_CURRENT_PATH)"

Problem: Console Highlighting
Solution:
(6) <F6>,

NPP_SAVE
cd /cygdrive/h/
cd "! Viriya\PhD dissertatie Rob van Eijk\dissertatie v9"
make all

(7) <SHIFT-F6>, replace|ReplaceFilter1|replace / with \
(8) <SHIFT-F6>, Higlight|Mask

%ABSFILE%:%LINE%:*,0xFF,0x00,0x00,B
Higlight|Mask|*.tex:%LINE%:*,0xFF,0x00,0x00,B
Higlight|Mask|*Warning:*,0x00,0x00,0xFF,B
Higlight|Mask|*Fout*,0xFF,0x00,0x00,B
Higlight|Mask|*mislukt:*,0xFF,0x00,0x00,B

Problem: Compiling MikTex document on Ubuntu
Solution: sudo apt-get install texlive-full