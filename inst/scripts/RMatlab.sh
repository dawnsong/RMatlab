if test -z "$MATLABPATH" ; then
   MATLABPATH=/projects/b1015/xiaowei/bak/R/libs/RMatlab/mex
else
   MATLABPATH=/projects/b1015/xiaowei/bak/R/libs/RMatlab/mex:$MATLAB_PATH
fi

export MATLABPATH


R_HOME=/home/xst833/R/lib64/R
export R_HOME

if test -n "/home/xst833/R/lib64/R/lib/" ; then
 if test -z "$LD_LIBRARY_PATH" ; then
     LD_LIBRARY_PATH=/home/xst833/R/lib64/R/lib/
 else
     LD_LIBRARY_PATH=${LD_LIBRARY_PATH}:/home/xst833/R/lib64/R/lib/
 fi
fi


if test -z "${LD_LIBRARY_PATH}" ;  then
     export LD_LIBRARY_PATH=@MATLAB_LIB_DIR@
else
     export LD_LIBRARY_PATH=${LD_LIBRARY_PATH}:@MATLAB_LIB_DIR@
fi
