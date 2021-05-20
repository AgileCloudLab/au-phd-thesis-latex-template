cc = pdflatex
bb = biblatex

student = student
year = year

job_name = $(student)_phd_dissertation_$(year)

latex_auto_generate = *.aux *.log *.bbl *.toc

# Directories

## Contains main matter of your thesis 
MAIN=main/

## Contains what comes after the main matter 
BACK=back/

## Contains front matter of your paper
## Usually do not contain files you need to explicitly compile
FRONT=front/

## Contains the content of your previous papers you want in thesis
PAPERS=papers/

# Files
## Entry file 
main = thesis
background = $(MAIN)background
objectives = $(MAIN)objectives
contributions = $(MAIN)contributions
outline = $(MAIN)outline
conclusion = $(MAIN)conclusion


all: main papers
	$(cc) -jobname=$(job_name) $(main)


main:
# Latex Compilation 
	$(cc) $(main)

# Bibtex Compilation
	$(bb) $(main)
	$(bb) $(background)
	$(bb) $(objectives)
	$(bb) $(contributions)
	$(bb) $(outline)

# Latex Compilation 
	$(cc) $(main)

# Bibtex Compilation
	$(bb) $(main)
	$(bb) $(background)
	$(bb) $(objectives)
	$(bb) $(contributions)
	$(bb) $(outline)

# Latex Compilation 
	$(cc) $(main)


papers:
	$(bb) $(PAPERS)/example
clear:
	rm $(latex_auto_generate)
