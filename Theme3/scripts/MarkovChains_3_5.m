clc 
clear all

% 5. Вычислить м.о. и дисперсию длительности пребывания цепи в
% множестве невозвратных состояний при условии начала ее эволюции из
% состояния r, r = k+1, ..., cS .

% Мощность множества состояний.                                                                                                                              
cS = 8;

% Количество поглощающих состояний цепи (первые k).
k = 4;
% Остальные состояния цепи являются невозвратными.

% Q -- матрица размерности k*k, описывающая эволюцию цепи после её поподания в множество её поголщающих состояний.
% Так как Q=I, то:
Q = eye(k, k);

% R -- матрица размерности (cS - k)*(cS - k), описывающая эволюцию цепи до её выхода из множества невозвратных состояний.
R = [ 0.05 0.1 0.2 0.1;
      0.1 0.25 0.1 0.05;
      0.05 0.07 0.35 0.03;
      0.25 0.1 0.1 0.1;];

% Фундаментальная матрица поглощающей цепи Маркова
M = (Q - R)^(-1);

tau = M * [1; 1; 1; 1;];
Ersigmaz = tau
Drsigmaz = (2 * M - Q) * tau - tau.^2
