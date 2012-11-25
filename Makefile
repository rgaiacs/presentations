PFolder=''
PFile=''

all: bpcs bgt agt

pdf:
	cd $(PFolder); pdflatex -interaction nonstopmode $(PFile)
	-cd $(PFolder); bibtex nonstopmode $(PFile)
	cd $(PFolder); pdflatex -interaction nonstopmode $(PFile)
	cd $(PFolder); pdflatex -interaction nonstopmode $(PFile)
	mv $(PFolder)/$(subst .tex,.pdf,$(PFile)) $(subst .tex,.pdf,$(PFile))

bpcs:
	$(MAKE) PFolder=best_practices_for_scientific_computing PFile=bpsc.tex pdf

bgt:
	$(MAKE) PFolder=basic_git_talk PFILE=bgt.tex pdf

agt:
	$(MAKE) PFolder=advanced_git_talk PFILE=agt.tex pdf

help:
	@echo "Para compilar todas as apresentacoes utilize apenas"
	@echo "    \$$ make"
	@echo "Para obter apenas uma das apresentacoes, passe"
	@echo "como parametro um dos seguintes argumentos:"
	@echo "- bpcs: para best_practices_for_scientific"
	@echo "- bgt: para basic_git_talk"
	@echo "- agt: para advanced_git_talk"
