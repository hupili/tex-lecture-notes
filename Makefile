
# assign a name here
GOAL=hpl-ln-temp
# default directory settings
DIR_OUTPUT=output
DIR_PIC=eps

${GOAL}.pdf : ${GOAL}.tex ${GOAL}.bib
	#process .tex file
	latex ${GOAL}.tex
	#create .bbl file
	bibtex ${GOAL}
	#process .bbl file and generate .aux file
	latex ${GOAL}
	#final .ps file
	latex ${GOAL}
	latex ${GOAL}
	dvipdf ${GOAL}.dvi ${GOAL}.pdf

clean : 
	rm *~ ${GOAL}.aux ${GOAL}.bbl ${GOAL}.pdf ${GOAL}.dvi ${GOAL}.log ${GOAL}.blg
