libname Exercise "C:\Users\Ali\Desktop\COOKEM CORNS\Ali Prasla and the Chamber of Secrets (Second Year)\Spring 2016\STA\HW";
data Exercise.ABC;
   set Exercise.HelloSAS;
run;

data Hello;
	set Exercise.ABC;
run;

data Hello;
	set Hello;
	new1 = MPG * 10;
run;

data Hello;
	set Hello;
	new2 = lag(mpg);
run;
data Hello2;
	set Hello;
	if make = "Cadillac" then Delete;
run;
data Hello;
	set Hello;
	new3 = price*price;
	new4 = mpg/price;
run;

data Hello (drop = new1 new2);
	set Hello;
run;

data Hello (keep = make price mpg foreign);
	set Hello;
run;

data Hello;
	set Hello;
	if mpg < 10 then mpg_less_ten = 0;
	if mpg >= 10 then mpg_less_ten = 1;
run;

proc sort data = Hello;
	by Price;
run;

proc means data = Hello;
	var Price mpg;
run;

proc univariate data = Hello;
	var Price;
	histogram;
run;

proc gplot data = Hello;
	plot Price * mpg;
run;

proc reg data = Hello;
	model Price = mpg;
run;

