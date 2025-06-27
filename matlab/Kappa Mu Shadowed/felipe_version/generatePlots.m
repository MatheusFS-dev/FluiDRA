clear all;close all;clc

U = 1;  % Número de usuários (U = 1: FAS, U > 1: FAMA)
N = 100;  % Número de portas (subcanais) da antena fluida

% Outros parâmetros
N_events = 1e6;  % Número de eventos para a simulação

% Parâmetros da distribuição kappa-mu sombreada
kappa = [1e-16, 5, 5, 5, 5];
mu = [1, 1, 1, 5, 2];
m = [50, 2, 50, 50, 50]; % Parãmetro de sombreamento
W = [0.5, 1, 2];  % Comprimento normalizado da antena fluida (em termos de comprimento de onda)

for i=1:1:length(kappa)
    for j=1:1:length(W)

        close all;
        clear SNR_events;
        function_main_SINR_onlyPorts_kappaMu_generate_plots(kappa(i), mu(i), m(i), W(j), N, U, N_events);

    end
end