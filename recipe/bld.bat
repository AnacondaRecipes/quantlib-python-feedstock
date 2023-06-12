set BOOST_ROOT=%LIBRARY_PREFIX%
set QL_DIR=%LIBRARY_PREFIX%

echo "BOOST_VER: %BOOST_VER%"
echo "VC_VER: %VC_VER%"
copy "%LIBRARY_PREFIX%\libboost_serialization.lib" "%LIBRARY_PREFIX%\libboost_serialization-vc141-mt-x64-1_73.lib"
if %ERRORLEVEL% GEQ 1 exit 1

cd Python
python setup.py wrap
python setup.py build
python setup.py test
python setup.py install

