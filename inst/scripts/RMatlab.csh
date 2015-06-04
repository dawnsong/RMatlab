
if !(${?MATLABPATH}) then
   setenv MATLABPATH /projects/b1015/xiaowei/bak/R/libs/RMatlab/mex
else
   setenv MATLABPATH /projects/b1015/xiaowei/bak/R/libs/RMatlab/mex:$MATLABPATH
endif


setenv R_HOME /home/xst833/R/lib64/R

if ("/home/xst833/R/lib64/R/lib/" != "") then
 if !(${?LD_LIBRARY_PATH}) then
     setenv LD_LIBRARY_PATH /home/xst833/R/lib64/R/lib/
 else
      setenv LD_LIBRARY_PATH ${LD_LIBRARY_PATH}:/home/xst833/R/lib64/R/lib/
 endif
endif

if !(${?LD_LIBRARY_PATH}) then
     setenv LD_LIBRARY_PATH @MATLAB_LIB_DIR@
else
      setenv LD_LIBRARY_PATH ${LD_LIBRARY_PATH}:@MATLAB_LIB_DIR@
endif

