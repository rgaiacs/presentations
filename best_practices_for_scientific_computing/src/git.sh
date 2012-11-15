git:
	@rm -rf .git
	@rm meu_projeto.txt
	git init -q
	echo 'Versao 0.1' >> meu_projeto.txt
	git add meu_projeto.txt
	git commit -q -m 'Iniciei'
	echo 'Versao 0.2' >> meu_projeto.txt
	git add -u
	git commit -q -m 'Mudei'
	cat meu_projeto.txt
	git checkout HEAD^ -q
	cat meu_projeto.txt
	git checkout master -q
	cat meu_projeto.txt
