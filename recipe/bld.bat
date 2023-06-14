echo "Building %PKG_NAME%."

set QL_DIR=%LIBRARY_LIB%
REM We do not have versioned libs for boost. mt is not needed since all boost libs are now mt safe. libboost_serialization.lib should be fine.
REM The only inconvenience is that libboost_serialization-vc141-mt-x64-1_73.lib will be archived into the quantlib-python package. 
copy "%LIBRARY_LIB%\libboost_serialization.lib" "%LIBRARY_LIB%\libboost_serialization-vc141-mt-x64-1_73.lib"
if %ERRORLEVEL% GEQ 1 exit 1

cd Python
%PYTHON% setup.py wrap
if %ERRORLEVEL% GEQ 1 exit 1
%PYTHON% setup.py build
if %ERRORLEVEL% GEQ 1 exit 1
%PYTHON% setup.py test
if %ERRORLEVEL% GEQ 1 exit 1
%PYTHON% setup.py install
if %ERRORLEVEL% GEQ 1 exit 1

