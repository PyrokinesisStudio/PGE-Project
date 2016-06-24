@echo off

rem V, T - are network drives

SET SOURCEDIR=%CD%\..\..

SET SEVENZIP=C:\Program Files\7-Zip
IF NOT EXIST "%SEVENZIP%\7z.exe" SET SEVENZIP=C:\Program Files (x86)\7-Zip
IF NOT EXIST "%SEVENZIP%\7z.exe" SET SEVENZIP=%ProgramFiles%\7-Zip

SET GHREPO=D:\Developer\__GitHubRepos\PGE-Project

SET PubDir=V:\engine.wohlnet.ru\docs\docs\_sources\devel
SET LabDir=V:\engine.wohlnet.ru\docs\docs\_laboratory

SET TESTDIR=D:\PGE_TEST

SET LINUXSERV1=T:\root\QTTest\PGE-Project
SET LINUXSERV2=\\172.16.0.12\root$\root\QTTest\PGE-Project

SET QTPATH=C:\Qt\5.7\mingw53_32

SET G_DRIVE=T:\home\Grive\PGE Project
