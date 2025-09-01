libname hrdata '/home/u64207873/Proiect';

proc import datafile='/home/u64207873/Proiect/Employee.csv'
    out=hrdata.employees
    dbms=csv
    replace;
    getnames=yes;
run;

proc contents data=hrdata.employees;
 run;
 proc sql;
  create table work.leave_summary as
  select
    City,
    sum(LeaveOrNot) as TotalLeave label="Total angajați cu concediu"
  from hrdata.employees
  group by City
  order by City;
quit;

proc print data=work.leave_summary noobs label;
  title "Număr total angajați care au luat concediu, pe orașe";
run;

proc freq data = hrdata.employees;
  tables Education*Gender
    / chisq expected norow nocol;
  title "Tabel de contingență: Distribuția pe gen în funcție de educație";
run;


proc means data=hrdata.employees n mean std median min max maxdec=2;
  class Gender;
  var PaymentTier;
  title "Statistici PaymentTier pe Gender";
run;


proc format;
  value tierfmt
    1 = "Low"
    2 = "Medium"
    3 = "High"
  ;
run;

proc sgplot data=hrdata.employees;
  format PaymentTier tierfmt.;
  /* VBAR cu grupare după Gender */
  vbar PaymentTier / 
    group=Gender
    datalabel
    groupdisplay=cluster
    barwidth=0.6;
  xaxis label="Nivel salarial (PaymentTier)";
  yaxis label="Număr angajați";
  keylegend / title="Gen";
  title "Distribuția nivelului salarial pe sexe";
run;


data hrdata.employees_with_tenure;
  set hrdata.employees;
  YearsAtCompany = year(today()) - JoiningYear;
run;



