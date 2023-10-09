path = "/Users/geoffberl/git/MCC/ENR261_Instructor/Week 6 - User Functions & Testing/solutions"
filename = join([path, "getMonthlyLoanPayment.m"], '/');

% Move function from student directory to here
copyfile(filename, ".")

% Run test file
testMontlyLoanPayment

%delete("getMonthlyLoanPayment.m")