PFolder=''
PFile=''

all: bpcs bgt agt bbb epub_itf epub_20th

pdf:
	cd $(PFolder); latexmk -pdf $(PFile); mv $(subst .tex,.pdf,$(PFile)) ../$(PFolder).pdf

bpcs:
	$(MAKE) PFolder=best_practices_for_scientific_computing PFile=bpsc.tex pdf

bgt:
	$(MAKE) PFolder=basic_git_talk PFile=bgt.tex pdf

agt:
	$(MAKE) PFolder=advanced_git_talk PFile=agt.tex pdf

bbb:
	$(MAKE) PFolder=basic_branch_and_bounds PFile=bbb.tex pdf

epub_itf:
	$(MAKE) PFolder=epub_is_the_future PFile=epub_itf.tex pdf

epub_20th:
	$(MAKE) PFolder=epub_book_in_20th_century PFile=epub_20th.tex pdf

clean:
	-rm */*.acn
	-rm */*.acr
	-rm */*.alg
	-rm */*.aux
	-rm */*.bbl
	-rm */*.blg
	-rm */*.dvi
	-rm */*.fdb_latexmk
	-rm */*.fls
	-rm */*.glg
	-rm */*.glo
	-rm */*.gls
	-rm */*.idx
	-rm */*.ilg
	-rm */*.ind
	-rm */*.ist
	-rm */*.lof
	-rm */*.log
	-rm */*.lot
	-rm */*.maf
	-rm */*.mtc
	-rm */*.mtc0
	-rm */*.nav
	-rm */*.nlo
	-rm */*.out
	-rm */*.pdfsync
	-rm */*.pdf
	-rm */*.ps
	-rm */*.snm
	-rm */*.synctex.gz
	-rm */*.toc
	-rm */*.vrb
	-rm */*.xdy
	-rm */*.xmpi
	-rm */*.tdo

help:
	@echo "Para compilar todas as apresentacoes utilize apenas"
	@echo ""
	@echo "    \$$ make"
	@echo ""
	@echo "Para obter apenas uma das apresentacoes, passe"
	@echo "como parametro um dos seguintes argumentos:"
	@echo ""
	@echo "* bpcs: para best_practices_for_scientific"
	@echo "* bgt: para basic_git_talk"
	@echo "* agt: para advanced_git_talk"
	@echo "* bbb: para basic_branc_and_bounds"
	@echo "* epub_itf: para epub_is_the_future"
	@echo "* epub_20th: para epub_book_in_20th_century"
	@echo ""
	@echo "Para remover os arquivos criados durante a compilação"
	@echo "utilize"
	@echo ""
	@echo "    \$$ make clean"
