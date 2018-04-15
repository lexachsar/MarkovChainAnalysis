clc
clear all

% 9. Вычислить условные вероятности переходов цепи.

% Мощность множества состояний.
cS = 8;

% Количество поглощающих состояний цепи (первые k).
k = 4;
% Остальные состояния цепи являются невозвратными.

% Q -- матрица размерности k*k, описывающая эволюцию цепи после её поподания в множество её поголщающих состояний.
% Так как Q=I, то:
Q = eye(k, k);

% O -- матрица размерности k*(cS - k), состоящая из нулей.
O = zeros(k, (cS - k));
                                                                                                                                                              
% Матрица [H R] представляет из себя стохастическую матрицу
% H -- матрица размерности (cS - k)*k, описывающая переходы цепи из состояний множества Z(невозвратных состояний) в состояния множества Y(поглощающих состояний)
H = [ 0.1 0.15 0.25 0.05;
      0.05 0.03 0.27 0.15;
      0.01 0.09 0.35 0.05;
      0.1 0.2 0.1 0.05;];

% R -- матрица размерности (cS - k)*(cS - k), описывающая эволюцию цепи до её выхода из множества невозвратных состояний.
R = [ 0.05 0.1 0.2 0.1;
      0.1 0.25 0.1 0.05;
      0.05 0.07 0.35 0.03;
      0.25 0.1 0.1 0.1; ];

% Создаем матрицу P из Q, O, H и R
P = [Q O;
     H R;];

for r=5:8
	for s=1:8
		if(r!=s)
			uslovn(r,s)=P(r,s)/(1-P(r,r));
		end
	end
end

uslovn
