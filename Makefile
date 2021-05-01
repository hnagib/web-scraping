SHELL=/bin/bash

install-env:
	conda create -n webscrp python=3.7
	source activate webscrp && pip install -r requirements.txt
	conda install ipykernel
	python -m ipykernel install --user --name webscrp --display-name "webscrp"

uninstall-env:
	conda remove --name webscrp --all
