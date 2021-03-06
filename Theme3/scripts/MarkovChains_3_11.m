clc
clear all

% 11. Вычислить условное м.о. числа различных невозвратных со-
% стояний, в которые когда-либо попадет цепь при начале эволюции из со-
% стояния r, r = k + 1 , ..., cS.

% Мощность множества состояний.
cS = 8;

% Количество поглощающих состояний цепи (первые k).
k = 4;

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

Mdg=eye(k);
for n=1:k
	Mdg(n,n)=M(n,n);
end

G = (M - Q) * Mdg^(-1);


Gdg=eye(4);
for n=1:4
	Gdg(n,n)=G(n,n);
end

Erl=(G + (Q - Gdg)) * [1; 1; 1; 1;]
