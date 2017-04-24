@echo off
echo Deleting *.pdf and *.html
del *.pdf && del *.html 
del *.css
del /s /f /q fonts
rmdir fonts
del /s /f /q css

rmdir css
del /s /f /q styles
rmdir styles

del /s /f /q content
rmdir content