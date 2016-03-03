@if "%VS140COMNTOOLS%"=="" goto error_no_VS140COMNTOOLSDIR
@call "%VS140COMNTOOLS%vsvars32.bat"
@if exist "Makefile" @call "nmake" -f Makefile
@goto end

:error_no_VS140COMNTOOLSDIR
@echo ERROR: Cannot determine the location of the Visual Studio Common Tools folder.
@goto end

:end