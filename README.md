# AU PhD Thesis LaTeX template - version 1.0.0

There is no official AU LaTeX template so we have adapted our own based on a template passed between PhD Students.
We suggest that you use this template for your PhD thesis.

The template expects you to use `pdfdlatex` for compilation of latex code and `bibtex` for bibliography compilation. 

# Version changes

Changes between versions are document in the CHANGELOG file  

# Setup for you 

In `template/commands.tex` replace: 

- `<STUDENT>` with your full name 
- `<SUPERVISOR>` with your supervisors full name 
- `<THESIS TITLE>` with your thesis title 
- `<MONTH>` with your hand in month 



# Build 

## Setup 

## Command line with Make 

In your terminal change directory to the root folder of your thesis repository and type `make`.

## TexStudio or TexMaker with Make 

Setting up the compilation process in TexStudio and TexMaker using latex commands is none trivial and we recommend you simply use the Makefile and adopt it based on your needs. 
It will still be possible to build using TexStudio and TexMaker by providing a user defined build option where you simply need to provide `make` as the command used for build. 
This will run `make` in the root directory. 

# Customisation

To customise the template add custom packages to `template/settings_custom.tex` before adding to preamble, as it will be easier to determine if problems are from the original template or you custom settings. 

If you really want to change the template alter `template/preamble.tex` and if you think you changes 

# Embedded PDF information 

In `thesis.tex` you will see this code

```latex
\hypersetup{pdfauthor={\student},
			pdftitle={\thesisTitle},
            % pdfsubject={},
            % pdfkeywords={}
```
You can add a subject and keywords to your PDF file by altering this 

# Glossaries

Glossaries are setup to work without using `makeglossaries` and you can define your abbreviations in the `back/glossaries.tex` file. 

# Special Packages

In this section we explain the usage of some special LaTeX packages used in the template that may be novel to you. 

## chapterbib

Allows for inserting reference after a chapter / section. 
To use it in the end of the chapter add: 

```latex
\bibliographystyle{IEEEtran}
\tocless\bibliography{references}
```

For each you chapter you need to add a `bibtex` compilation step for that specific chapter or paper file 


# Package options 

## xcolor -> svgnames, dvinames

# Useful packages not include in the template

## Todo notes

This package allows you use `\todo{comment}`, `\missingfigure{desc}`, and so on. 
The original template came with this configuration for todonotes

```latex
\usepackage[colorinlistoftodos,textwidth={\thesisPaperMarginInner - 2mm}]{todonotes}
% \usepackage[colorinlistoftodos,textwidth={\thesisPaperMarginInner - 2mm},disable]{todonotes}
\newcommand{\todonote}[2]{
	\todo[inline, color=cyan, caption={\Partname~$>$ \Chaptername~$>$  #1}]{
		\begin{minipage}[t]{\linewidth}
			\textbf{#1}:
			#2
		\end{minipage}
	}
}
\newcommand{\todonotes}[2]{\todonote{#1}{#2}}
%\newcommand{\note}[2]{#1 : #2}
\newcommand{\comment}[1]{\todo[size=\scriptsize]{#1}}
\newcommand{\todoref}[1]{\todo[color=green, size=\tiny, caption={\Partname~$>$ \Chaptername~$>$ #1}]{Ref: #1}}
\newcommand{\tbc}{\todo[inline, color=yellow, caption={\Partname~$>$ \Chaptername~$>$ To be continued}]{To be continued...}}
\newcommand{\TBC}{\tbc}
\newcommand{\pageplaceholder}[1]{\todo[inline, color=red, caption={Placeholder: #1}]{Start of placehoder \\ \vspace{5cm} \huge{#1} \\ \vspace{5cm} \normalsize{End of placeholder}}}
```

# pgfplots 

A package for making plots in raw latex.
For basic configuration add

```latex
\usepackage{pgfplots}
\pgfplotsset{compat=newest}
```
You can additionally set a general width of plots, by adding `width=<WIDTH>` to the `\pgfplotsset` configuration where with is the width you want.  

# listings

listings is a package for include source code in latex. 

```latex
\usepackage{listings}
```

This just gives a basic (ugly) source code representation. 
For a prettier include basic include see: [https://github.com/AgileCloudLab/au_scaleiot_beamer_theme/blob/master/lstset.tex](https://github.com/AgileCloudLab/au_scaleiot_beamer_theme/blob/master/lstset.tex)

# Maintainer 

Current maintainer of the repository is PostDoc Lars Nielsen (lani@ece.au.dk) question send by email about the template should in the subject start with `[au-thesis template?]` and then initial subject.
