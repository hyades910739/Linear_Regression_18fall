data;
input weight height age lastname gender eyesight;
cards;
42 160 20 1 1 1
48 160 20 1 2 0
52 165 30 2 1 0
58 165 30 2 2 1
65 170 30 2 1 1
65 170 30 2 2 0
72 175 30 3 1 1 
78 175 30 3 2 0
82 180 40 3 1 0
88 180 40 3 2 1
;

proc univariate plot;
	var weight;
proc means n mean;
	class height;
	var weight;
proc means n mean;
	class lastname;
	var weight;
proc means n mean;
	class age;
	var weight;
proc means n mean;
	class gender;
	var weight;

proc means n mean;
	class gender;
	var weight;

run;

