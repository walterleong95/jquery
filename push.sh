#!/bin/sh

setup_git(){
	git config --global user.email "leonghoiweng@hotmail.com"
	git config --global user.name "walterleong95"
}

commit_report_files(){
	git pull https://github.com/walterleong95/jquery.git scc_project
	git add .
	git commit -m "Upload Code Coverage Report"

}

upload_files(){
	git remote add origin-test_cov https://walterleong95:$GITHUB_API_KEY@github.com/walterleong95/jquery.git
	git push --set-upstream origin-test_cov test_cov
	git checkout scc_project
	git merge test_cov
}

	  setup_git
	  commit_report_files
	  upload_files
