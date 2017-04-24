@echo off

set docname=AdmissionJournal
set outdoc=AdmissionJournal.Fast
set adoc=%docname%.adoc
set stylecss=dips.css

if not defined docname (set docname=index)
if not defined outdoc (set outdoc=%docname%)

echo Genererer xhtml5 fra asciidoc filen %adoc%
call asciidoctor  -D .  -a linkcss -b xhtml5 %adoc% -o %outdoc%.html

