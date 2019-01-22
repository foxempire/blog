@echo off
cd /d "%~dp0"
title ͨ�� Git ͬ��.. 

cd .git
del /Q *.lock
cd ..

::Start...
echo Start synchronizing...
echo Commit changes...
git remote set-url origin https://foxempire:qltv123@github.com/foxempire/blog.git
git config --global user.email "guge@foxmail.com"

:: get date and time 
for /f "delims=" %%a in ('date/t') do @set mydate=%%a 
for /f "delims=" %%a in ('time/t') do @set mytime=%%a 
set fvar=%mydate%%mytime% 

:: add all new files 
call git add . 
call git commit -a -m "Automated commit on %fvar%"

:: push to the server. Default in "origin" remote, "master" branch
call git push -u origin master
