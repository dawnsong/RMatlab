
if !(${?MATLABPATH}) then
   setenv MATLABPATH /home/dawnsong/R/x86_64-pc-linux-gnu-library/3.0/RMatlab/mex
else
   setenv MATLABPATH /home/dawnsong/R/x86_64-pc-linux-gnu-library/3.0/RMatlab/mex:$MATLABPATH
endif


setenv R_HOME /usr/lib/R

if ("/usr/lib/R/lib" != "") then
 if !(${?LD_LIBRARY_PATH}) then
     setenv LD_LIBRARY_PATH /usr/lib/R/lib
 else
      setenv LD_LIBRARY_PATH ${LD_LIBRARY_PATH}:/usr/lib/R/lib
 endif
endif

if !(${?LD_LIBRARY_PATH}) then
     setenv LD_LIBRARY_PATH @MATLAB_LIB_DIR@
else
      setenv LD_LIBRARY_PATH ${LD_LIBRARY_PATH}:@MATLAB_LIB_DIR@
endif

