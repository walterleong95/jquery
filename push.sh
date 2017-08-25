#!/bin/sh

setup_git(){
	git config --global user.email "leonghoiweng@hotmail.com"
	git config --global user.name "walterleong95"
}

generate_code_cov(){
	istanbul cover dist/jquery.js
}
commit_report_files(){
	git checkout -b scc_project
	git add .
	git commit -m "Upload Code Coverage Report"
}

upload_files(){
	git remote add origin-scc_project https://github.com/walterleong95/jquery.git
	  git push --quiet --set-upstream origin-scc_project scc_project
	 }

	  setup_git
	  generate_code_cov
	  commit_report_files
	  upload_files
