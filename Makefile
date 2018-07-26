process.zip: docs/process.pdf
	zip -r bitcoin-sales.zip docs

docs/process.pdf:
	pdflatex --output-directory docs process.tex
	rm -f docs/*.log docs/*.aux

clean:
	rm -f bitcoin-sales.zip
	rm -f docs/*.log docs/*.aux
