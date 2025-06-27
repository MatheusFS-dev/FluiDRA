clear, clc, close all
%% Parâmetros de Entrada
U = 3;
N = 512;
W = 2;
kappa = 0.1; % kappa->0, m->Inf, mu=1 -> Rayleigh Fading
m = 8;
mu = 1;
sinr_db = 10;
sigma_s = 1;
sigma_n = 1;
N_events = 3;
gamma_mean = [];
for i=1:N_events
    %% Inicialização dos coeficientes de canal complexos
    % Inicializa uma matriz para armazenar os coeficientes de canal para cada usuário e porta
    g = zeros(N, U);

    %% Gerar coeficientes de canal alpha-mu para cada usuário e porta
    % Gera os coeficientes de canal chamando a função gen_channel_alpha_mu
    for u = 1:U
        if u == 1
            sirn_lin = 10^(sinr_db/10);
            sigma_p = sirn_lin .* ((U-1)*sigma_s + sigma_n);
            sigma=sigma_p;
        else
            sigma=sigma_s;
        end
        r_hat = sigma;
        [g(:, u), ~] = gen_channel_kappa_mu_shadowed(W, N, kappa, m, mu, r_hat);
    end

    %% Calcular a SINR para cada porta e encontrar a máxima
    % Este loop calcula a SINR para cada porta 'k' e encontra a porta que maximiza a SINR
    gamma_k = zeros(N, 1);
    for k = 1:N
        % Numerador da SINR: Potência do sinal desejado
        % Calcula a potência do sinal desejado para o usuário 1 (usuário de interesse)
        signal_power = abs(g(k, 1))^2;

        % Denominador da SINR: Interferência mais ruído
        % Calcula a potência de interferência somando a potência de outros usuários na mesma porta
        interference_power = sum(abs(g(k, 2:U)).^2);
        % Potência do ruído
        noise_power = sigma_n^2;

        % Calcula a SINR para o porto 'k'
        gamma_k(k) = signal_power / (interference_power + noise_power);
    end

    figure (1)
    hold on
    title('sinr x ports')
    xlabel('N ports')
    ylabel('sirn')
    plot(1:N, 10*log10(gamma_k))
    xlim([1, N])
    hold off

    figure(2)
    hold on
    title('received channel - user')
    xlabel('N ports')
    ylabel('|g|^2')
    plot(1:N, abs(g(:, 1)).^2)
    xlim([1, N])
    hold off

 gamma_mean = [gamma_mean, mean(gamma_k)];
end
mean(10*log10(gamma_mean))
