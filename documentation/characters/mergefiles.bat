@echo off
copy "*- %1 *.*" "%1.txt"
del "*- %1 *.*"
