
::如果需要清除SVN信息，请修改文件名为.bat，执行即可。
::  -written by jiftle  9:32 2011年11月4日星期五
@echo on

@rem 删除SVN版本控制目录

@rem for /r . %%a in (.) do @if exist "%%a\.svn" @echo "%%a\.svn"
@for /r . %%a in (.) do @if exist "%%a\.svn" rd /s /q "%%a\.svn"

@echo completed
