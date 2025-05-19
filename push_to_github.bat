@echo off
REM 自动提交并推送到 GitHub
REM 你可以修改下面的提交信息

set /p msg=请输入提交说明（按回车提交）:

git add .
git commit -m "%msg%"
git push

pause
