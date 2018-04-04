﻿% 1. Вычислить n-е степени матриц R и P при n =1,2,...,7.

% Мощность множества состояний.
cS = 8;

% Количество поглощающих состояний цепи (первые k).
k = 3;
% Остальные состояния цепи являются невозвратными.

% Q -- матрица размерности k*k, описывающая эволюцию цепи после её поподания в множество её поголщающих состояний.
% Так как Q=I, то:
Q = ones(k, k);

% O -- матрица размерности k*(cS - k), состоящая из нулей.
O = zeros(k, (cS - k));

% H -- матрица размерности (cS - k)*k, описывающая переходы цепи из состояний множества Z(невозвратных состояний) в состояния множества Y(поглощающих состояний)
H = 

% R -- матрица размерности (cS - k)*(cS - k), описывающая эволюцию цепи до её выхода из множества невозвратных состояний.
R = 


P = [0.156 0.135 0.05 0.346 0.119 0.045 0.078 0.071;
    0.094 0.271 0.156 0.023 0.096 0.175 0.065 0.12;
    0.225 0.075 0.25 0.05 0.05 0.1 0.15 0.1;
    0.076 0.097 0.065 0.234 0.312 0.156 0.023 0.037;
    0.12 0.2 0.352 0.123 0.065 0.063 0.032 0.045
    0.3 0.05 0.05 0.12 0.08 0.015 0.085 0.2;
    0.09 0.01 0.02 0.045 0.055 0.48 0.2 0.1;
    0.3 0.1 0.1 0.1 0.1 0.1 0.15 0.05;];
    
    
% Выводим n-ю степень матриц на каждом шаге от 1 до 7
for n=1:7
	n

	Rn = R^n

	Pn = P^n
end