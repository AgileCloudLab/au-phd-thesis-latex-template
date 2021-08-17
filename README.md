# AU PhD Thesis LaTeX template 

There is no official AU LaTeX template so we have adapted our own based on a template passed between PhD Students.
We suggest that you use this template for your PhD thesis.

The template expects you to use `pdfdlatex` for compilation of latex code and `bibtex` for bibliography compilation. 

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

### Clean compile timed generated LaTeX files

If you want to clean files such as `.aux` and `.toc` you can run `make clear` which removes all files generate at compile time by `pdflatex` and `bibtex`.
**NOTE** this increase compilation time when you do your next compile. 


## TexStudio or TexMaker with Make 

Setting up the compilation process in TexStudio and TexMaker using latex commands is none trivial and we recommend you simply use the Makefile and adopt it based on your needs. 
It will still be possible to build using TexStudio and TexMaker by providing a user defined build option where you simply need to provide `make` as the command used for build. 
This will run `make` in the root directory. 

# Glossaries

Glossaries are setup to work without using `makeglossaries` and you can define your abbreviations in the `back/glossaries.tex` file. 

# Special Packages

In this section we explain the usage of some special LaTeX packages used in the template that may be novel to you. 

## Chapterbib

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



