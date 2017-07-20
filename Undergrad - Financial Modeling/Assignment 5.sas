libname exercise "C:\Users\Ali\Desktop\COOKEM CORNS\Ali Prasla and the Chamber of Secrets (Second Year)\Spring 2016\STA\HW";
proc univariate data = exercise.HelloSAS;
	var Price mpg;
	by foreign;
	histogram;
run;

proc means data = exercise.HelloSas;
	var Price;
	by make;
run;
proc sort data = exercise.Hellosas;
	by foreign;
run;
proc sort data = exercise.Tax;
	by foreign;
run;
data merged;
	merge exercise.Hellosas exercise.Tax;
	by foreign;
	after_tax_price = Price + Tax;
run;

proc reg data = merged;
	model price = mpg foreign / selection = backward slstay = .1;
run;

data HelloSas;
	set exercise.HelloSas;
	if mpg = 25 then mpg_equals_25 = 1; else mpg_equals_25 = 0;
run;
