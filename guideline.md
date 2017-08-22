# Guidelines for build and testing the project:

-----

1. Download ***git*** from the following links:
   * For **Windows**:   https://github.com/git-for-windows/git/releases/download/v2.14.1.windows.1/Git-2.14.1-64-bit.exe
   * For **Mac**: terminal - enter the command "***brew install git***"

2. Download or/and install ***npm***
   * For **Windows**: https://nodejs.org/dist/v6.11.2/node-v6.11.2-x86.msi
   * For **Mac**: terminal - enter the command "***brew install npm***"

3. Install **grunt**
   - launch **git bash / terminal**
   - enter the command "npm install -g grunt-cli"

4. Full build of **jquery**
   - enter the command "***grunt***"

5. Pull project folder & checkout to SCC project specific branch
  - enter the command "***git pull https://github.com/walterleong95/jquery***"
  - enter the command "***git checkout scc_project***"

6. Testing
   - install necessary dependencies by entering the command
     "***npm install***"
   - 3 alternative ways of initiating the test:
	     1. "***npm run test***"
	     2. "***grunt watch***"
	     3. "***npm start***"

7. Docker setup
   - Make sure that docker has been installed in your machine.
   - Enter the command "***docker pull kokkuan01/jquery***
"
-----------------------------------------------
Any queries please contact via email / whatsapp:
**Walter Leong - walterleong.95@1utar.my / 018-2878594**
-----------------------------------------------
# Happy Building! :)
