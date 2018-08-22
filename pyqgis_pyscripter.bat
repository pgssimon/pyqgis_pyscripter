@echo on
SET OSGEO4W_ROOT=C:\Program Files\QGIS 3.2
@echo off
call "%OSGEO4W_ROOT%\bin\o4w_env.bat"
call qt5_env.bat
call py3_env.bat
@echo off
path %OSGEO4W_ROOT%\apps\qgis\bin;%PATH%
set QGIS_PREFIX_PATH=%OSGEO4W_ROOT:\=/%/apps/qgis
set GDAL_FILENAME_IS_UTF8=YES
rem Set VSI cache to be used as buffer, see #6448
set VSI_CACHE=TRUE
set VSI_CACHE_SIZE=1000000
set QT_PLUGIN_PATH=%OSGEO4W_ROOT%\apps\qgis\qtplugins;%OSGEO4W_ROOT%\apps\qt5\plugins
set PYTHONPATH=%OSGEO4W_ROOT%\apps\qgis\python;%PYTHONPATH%
rem "%PYTHONHOME%\python" %*

set PATH=C:\Program Files\Git\bin;%PATH%

rem NOTE needed to copy C:\Program Files\QGIS 3.2\bin\python36.dll to C:\Program Files\QGIS 3.2\apps\Python36\python36.dll
"C:\Program Files\PyScripter\PyScripter.exe" --python36 --pythondllpath="%PYTHONHOME%"
