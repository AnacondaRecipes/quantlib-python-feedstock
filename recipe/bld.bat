echo "Building %PKG_NAME%."

set QL_DIR=%LIBRARY_LIB%

cd Python
%PYTHON% setup.py build
if %ERRORLEVEL% GEQ 1 exit 1
%PYTHON% setup.py install
if %ERRORLEVEL% GEQ 1 exit 1

