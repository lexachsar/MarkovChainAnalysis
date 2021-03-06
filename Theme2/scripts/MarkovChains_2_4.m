﻿% 4. Для произвольных начальных распределений p(0) и p′(0) вычислить значения векторов p(n) при n = 1 , 2 , ..., 5 .

% Начальные распределения
P0 = [0.14 0.174 0.12 0.273 0.02 0.093 0.016 0.164];
P1= [0.076 0.135 0.214 0.165 0.067 0.134 0.183 0.026];

%матрица вероятностей переходов
P = [0.156 0.135 0.05 0.346 0.119 0.045 0.078 0.071;
    0.094 0.271 0.156 0.023 0.096 0.175 0.065 0.12;
    0.225 0.075 0.25 0.05 0.05 0.1 0.15 0.1;
    0.076 0.097 0.065 0.234 0.312 0.156 0.023 0.037;
    0.12 0.2 0.352 0.123 0.065 0.063 0.032 0.045;
    0.4 0.05 0.05 0.12 0.08 0.015 0.085 0.2; 
    0.09 0.01 0.02 0.045 0.055 0.48 0.2 0.1;
    0.3 0.1 0.1 0.1 0.1 0.1 0.15 0.05;];

% Векторы абсолютных распределений
pn=P0*P^5
pn1=P1*P^5
