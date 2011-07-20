echo off

set RESULT=0

pushd AcceptanceTest
    del TestResult.xml AcceptanceTests.html
    runat.bat release 5001 > TestResult.xml
    if ERRORLEVEL 1 set RESULT=1
    xsltproc.exe -o AcceptanceTests.html at.xsl TestResult.xml
popd

exit /B %RESULT%
