#!/usr/bin/python
# math_problems.py
"""contains all the math problems"""
__author__ = "Sion"
__version__ = "1.0"


# basic math skills problems:
basic_math_problems = [
    "x + 20 = 225, solve for x", "(4x)\u00b2 = 64, solve for x", "200 / 2X = 50, solve for x", "5x - 30 = 195, solve for x", "x * 8 = 112, solve for x", "x\u00b3 =64, solve for x"]

basic_math_answers = ["205", "2", "1/2", "45", "14", "4"]


# polynonimals:
polynomial_questions = [
    "Given(x\u00b2) + 2x + 1 = 0, solve for x", "Given(9x\u00b2) - 37x + 38 = 0, solve for x if x <= 2", "Given(2x\u00b2) + 5x + 4 = 0, solve for x(if not factorable enter 'quadratic_formula')", "Given x\u00b2 + 4x -21 = 0, sovlve for x if x>0", "Given x\u00b2 + 5x - 750 = 0, solve for x if x<0", "Given x\u00b2 -x-12=0, solve for x if x>0"]
polynomial_answers = ["1", "2", "quadratic_formula", "3", "-30", "4"]


# functions:
function_questions = ["Let f(x) = 2 - 3x + x\u00b2, find f(-2)",
                      "Let f(x) = 4x\u00b2 - 2x + 5, find f(-3). If needed, answer in form of a/b", "Let g(x) = (x + 4) / (2x - 1), find g(3). If needed, answer in form of a/b", "Let f(x) = (7-3x)/(4x-9), find f(4). If needed, answer in form of a/b", "Let g(x) = (x\u00b2 -2x + 1)/(x - 1), find g(-5). If needed, answer in form of a/b", "f(x)=x\u00b2 + 2x+5, find g(5)"]
function_answers = ["12", "47", "7/5", "-5/7", "-6", "140"]


# trig special angles:
trig_problems = [
    "solve for sin(pi / 4) in the first quadrant, may need to spell answer out", "solve for cos(pi), may need to spell answer out", "solve tan(pi / 2), may need to spell answer out", "solve for csc(pi / 4) in the first quadrant, may need to spell answer out",  " solve for sec(pi / 3) in the first quadrant, may need to spell answer out", "solve cot(pi/6)"]
trig_answers = ["square root of 2 over 2",
                "-1", "undefined", "square root of 2", "2", "square root of 3"]


# logs:
log_problems = [
    "e^(-x-2) = e ^ (-3x - 4), solve for x", "e ^ x = 5, solve for x", "logx + log5 = 2, solve for x", "log base 5 of x = 2, solve for x", "log base x of 8 = 3, solve for x if x is an integer", "log base 6 of 2x+6 = 2, solve for x"]
log_answers = ["-1", "ln5", "20", "25", "2", "1/2592"]


# limits:
limit_problems = [
    "solve lim x->1, (x\u00b2 - 2x + 1) / (x-1)", "solve lim x ->3, (3x\u00b2 + x - 6)/(2x-5)", "solve lim x->3, (x\u00b2 - 9)/(x-3)", "solve lim x->1, (x\u00b2 -1)/(x-1)", "solve lim x->2\u207A, (x\u00b2 -x-2)/(x+1)", "lim x->4, (x+4)/(x-2)"]
limit_answers = ["0", "24", "6", "2", "0", "4"]
