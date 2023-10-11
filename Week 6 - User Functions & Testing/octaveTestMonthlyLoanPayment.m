function tests = octaveTestMonthlyLoanPayment()
tests = strings(11, 1);
clc;
clear;

% Test 1
tests(1, 1) = runTest(@testValidSolutionArray);

% Test 2
tests(2, 1) = runTest(@testValidSolutionScalar);

% Test 3
tests(3, 1) = runTest(@testZeroPrincipal);

% Test 4
tests(4, 1) = runTest(@testNegativePrincipal);

% Test 5
tests(5, 1) = runTest(@testNegativeRate);

% Test 6
tests(6, 1) = runTest(@testEmptyPrincipal);

% Test 7
tests(7, 1) = runTest(@testEmptyRate);

% Test 8
tests(8, 1) = runTest(@testEmptyNumPayments);

% Test 9
tests(9, 1) = runTest(@testPrincipalString);

% Test 10
tests(10, 1) = runTest(@testRateString);

% Test 11
tests(11, 1) = runTest(@testNumPaymentsString);

end

function result = runTest(func)
% Get the function metadata
metaData = functions(func);

% Run the test
result = "FAILED";
if func()
    result = "PASSED";
end

% Record the result
result = metaData.function + " " + result;

end

% Test a few various valid cases
function result = testValidSolutionArray()
principals = [10000, 5500.25, 22999.99];
rates = [0.03, 0.05, 0.01];
pmtCounts = [5*12, 5*12, 5*12];

expectedPmts = [179.686, 103.796, 393.156];
actualPmts = getMonthlyLoanPayment(principals, rates, pmtCounts);

% Verify equal using tolerance
result = all(expectedPmts - actualPmts < 0.001);
end

% Test a valid solution with a scalar principal
function result = testValidSolutionScalar()
principal = 40000;    % $40,000
rate = 0.03;          % 3% interest rate
numPmts = 5*12;       % 5 year loan (times 12 months)

% Get expected and actual
expectedPmt = 718.747;
actualPmt = getMonthlyLoanPayment(principal, rate, numPmts);

result = all(expectedPmt - actualPmt < 0.001);
end

% Test a zero principal amount returns 0 as payment
function result = testZeroPrincipal()
principal = 0;        % $0
rate = 0.03;          % 3% interest rate
numPmts = 5*12;       % 5 year loan (times 12 months)

% Get expected and actual
expectedPmt = 0;
actualPmt = getMonthlyLoanPayment(principal, rate, numPmts);

result = actualPmt == expectedPmt;
end

% Test that negative principal returns blank indicating an error
function result = testNegativePrincipal()
principal = -10000;
rate = 0.03;
numPmts = 5*12;

% Get expected and actual
expectedPmt = [];
actualPmt = getMonthlyLoanPayment(principal, rate, numPmts);

result = actualPmt == expectedPmt;
end

% Test that a negative rate returns blank indicating an error
function result = testNegativeRate()
principal = 10000;
rate = -0.03;
numPmts = 5*12;

% Get expected and actual
expectedPmt = [];
actualPmt = getMonthlyLoanPayment(principal, rate, numPmts);

result = isempty([actualPmt, expectedPmt]);
end

% Test an empty principal value returns blank indicating an error
function result = testEmptyPrincipal()
expectedPmt = [];
actualPmt = getMonthlyLoanPayment([], 0.04, 10);

result = isempty([actualPmt, expectedPmt]);
end

% Test an empty rate value returns a blank indicating an error
function result = testEmptyRate()
expectedPmt = [];
actualPmt = getMonthlyLoanPayment(10000, [], 10);

result = isempty([actualPmt, expectedPmt]);
end

% Test an empty number of payments value returns blank indicating an error
function result = testEmptyNumPayments()
expectedPmt = [];
actualPmt = getMonthlyLoanPayment(1000, 0.04, []);

result = isempty([actualPmt, expectedPmt]);
end

% Test a string value for principal returns blank indicating an error
function result = testPrincipalString()
expectedPmt=[];
actualPmt=getMonthlyLoanPayment("test", 0.04, 10);

result = isempty([actualPmt, expectedPmt]);
end

% Test a string value for rate returns blank indicating an error
function result = testRateString()
expectedPmt=[];
actualPmt=getMonthlyLoanPayment(10000, "rate", 10);

result = isempty([actualPmt, expectedPmt]);
end

% Test a string number of payments value returns blank indicating an error
function result = testNumPaymentsString()
expectedPmt=[];
actualPmt=getMonthlyLoanPayment(10000, 0.04, "ten");

result = isempty([actualPmt, expectedPmt]);
end