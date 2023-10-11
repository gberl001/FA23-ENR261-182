function tests = testMonthlyLoanPayment
clc;
tests = functiontests(localfunctions);
end

% Test a few various valid cases
function testValidSolutionArray(testCase)
principals = [10000, 5500.25, 22999.99];
rates = [0.03, 0.05, 0.01];
pmtCounts = [5*12, 5*12, 5*12];

expectedPmts = [179.686, 103.796, 393.156];
actualPmts = getMonthlyLoanPayment(principals, rates, pmtCounts);

% Verify equal using tolerance
verifyEqual(testCase, actualPmts, expectedPmts, 'AbsTol', 0.001);
end

% Test a valid solution with a scalar principal
function testValidSolutionScalar(testCase)
principal = 40000;    % $40,000
rate = 0.03;          % 3% interest rate
numPmts = 5*12;       % 5 year loan (times 12 months)

% Get expected and actual
expectedPmt = 718.747;
actualPmt = getMonthlyLoanPayment(principal, rate, numPmts);

% Verify equal using tolerance
verifyEqual(testCase, actualPmt, expectedPmt, 'AbsTol', 0.001);

% Verify true, using the abs val of the difference.
verifyTrue(testCase, abs(actualPmt-expectedPmt) <= 0.001);

end

% Test a zero principal amount returns 0 as payment
function testZeroPrincipal(testCase)
principal = 0;        % $0
rate = 0.03;          % 3% interest rate
numPmts = 5*12;       % 5 year loan (times 12 months)

% Get expected and actual
expectedPmt = 0;
actualPmt = getMonthlyLoanPayment(principal, rate, numPmts);

verifyEqual(testCase, actualPmt, expectedPmt);
end

% Test that negative principal returns blank indicating an error
function testNegativePrincipal(testCase)
principal = -10000;
rate = 0.03;
numPmts = 5*12;

% Get expected and actual
expectedPmt = [];
actualPmt = getMonthlyLoanPayment(principal, rate, numPmts);

verifyEqual(testCase, actualPmt, expectedPmt);
end

% Test that a negative rate returns blank indicating an error
function testNegativeRate(testCase)
principal = 10000;
rate = -0.03;
numPmts = 5*12;

% Get expected and actual
expectedPmt = [];
actualPmt = getMonthlyLoanPayment(principal, rate, numPmts);

verifyEqual(testCase, actualPmt, expectedPmt);
end

% Test an empty principal value returns blank indicating an error
function testEmptyPrincipal(testCase)
expectedPmt = [];
actualPmt = getMonthlyLoanPayment([], 0.04, 10);

verifyEqual(testCase, actualPmt, expectedPmt);

end

% Test an empty rate value returns a blank indicating an error
function testEmptyRate(testCase)
expectedPmt = [];
actualPmt = getMonthlyLoanPayment(10000, [], 10);

verifyEqual(testCase, actualPmt, expectedPmt);

end

% Test an empty number of payments value returns blank indicating an error
function testEmptyNumPayments(testCase)
expectedPmt = [];
actualPmt = getMonthlyLoanPayment(1000, 0.04, []);

verifyEqual(testCase, actualPmt, expectedPmt);

end

% Test a string value for principal returns blank indicating an error
function testPrincipalString(testCase)
expectedPmt=[];
actualPmt=getMonthlyLoanPayment("test", 0.04, 10);

verifyEqual(testCase, actualPmt, expectedPmt);
end

% Test a string value for rate returns blank indicating an error
function testRateString(testCase)
expectedPmt=[];
actualPmt=getMonthlyLoanPayment(10000, "rate", 10);

verifyEqual(testCase, actualPmt, expectedPmt);
end

% Test a string number of payments value returns blank indicating an error
function testNumPaymentsString(testCase)
expectedPmt=[];
actualPmt=getMonthlyLoanPayment(10000, 0.04, "ten");

verifyEqual(testCase, actualPmt, expectedPmt);
end