REM Author: Niklas Peter
REM Execute this script in the directory containing the template's main file.

SET fullname=LaTeXTemplate.tex
SET basename=LaTeXTemplate

pdflatex %fullname%
biber %basename%
makeglossaries %basename%
REM pdflatex has to be executed three times, because the first invocation
REM might e. g. change the page numbering based on the data generated
REM by biber and makeglossaries. So the second execution has to
REM update e. g. the TOC. The third execution adapts the indentation 
REM of the TOC.
pdflatex %fullname%
pdflatex %fullname%
pdflatex %fullname%

pause