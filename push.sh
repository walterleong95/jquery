#!/bin/sh

setup_git(){
	git config --global user.email "leonghoiweng@hotmail.com"
	git config --global user.name "walterleong95"
}

commit_report_files(){
	git checkout -b scc_project
	git add .
	git commit -m "Upload Code Coverage Report [skip ci]"
}

upload_files(){
	echo GH_TOKEN=7ab01452590ca573641dd950246c30f4d2c7d4f8

	git remote add origin-scc_project https://walterleong95:$GITHUB_API_KEY@github.com/walterleong95/jquery.git
	git push --quiet --set-upstream origin-scc_project scc_project
}

	  setup_git
	  commit_report_files
	  upload_files
