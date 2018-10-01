/*資料匯入*/
DATA iris;
    INFILE "C:/Users/106354002/Desktop/Linear_Regression_18fall-master/iris.txt" DLM=",";
	INPUT sl sw pl pw class$;
    RUN;
/*單變量流程*/
PROC UNIVARIATE DATA=iris PLOT;
    var sl;
    RUN;

/*共變異*/
PROC CORR PEARSON  DATA= iris PLOTS=matrix(histogram);
	VAR sl sw pl pw;
    RUN;

