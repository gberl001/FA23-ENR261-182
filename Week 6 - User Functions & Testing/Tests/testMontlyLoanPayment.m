function tests = testMontlyLoanPayment
clc;
tests = functiontests(localfunctions);
end

function testValidSolutionArray(testCase)
principals = [10000, 5500.25, 22999.99];
rates = [0.03, 0.05, 0.01];
pmtCounts = [5*12, 5*12, 5*12];

expectedPmts = [179.686, 103.796, 393.156];
actualPmts = getMonthlyLoanPayment(principals, rates, pmtCounts);

% Verify equal using tolerance
verifyEqual(testCase, actualPmts, expectedPmts, 'AbsTol', 0.001);
end

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

function testZeroPrincipal(testCase)
principal = 0;        % $0
rate = 0.03;          % 3% interest rate
numPmts = 5*12;       % 5 year loan (times 12 months)

% Get expected and actual
expectedPmt = 0;
actualPmt = getMonthlyLoanPayment(principal, rate, numPmts);

verifyEqual(testCase, actualPmt, expectedPmt);
end

function testNegativePrincipal(testCase)
principal = -10000;
rate = 0.03;
numPmts = 5*12;

% Get expected and actual
expectedPmt = 0;
actualPmt = getMonthlyLoanPayment(principal, rate, numPmts);

verifyEqual(testCase, actualPmt, expectedPmt);
end

function testNegativeRate(testCase)
principal = 10000;
rate = -0.03;
numPmts = 5*12;

% Get expected and actual
expectedPmt = [];
actualPmt = getMonthlyLoanPayment(principal, rate, numPmts);

verifyEqual(testCase, actualPmt, expectedPmt);
end

function testEmptyPrincipal(testCase)
expectedPmt = [];
actualPmt = getMonthlyLoanPayment([], 0.04, 10);

verifyEqual(testCase, actualPmt, expectedPmt);

end

function testEmptyRate(testCase)
expectedPmt = [];
actualPmt = getMonthlyLoanPayment(10000, [], 10);

verifyEqual(testCase, actualPmt, expectedPmt);

end

function testEmptyNumPayments(testCase)
expectedPmt = [];
actualPmt = getMonthlyLoanPayment(1000, 0.04, []);

verifyEqual(testCase, actualPmt, expectedPmt);

end

function testPrincipalString(testCase)
expectedPmt=[];
actualPmt=getMonthlyLoanPayment("test", 0.04, 10);

verifyEqual(testCase, actualPmt, expectedPmt);
end

function testRateString(testCase)
expectedPmt=[];
actualPmt=getMonthlyLoanPayment(10000, "rate", 10);

verifyEqual(testCase, actualPmt, expectedPmt);
end

function testNumPaymentsString(testCase)
expectedPmt=[];
actualPmt=getMonthlyLoanPayment(10000, 0.04, "ten");

verifyEqual(testCase, actualPmt, expectedPmt);
end