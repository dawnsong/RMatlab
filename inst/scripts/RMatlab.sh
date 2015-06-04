if test -z "$MATLABPATH" ; then
   MATLABPATH=/home/dawnsong/R/x86_64-pc-linux-gnu-library/3.0/RMatlab/mex
else
   MATLABPATH=/home/dawnsong/R/x86_64-pc-linux-gnu-library/3.0/RMatlab/mex:$MATLAB_PATH
fi

export MATLABPATH


R_HOME=/usr/lib/R
export R_HOME

if test -n "/usr/lib/R/lib" ; then
 if test -z "$LD_LIBRARY_PATH" ; then
     LD_LIBRARY_PATH=/usr/lib/R/lib
 else
     LD_LIBRARY_PATH=${LD_LIBRARY_PATH}:/usr/lib/R/lib
 fi
fi


if test -z "${LD_LIBRARY_PATH}" ;  then
     export LD_LIBRARY_PATH=@MATLAB_LIB_DIR@
else
     export LD_LIBRARY_PATH=${LD_LIBRARY_PATH}:@MATLAB_LIB_DIR@
fi
