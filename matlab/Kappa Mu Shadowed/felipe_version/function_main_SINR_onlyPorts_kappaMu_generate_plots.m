function [] = function_main_SINR_onlyPorts_kappaMu_generate_plots(kappa, mu, m, W, N, U, N_events)

%% ------------------- Definir Variáveis e Parâmetros de Entrada ------------------- %%
saveData = 1;

%% --------------------- Salvar os Dados Gerados --------------------- %%
if(saveData==1)

    % Formatar nome do arquivo com base nos parâmetros
    formatted_file_name = sprintf('channel_W%1.1f_U%d_N%d_kappa%1.1e_mu%.1f_m%.1f', ...
        W, U, N, kappa, mu, m);

    % Definir pasta para salvar os resultados
    generation_folder = fullfile('runs', formatted_file_name);

    % Criar a pasta se não existir

    SNR_file = sprintf('SNR_events_W%1.1f_U%d_N%d_kappa%1.1e_mu%.1f_m%.1f.mat', ...
        W, U, N, kappa, mu, m);

    % Salvar SNR por porta
    S = load(fullfile(generation_folder, SNR_file));

    SNR_events = S.SNR_events;

    figure;
    plot(SNR_events(1,:));
    hold on
    for i=2:N_events
        plot(SNR_events(i,:));
    end
    set(gca, 'Yscale', 'log');

    SNR_figure = sprintf('SNR_events_W%1.1f_U%d_N%d_kappa%1.1e_mu%.1f_m%.1f.pdf', ...
        W, U, N, kappa, mu, m);
    saveas(gcf, fullfile(generation_folder, SNR_figure));
end