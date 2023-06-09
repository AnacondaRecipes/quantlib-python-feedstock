set BOOST_ROOT=%LIBRARY_PREFIX%

cd Python
python setup.py wrap
python setup.py build
python setup.py test
python setup.py install

