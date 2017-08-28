#!/bin/sh

setup_git(){
	git config --global user.email "leonghoiweng@hotmail.com"
	git config --global user.name "walterleong95"
}

commit_report_files(){
	git checkout -b scc_project
	git add .
	git commit -m "$TRAVIS_BUILD_NUMBER [skip ci]"
}

upload_files(){
	echo GH_TOKEN=c48bcc6374c50c68df89f84045b4319b70630001

	git remote add origin-scc_project https://walterleong95:$GITHUB_API_KEY@github.com/walterleong95/jquery.git
	git push --set-upstream origin-scc_project scc_project
}

	  setup_git
	  commit_report_files
	  upload_files
