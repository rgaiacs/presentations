all: bpcs bgt

bpcs:
	cd best_practices_for_scientific_computing; pdflatex -interaction nonstopmode bpsc.tex
	-cd best_practices_for_scientific_computing; bibtex nonstopmode bpsc.tex
	cd best_practices_for_scientific_computing; pdflatex -interaction nonstopmode bpsc.tex
	cd best_practices_for_scientific_computing; pdflatex -interaction nonstopmode bpsc.tex
	mv best_practices_for_scientific_computing/bpsc.pdf bpsc.pdf

bgt:
	cd basic_git_talk; pdflatex -interaction nonstopmode bgt.tex
	-cd basic_git_talk; bibtex nonstopmode bgt.tex
	cd basic_git_talk; pdflatex -interaction nonstopmode bgt.tex
	cd basic_git_talk; pdflatex -interaction nonstopmode bgt.tex
	mv basic_git_talk/bgt.pdf bgt.pdf

help:
	@echo "Para compilar todas as apresentacoes utilize apenas"
	@echo "    \$$ make"
	@echo "Para obter apenas uma das apresentacoes, passe"
	@echo "como parametro um dos seguintes argumentos:"
	@echo "- bpcs: para best_practices_for_scientific"
	@echo "- bgt: para basic_git_talk"
