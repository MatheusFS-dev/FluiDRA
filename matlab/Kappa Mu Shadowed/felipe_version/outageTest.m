clear all;close all;clc

load("SNR_events_W1.0_U1_N100_kappa1.0e-16_mu1.0_m50.0.mat");

N = 100;

SNR_dB = -20:1:40;

SNR = 10.^(SNR_dB./10);

gamma = 1;%;2e-1;

numObsPorts = 15;

%% ------------- Plot ports -------------
% figure(1);
% plot(SNR_events(1,:))
% hold on
% for i=2:length(SNR_events)
%     plot(SNR_events(i,:))
% end
% set(gca, 'Yscale', 'log');

%% ------------- Full knowledge -------------
max_SNR = max(SNR_events,[],2);

outgage = max_SNR < gamma./SNR;

p_out_full = mean(outgage, 1);

%% ------------- Observed ports -------------

portIdxs = floor(linspace(1, N, numObsPorts));

SNR_obs_ports = SNR_events(:, portIdxs);

max_obs_SNR = max(SNR_obs_ports,[],2);

obs_outgage = max_obs_SNR < gamma./SNR;

p_out_obs_ports = mean(obs_outgage, 1);

%% ------------- Plot -------------
figure(2);
plot(SNR_dB, p_out_full);
hold on
plot(SNR_dB, p_out_obs_ports);

set(gca, 'Yscale', 'log');
legend('Full', 'Obs')

%% ------------- Print -------------
SNR_lin = 2.5; % Linear SNR

outgage = max_SNR < gamma./SNR_lin;
p_out_full = mean(outgage);

outgage_obs_ports = max_obs_SNR < gamma./SNR_lin;
p_out_obs_ports = mean(outgage_obs_ports);

fprintf(1, 'Pout full SNR = %d dB: %f\n', 10*log10(SNR_lin), p_out_full);
fprintf(1, 'Pout %d obs ports  SNR = %d dB: %f\n', numObsPorts, 10*log10(SNR_lin), p_out_obs_ports);

%writematrix(SNR_events, 'SNR_events_W2.0_U1_N100_kappa5.0e+00_mu1.0_m50.0.csv');

%SNR_events_log10 = log10(SNR_events);
%writematrix(SNR_events_log10, 'SNR_events_log10.csv');