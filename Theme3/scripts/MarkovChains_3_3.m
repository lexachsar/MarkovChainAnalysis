clc
clear all

% 3. Вычислить условные м.о. и дисперсию числа заходов в невоз -
% вратное состояние s от момента начала эволюции цепи до поглощения в
% множестве Y при данном начальном распределении вероятностей состоя -
% ний p (0), s = k + 1, ..., cS.

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
M = (Q - R)^(-1)

% Данное начальное распределение вероятностей состряний p(0)
p0 = [0.25, 0.33,0.25, 0.17];

Mdg=eye(k);
for n=1:k
        Mdg(n,n)=M(n,n);
end


Eporo = p0 * M;
Dporo=p0 * M * (2 * Mdg - Q)-(p0 * M).^2;
