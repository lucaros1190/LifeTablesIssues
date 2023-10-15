% Script for LTI system - Corcyra case
% Created by Luca Rossini on 22 July 2022
% Last update 2 June 2023
% e-mail luca.rossini@unitus.it


% Raw dataset 

    % Real data from climatic chamber experiments
    % Here the individuals in each stage per day are reported
    % The day zero is reset for each stage (scaled population)

    % Eggs 18°C

Eggs_18 = xlsread('InputData-LifTabCorcyra.xlsx', '18C', 'I2:I16');
DelayEggs_18 = xlsread('InputData-LifTabCorcyra.xlsx', '18C', 'B2:B8');

    % Eggs 21°C

Eggs_21 = xlsread('InputData-LifTabCorcyra.xlsx', '21C', 'I2:I16');
DelayEggs_21 = xlsread('InputData-LifTabCorcyra.xlsx', '21C', 'B2:B33');

    % Eggs 24°C

Eggs_24 =  xlsread('InputData-LifTabCorcyra.xlsx', '24C', 'I2:I16');
DelayEggs_24 =  xlsread('InputData-LifTabCorcyra.xlsx', '24C', 'B2:B116');

    % Eggs 26°C

Eggs_26 = xlsread('InputData-LifTabCorcyra.xlsx', '26C', 'I2:I16');
DelayEggs_26 = xlsread('InputData-LifTabCorcyra.xlsx', '26C', 'B2:B138');

    % Eggs 28°C

Eggs_28 = xlsread('InputData-LifTabCorcyra.xlsx', '28C', 'I2:I16');
DelayEggs_28 = xlsread('InputData-LifTabCorcyra.xlsx', '28C', 'B2:B63');

    % Eggs 30°C

Eggs_30 = xlsread('InputData-LifTabCorcyra.xlsx', '30C', 'I2:I16');
DelayEggs_30 = xlsread('InputData-LifTabCorcyra.xlsx', '30C', 'B2:B130');

    % Eggs 34°C

Eggs_34 = xlsread('InputData-LifTabCorcyra.xlsx', '34C', 'I2:I16');
DelayEggs_34 = xlsread('InputData-LifTabCorcyra.xlsx', '34C', 'B2:B13');

    % Larvae 18°C 

Larvae_18 = xlsread('InputData-LifTabCorcyra.xlsx', '18C', 'J2:J70');
DelayLarvae_18 = xlsread('InputData-LifTabCorcyra.xlsx', '18C', 'C2:C8');

    % Larvae 21°C

Larvae_21 = xlsread('InputData-LifTabCorcyra.xlsx', '21C', 'J2:J70');
DelayLarvae_21 = xlsread('InputData-LifTabCorcyra.xlsx', '21C', 'C2:C33');

    % Larvae 24°C

Larvae_24 = xlsread('InputData-LifTabCorcyra.xlsx', '24C', 'J2:J70');
DelayLarvae_24 = xlsread('InputData-LifTabCorcyra.xlsx', '24C', 'C2:C116');

    % Larvae 26°C

Larvae_26 = xlsread('InputData-LifTabCorcyra.xlsx', '26C', 'J2:J70');
DelayLarvae_26 = xlsread('InputData-LifTabCorcyra.xlsx', '26C', 'C2:C138');

    % Larvae 28°C

Larvae_28 = xlsread('InputData-LifTabCorcyra.xlsx', '28C', 'J2:J70');
DelayLarvae_28 = xlsread('InputData-LifTabCorcyra.xlsx', '28C', 'C2:C63');
 
    % Larvae 30°C

Larvae_30 = xlsread('InputData-LifTabCorcyra.xlsx', '30C', 'J2:J70');
DelayLarvae_30 = xlsread('InputData-LifTabCorcyra.xlsx', '30C', 'C2:C130');

    % Larvae 34°C

Larvae_34 = xlsread('InputData-LifTabCorcyra.xlsx', '34C', 'J2:J70');
DelayLarvae_34 = xlsread('InputData-LifTabCorcyra.xlsx', '34C', 'C2:C13');

    % Pupae 18°C

Pupae_18 = xlsread('InputData-LifTabCorcyra.xlsx', '18C', 'K2:K45');
DelayPupae_18 = xlsread('InputData-LifTabCorcyra.xlsx', '18C', 'D2:D8');

    % Pupae 21°C

Pupae_21 = xlsread('InputData-LifTabCorcyra.xlsx', '21C', 'K2:K45');
DelayPupae_21 = xlsread('InputData-LifTabCorcyra.xlsx', '21C', 'D2:D33');

    % Pupae 24°C

Pupae_24 = xlsread('InputData-LifTabCorcyra.xlsx', '24C', 'K2:K45');
DelayPupae_24 = xlsread('InputData-LifTabCorcyra.xlsx', '24C', 'D2:D116');

    % Pupae 26°C

Pupae_26 = xlsread('InputData-LifTabCorcyra.xlsx', '26C', 'K2:K45');
DelayPupae_26 = xlsread('InputData-LifTabCorcyra.xlsx', '26C', 'D2:D138');

    % Pupae 28°C

Pupae_28 = xlsread('InputData-LifTabCorcyra.xlsx', '28C', 'K2:K45');
DelayPupae_28 = xlsread('InputData-LifTabCorcyra.xlsx', '28C', 'D2:D63');

    % Pupae 30°C

Pupae_30 = xlsread('InputData-LifTabCorcyra.xlsx', '30C', 'K2:K45');
DelayPupae_30 = xlsread('InputData-LifTabCorcyra.xlsx', '30C', 'D2:D130');

    % Pupae 34°C

Pupae_34 = xlsread('InputData-LifTabCorcyra.xlsx', '34C', 'K2:K45');
DelayPupae_34 = xlsread('InputData-LifTabCorcyra.xlsx', '34C', 'D2:D13');


    % Total insects per temperature (survived from egg to adult)
    % This is for checking purposes and to normalize data

TotalEggs_18 = sum(Eggs_18);
TotalEggs_21 = sum(Eggs_21);
TotalEggs_24 = sum(Eggs_24);
TotalEggs_26 = sum(Eggs_26);
TotalEggs_28 = sum(Eggs_28);
TotalEggs_30 = sum(Eggs_30);
TotalEggs_34 = sum(Eggs_34);

TotalLarvae_18 = sum(Larvae_18);
TotalLarvae_21 = sum(Larvae_21);
TotalLarvae_24 = sum(Larvae_24);
TotalLarvae_26 = sum(Larvae_26);
TotalLarvae_28 = sum(Larvae_28);
TotalLarvae_30 = sum(Larvae_30);
TotalLarvae_34 = sum(Larvae_34);

TotalPupae_18 = sum(Pupae_18);
TotalPupae_21 = sum(Pupae_21);
TotalPupae_24 = sum(Pupae_24);
TotalPupae_26 = sum(Pupae_26);
TotalPupae_28 = sum(Pupae_28);
TotalPupae_30 = sum(Pupae_30);
TotalPupae_34 = sum(Pupae_34);

    % Initial eggs for any stage

InitEggs_18 = 40;
InitEggs_21 = 80;
InitEggs_24 = 140;
InitEggs_26 = 160;
InitEggs_28 = 70;
InitEggs_30 = 180;
InitEggs_34 = 40;


    % Whole life cycle data arrays - For double check!!
    % This part is helpful to compare the final simulations and to make the
    % second comparison: larvae in that case is a single stage including
    % Eggs + Larvae maintaining the individuality of the specimen, Pupae is
    % the same but considering Eggs + Larvae + Pupae

    % Life cycle 18°C

WLF_Eggs_18 = xlsread('InputData-LifTabCorcyra.xlsx', '18C', 'L2:L16');
WLF_Larvae_18 = xlsread('InputData-LifTabCorcyra.xlsx', '18C', 'M2:M80');
WLF_Pupae_18 = xlsread('InputData-LifTabCorcyra.xlsx', '18C', 'N2:N126');

    % Life cycle 21°C

WLF_Eggs_21 = xlsread('InputData-LifTabCorcyra.xlsx', '21C', 'L2:L16');
WLF_Larvae_21 = xlsread('InputData-LifTabCorcyra.xlsx', '21C', 'M2:M80');
WLF_Pupae_21 = xlsread('InputData-LifTabCorcyra.xlsx', '21C', 'N2:N126');

    % Life cycle 24°C

WLF_Eggs_24 = xlsread('InputData-LifTabCorcyra.xlsx', '24C', 'L2:L16');
WLF_Larvae_24 = xlsread('InputData-LifTabCorcyra.xlsx', '24C', 'M2:M80');
WLF_Pupae_24 = xlsread('InputData-LifTabCorcyra.xlsx', '24C', 'N2:N126');

    % Life cycle 26°C

WLF_Eggs_26 = xlsread('InputData-LifTabCorcyra.xlsx', '26C', 'L2:L16');
WLF_Larvae_26 = xlsread('InputData-LifTabCorcyra.xlsx', '26C', 'M2:M80');
WLF_Pupae_26 = xlsread('InputData-LifTabCorcyra.xlsx', '26C', 'N2:N126');

    % Life cycle 28°C

WLF_Eggs_28 = xlsread('InputData-LifTabCorcyra.xlsx', '28C', 'L2:L16');
WLF_Larvae_28 = xlsread('InputData-LifTabCorcyra.xlsx', '28C', 'M2:M80');
WLF_Pupae_28 = xlsread('InputData-LifTabCorcyra.xlsx', '28C', 'N2:N126');

    % Life cycle 30°C

WLF_Eggs_30 = xlsread('InputData-LifTabCorcyra.xlsx', '30C', 'L2:L16');
WLF_Larvae_30 = xlsread('InputData-LifTabCorcyra.xlsx', '30C', 'M2:M80');
WLF_Pupae_30 = xlsread('InputData-LifTabCorcyra.xlsx', '30C', 'N2:N126');

    % Life cycle 34°C

WLF_Eggs_34 = xlsread('InputData-LifTabCorcyra.xlsx', '34C', 'L2:L16');
WLF_Larvae_34 = xlsread('InputData-LifTabCorcyra.xlsx', '34C', 'M2:M80');
WLF_Pupae_34 = xlsread('InputData-LifTabCorcyra.xlsx', '34C', 'N2:N126');


% Normalization of the raw data (not necessary, added just in case)

ImpulseEggs_18 = Eggs_18 / TotalEggs_18;
ImpulseEggs_21 = Eggs_21 / TotalEggs_21;
ImpulseEggs_24 = Eggs_24 / TotalEggs_24;
ImpulseEggs_26 = Eggs_26 / TotalEggs_26;
ImpulseEggs_28 = Eggs_28 / TotalEggs_28;
ImpulseEggs_30 = Eggs_30 / TotalEggs_30;
ImpulseEggs_34 = Eggs_34 / TotalEggs_34;

ImpulseLarvae_18 = Larvae_18 / TotalLarvae_18;
ImpulseLarvae_21 = Larvae_21 / TotalLarvae_21;
ImpulseLarvae_24 = Larvae_24 / TotalLarvae_24;
ImpulseLarvae_26 = Larvae_26 / TotalLarvae_26;
ImpulseLarvae_28 = Larvae_28 / TotalLarvae_28;
ImpulseLarvae_30 = Larvae_30 / TotalLarvae_30;
ImpulseLarvae_34 = Larvae_34 / TotalLarvae_34;

ImpulsePupae_18 = Pupae_18 / TotalPupae_18;
ImpulsePupae_21 = Pupae_21 / TotalPupae_21;
ImpulsePupae_24 = Pupae_24 / TotalPupae_24;
ImpulsePupae_26 = Pupae_26 / TotalPupae_26;
ImpulsePupae_28 = Pupae_28 / TotalPupae_28;
ImpulsePupae_30 = Pupae_30 / TotalPupae_30;
ImpulsePupae_34 = Pupae_34 / TotalPupae_34;

Impulse_WLF_Eggs_18 = WLF_Eggs_18 / TotalEggs_18;
Impulse_WLF_Eggs_21 = WLF_Eggs_21 / TotalEggs_21;
Impulse_WLF_Eggs_24 = WLF_Eggs_24 / TotalEggs_24;
Impulse_WLF_Eggs_26 = WLF_Eggs_26 / TotalEggs_26;
Impulse_WLF_Eggs_28 = WLF_Eggs_28 / TotalEggs_28;
Impulse_WLF_Eggs_30 = WLF_Eggs_30 / TotalEggs_30;
Impulse_WLF_Eggs_34 = WLF_Eggs_34 / TotalEggs_34;

Impulse_WLF_Larvae_18 = WLF_Larvae_18 / TotalLarvae_18;
Impulse_WLF_Larvae_21 = WLF_Larvae_21 / TotalLarvae_21;
Impulse_WLF_Larvae_24 = WLF_Larvae_24 / TotalLarvae_24;
Impulse_WLF_Larvae_26 = WLF_Larvae_26 / TotalLarvae_26;
Impulse_WLF_Larvae_28 = WLF_Larvae_28 / TotalLarvae_28;
Impulse_WLF_Larvae_30 = WLF_Larvae_30 / TotalLarvae_30;
Impulse_WLF_Larvae_34 = WLF_Larvae_34 / TotalLarvae_34;

Impulse_WLF_Pupae_18 = WLF_Pupae_18 / TotalPupae_18;
Impulse_WLF_Pupae_21 = WLF_Pupae_21 / TotalPupae_21;
Impulse_WLF_Pupae_24 = WLF_Pupae_24 / TotalPupae_24;
Impulse_WLF_Pupae_26 = WLF_Pupae_26 / TotalPupae_26;
Impulse_WLF_Pupae_28 = WLF_Pupae_28 / TotalPupae_28;
Impulse_WLF_Pupae_30 = WLF_Pupae_30 / TotalPupae_30;
Impulse_WLF_Pupae_34 = WLF_Pupae_34 / TotalPupae_34;


% Expected values and standard deviations
% This is the classical life tables representation with mean =/- SD
% This mean is the average delay of each stage!
% Mode, median, and skewness are reported for plotting purposes as well


    % Eggs 18°C

ElabData_MeanEggs_18 = mean(DelayEggs_18);
ElabData_DevStEggs_18 = std(DelayEggs_18);

ElabData_MedianEggs_18 = median(DelayEggs_18);
ElabData_ModeEggs_18 = mode(DelayEggs_18);
ElabData_SkewnessEggs_18 = skewness(DelayEggs_18);
ElabData_KurtosisEggs_18 = kurtosis(DelayEggs_18);

TimeUnits_Eggs_18 = linspace(1, length(ImpulseEggs_18), length(ImpulseEggs_18));
NormEggs_18 = normpdf(TimeUnits_Eggs_18, ElabData_MeanEggs_18, ...
    ElabData_DevStEggs_18);

    % Eggs 21°C

ElabData_MeanEggs_21 = mean(DelayEggs_21);
ElabData_DevStEggs_21 = std(DelayEggs_21);

ElabData_MedianEggs_21 = median(DelayEggs_21);
ElabData_ModeEggs_21 = mode(DelayEggs_21);
ElabData_SkewnessEggs_21 = skewness(DelayEggs_21);
ElabData_KurtosisEggs_21 = kurtosis(DelayEggs_21);

TimeUnits_Eggs_21 = linspace(1, length(ImpulseEggs_21), length(ImpulseEggs_21));
NormEggs_21 = normpdf(TimeUnits_Eggs_21, ElabData_MeanEggs_21, ...
    ElabData_DevStEggs_21);

    % Eggs 24°C

ElabData_MeanEggs_24 = mean(DelayEggs_24);
ElabData_DevStEggs_24 = std(DelayEggs_24);

ElabData_MedianEggs_24 = median(DelayEggs_24);
ElabData_ModeEggs_24 = mode(DelayEggs_24);
ElabData_SkewnessEggs_24 = skewness(DelayEggs_24);
ElabData_KurtosisEggs_24 = kurtosis(DelayEggs_24);

TimeUnits_Eggs_24 = linspace(1, length(ImpulseEggs_24), length(ImpulseEggs_24));
NormEggs_24 = normpdf(TimeUnits_Eggs_24, ElabData_MeanEggs_24, ...
    ElabData_DevStEggs_24);

    % Eggs 26°C

ElabData_MeanEggs_26 = mean(DelayEggs_26);
ElabData_DevStEggs_26 = std(DelayEggs_26);

ElabData_MedianEggs_26 = median(DelayEggs_26);
ElabData_ModeEggs_26 = mode(DelayEggs_26);
ElabData_SkewnessEggs_26 = skewness(DelayEggs_26);
ElabData_KurtosisEggs_26 = kurtosis(DelayEggs_26);

TimeUnits_Eggs_26 = linspace(1, length(ImpulseEggs_26), length(ImpulseEggs_26));
NormEggs_26 = normpdf(TimeUnits_Eggs_26, ElabData_MeanEggs_26, ...
    ElabData_DevStEggs_26);

    % Eggs 28°C

ElabData_MeanEggs_28 = mean(DelayEggs_28);
ElabData_DevStEggs_28 = std(DelayEggs_28);

ElabData_MedianEggs_28 = median(DelayEggs_28);
ElabData_ModeEggs_28 = mode(DelayEggs_28);
ElabData_SkewnessEggs_28 = skewness(DelayEggs_28);
ElabData_KurtosisEggs_28 = kurtosis(DelayEggs_28);

TimeUnits_Eggs_28 = linspace(1, length(ImpulseEggs_28), length(ImpulseEggs_28));
NormEggs_28 = normpdf(TimeUnits_Eggs_28, ElabData_MeanEggs_28, ...
    ElabData_DevStEggs_28);

    % Eggs 30°C

ElabData_MeanEggs_30 = mean(DelayEggs_30);
ElabData_DevStEggs_30 = std(DelayEggs_30);

ElabData_MedianEggs_30 = median(DelayEggs_30);
ElabData_ModeEggs_30 = mode(DelayEggs_30);
ElabData_SkewnessEggs_30 = skewness(DelayEggs_30);
ElabData_KurtosisEggs_30 = kurtosis(DelayEggs_30);

TimeUnits_Eggs_30 = linspace(1, length(ImpulseEggs_30), length(ImpulseEggs_30));
NormEggs_30 = normpdf(TimeUnits_Eggs_30, ElabData_MeanEggs_30, ...
    ElabData_DevStEggs_30);

    % Eggs 34°C

ElabData_MeanEggs_34 = mean(DelayEggs_34);
ElabData_DevStEggs_34 = std(DelayEggs_34);

ElabData_MedianEggs_34 = median(DelayEggs_34);
ElabData_ModeEggs_34 = mode(DelayEggs_34);
ElabData_SkewnessEggs_34 = skewness(DelayEggs_34);
ElabData_KurtosisEggs_34 = kurtosis(DelayEggs_34);

TimeUnits_Eggs_34 = linspace(1, length(ImpulseEggs_34), length(ImpulseEggs_34));
NormEggs_34 = normpdf(TimeUnits_Eggs_34, ElabData_MeanEggs_34, ...
    ElabData_DevStEggs_34);

    % Larvae 18°C

ElabData_MeanLarvae_18 = mean(DelayLarvae_18);
ElabData_DevStLarvae_18 = std(DelayLarvae_18);

ElabData_MedianLarvae_18 = median(DelayLarvae_18);
ElabData_ModeLarvae_18 = mode(DelayLarvae_18);
ElabData_SkewnessLarvae_18 = skewness(DelayLarvae_18);
ElabData_KurtosisLarvae_18 = kurtosis(DelayLarvae_18);

TimeUnits_Larvae_18 = linspace(1, length(ImpulseLarvae_18), length(ImpulseLarvae_18));
NormLarvae_18 = normpdf(TimeUnits_Larvae_18, ElabData_MeanLarvae_18, ...
    ElabData_DevStLarvae_18);

    % Larvae 21°C

ElabData_MeanLarvae_21 = mean(DelayLarvae_21);
ElabData_DevStLarvae_21 = std(DelayLarvae_21);

ElabData_MedianLarvae_21 = median(DelayLarvae_21);
ElabData_ModeLarvae_21 = mode(DelayLarvae_21);
ElabData_SkewnessLarvae_21 = skewness(DelayLarvae_21);
ElabData_KurtosisLarvae_21 = kurtosis(DelayLarvae_21);

TimeUnits_Larvae_21 = linspace(1, length(ImpulseLarvae_21), length(ImpulseLarvae_21));
NormLarvae_21 = normpdf(TimeUnits_Larvae_21, ElabData_MeanLarvae_21, ...
    ElabData_DevStLarvae_21);

    % Larvae 24°C

ElabData_MeanLarvae_24 = mean(DelayLarvae_24);
ElabData_DevStLarvae_24 = std(DelayLarvae_24);

ElabData_MedianLarvae_24 = median(DelayLarvae_24);
ElabData_ModeLarvae_24 = mode(DelayLarvae_24);
ElabData_SkewnessLarvae_24 = skewness(DelayLarvae_24);
ElabData_KurtosisLarvae_24 = kurtosis(DelayLarvae_24);

TimeUnits_Larvae_24 = linspace(1, length(ImpulseLarvae_24), length(ImpulseLarvae_24));
NormLarvae_24 = normpdf(TimeUnits_Larvae_24, ElabData_MeanLarvae_24, ...
    ElabData_DevStLarvae_24);

    % Larvae 26°C

ElabData_MeanLarvae_26 = mean(DelayLarvae_26);
ElabData_DevStLarvae_26 = std(DelayLarvae_26);

ElabData_MedianLarvae_26 = median(DelayLarvae_26);
ElabData_ModeLarvae_26 = mode(DelayLarvae_26);
ElabData_SkewnessLarvae_26 = skewness(DelayLarvae_26);
ElabData_KurtosisLarvae_26 = kurtosis(DelayLarvae_26);

TimeUnits_Larvae_26 = linspace(1, length(ImpulseLarvae_26), length(ImpulseLarvae_26));
NormLarvae_26 = normpdf(TimeUnits_Larvae_26, ElabData_MeanLarvae_26, ...
    ElabData_DevStLarvae_26);

    % Larvae 28°C

ElabData_MeanLarvae_28 = mean(DelayLarvae_28);
ElabData_DevStLarvae_28 = std(DelayLarvae_28);

ElabData_MedianLarvae_28 = median(DelayLarvae_28);
ElabData_ModeLarvae_28 = mode(DelayLarvae_28);
ElabData_SkewnessLarvae_28 = skewness(DelayLarvae_28);
ElabData_KurtosisLarvae_28 = kurtosis(DelayLarvae_28);

TimeUnits_Larvae_28 = linspace(1, length(ImpulseLarvae_28), length(ImpulseLarvae_28));
NormLarvae_28 = normpdf(TimeUnits_Larvae_28, ElabData_MeanLarvae_28, ...
    ElabData_DevStLarvae_28);

    % Larvae 30°C

ElabData_MeanLarvae_30 = mean(DelayLarvae_30);
ElabData_DevStLarvae_30 = std(DelayLarvae_30);

ElabData_MedianLarvae_30 = median(DelayLarvae_30);
ElabData_ModeLarvae_30 = mode(DelayLarvae_30);
ElabData_SkewnessLarvae_30 = skewness(DelayLarvae_30);
ElabData_KurtosisLarvae_30 = kurtosis(DelayLarvae_30);

TimeUnits_Larvae_30 = linspace(1, length(ImpulseLarvae_30), length(ImpulseLarvae_30));
NormLarvae_30 = normpdf(TimeUnits_Larvae_30, ElabData_MeanLarvae_30, ...
    ElabData_DevStLarvae_30);

    % Larvae 34°C

ElabData_MeanLarvae_34 = mean(DelayLarvae_34);
ElabData_DevStLarvae_34 = std(DelayLarvae_34);

ElabData_MedianLarvae_34 = median(DelayLarvae_34);
ElabData_ModeLarvae_34 = mode(DelayLarvae_34);
ElabData_SkewnessLarvae_34 = skewness(DelayLarvae_34);
ElabData_KurtosisLarvae_34 = kurtosis(DelayLarvae_34);

TimeUnits_Larvae_34 = linspace(1, length(ImpulseLarvae_34), length(ImpulseLarvae_34));
NormLarvae_34 = normpdf(TimeUnits_Larvae_34, ElabData_MeanLarvae_34, ...
    ElabData_DevStLarvae_34);

    % Pupae 18°C

ElabData_MeanPupae_18 = mean(DelayPupae_18);
ElabData_DevStPupae_18 = std(DelayPupae_18);

ElabData_MedianPupae_18 = median(DelayPupae_18);
ElabData_ModePupae_18 = mode(DelayPupae_18);
ElabData_SkewnessPupae_18 = skewness(DelayPupae_18);
ElabData_KurtosisPupae_18 = kurtosis(DelayPupae_18);

TimeUnits_Pupae_18 = linspace(1, length(ImpulsePupae_18), length(ImpulsePupae_18));
NormPupae_18 = normpdf(TimeUnits_Pupae_18, ElabData_MeanPupae_18, ...
    ElabData_DevStPupae_18);

    % Pupae 21°C

ElabData_MeanPupae_21 = mean(DelayPupae_21);
ElabData_DevStPupae_21 = std(DelayPupae_21);

ElabData_MedianPupae_21 = median(DelayPupae_21);
ElabData_ModePupae_21 = mode(DelayPupae_21);
ElabData_SkewnessPupae_21 = skewness(DelayPupae_21);
ElabData_KurtosisPupae_21 = kurtosis(DelayPupae_21);

TimeUnits_Pupae_21 = linspace(1, length(ImpulsePupae_21), length(ImpulsePupae_21));
NormPupae_21 = normpdf(TimeUnits_Pupae_21, ElabData_MeanPupae_21, ...
    ElabData_DevStPupae_21);

    % Pupae 24°C

ElabData_MeanPupae_24 = mean(DelayPupae_24);
ElabData_DevStPupae_24 = std(DelayPupae_24);

ElabData_MedianPupae_24 = median(DelayPupae_24);
ElabData_ModePupae_24 = mode(DelayPupae_24);
ElabData_SkewnessPupae_24 = skewness(DelayPupae_24);
ElabData_KurtosisPupae_24 = kurtosis(DelayPupae_24);

TimeUnits_Pupae_24 = linspace(1, length(ImpulsePupae_24), length(ImpulsePupae_24));
NormPupae_24 = normpdf(TimeUnits_Pupae_24, ElabData_MeanPupae_24, ...
    ElabData_DevStPupae_24);

    % Pupae 26°C

ElabData_MeanPupae_26 = mean(DelayPupae_26);
ElabData_DevStPupae_26 = std(DelayPupae_26);

ElabData_MedianPupae_26 = median(DelayPupae_26);
ElabData_ModePupae_26 = mode(DelayPupae_26);
ElabData_SkewnessPupae_26 = skewness(DelayPupae_26);
ElabData_KurtosisPupae_26 = kurtosis(DelayPupae_26);

TimeUnits_Pupae_26 = linspace(1, length(ImpulsePupae_26), length(ImpulsePupae_26));
NormPupae_26 = normpdf(TimeUnits_Pupae_26, ElabData_MeanPupae_26, ...
    ElabData_DevStPupae_26);

    % Pupae 28°C

ElabData_MeanPupae_28 = mean(DelayPupae_28);
ElabData_DevStPupae_28 = std(DelayPupae_28);

ElabData_MedianPupae_28 = median(DelayPupae_28);
ElabData_ModePupae_28 = mode(DelayPupae_28);
ElabData_SkewnessPupae_28 = skewness(DelayPupae_28);
ElabData_KurtosisPupae_28 = kurtosis(DelayPupae_28);

TimeUnits_Pupae_28 = linspace(1, length(ImpulsePupae_28), length(ImpulsePupae_28));
NormPupae_28 = normpdf(TimeUnits_Pupae_28, ElabData_MeanPupae_28, ...
    ElabData_DevStPupae_28);

    % Pupae 30°C

ElabData_MeanPupae_30 = mean(DelayPupae_30);
ElabData_DevStPupae_30 = std(DelayPupae_30);

ElabData_MedianPupae_30 = median(DelayPupae_30);
ElabData_ModePupae_30 = mode(DelayPupae_30);
ElabData_SkewnessPupae_30 = skewness(DelayPupae_30);
ElabData_KurtosisPupae_30 = kurtosis(DelayPupae_30);

TimeUnits_Pupae_30 = linspace(1, length(ImpulsePupae_30), length(ImpulsePupae_30));
NormPupae_30 = normpdf(TimeUnits_Pupae_30, ElabData_MeanPupae_30, ...
    ElabData_DevStPupae_30);

    % Pupae 34°C

ElabData_MeanPupae_34 = mean(DelayPupae_34);
ElabData_DevStPupae_34 = std(DelayPupae_34);

ElabData_MedianPupae_34 = median(DelayPupae_34);
ElabData_ModePupae_34 = mode(DelayPupae_34);
ElabData_SkewnessPupae_34 = skewness(DelayPupae_34);
ElabData_KurtosisPupae_34 = kurtosis(DelayPupae_34);

TimeUnits_Pupae_34 = linspace(1, length(ImpulsePupae_34), length(ImpulsePupae_34));
NormPupae_34 = normpdf(TimeUnits_Pupae_34, ElabData_MeanPupae_34, ...
    ElabData_DevStPupae_34);


% Second part - Calculation of the transfer functions and impulse reponses
% This first part concerns ONLY the data

    % Definition of the transfer function - This is good for the whole
    % code, not only for what follows strictly below

z = tf([1 0], [1], 1);


    % Impulsive response - Eggs 18

OutEggs_18 = tf(0);

for j = 1 : length(ImpulseEggs_18)

    OutEggs_18 = OutEggs_18 + z^(-j) * ImpulseEggs_18(j);

end

[IR_Eggs_18, TimeE18] = impulse(OutEggs_18); % store the solution


    % Impulsive response - Eggs 21

OutEggs_21 = tf(0);

for j = 1 : length(ImpulseEggs_21)

    OutEggs_21 = OutEggs_21 + z^(-j) * ImpulseEggs_21(j);

end

[IR_Eggs_21, TimeE21] = impulse(OutEggs_21); % store the solution


    % Impulsive response - Eggs 24

OutEggs_24 = tf(0);

for j = 1 : length(ImpulseEggs_24)

    OutEggs_24 = OutEggs_24 + z^(-j) * ImpulseEggs_24(j);

end

[IR_Eggs_24, TimeE24] = impulse(OutEggs_24); % store the solution


    % Impulsive response - Eggs 26

OutEggs_26 = tf(0);

for j = 1 : length(ImpulseEggs_26)

    OutEggs_26 = OutEggs_26 + z^(-j) * ImpulseEggs_26(j);

end

[IR_Eggs_26, TimeE26] = impulse(OutEggs_26); % store the solution


    % Impulsive response - Eggs 28

OutEggs_28 = tf(0);

for j = 1 : length(ImpulseEggs_28)

    OutEggs_28 = OutEggs_28 + z^(-j) * ImpulseEggs_28(j);

end

[IR_Eggs_28, TimeE28] = impulse(OutEggs_28); % store the solution


    % Impulsive response - Eggs 30

OutEggs_30 = tf(0);

for j = 1 : length(ImpulseEggs_30)

    OutEggs_30 = OutEggs_30 + z^(-j) * ImpulseEggs_30(j);

end

[IR_Eggs_30, TimeE30] = impulse(OutEggs_30); % store the solution


    % Impulsive response - Eggs 34

OutEggs_34 = tf(0);

for j = 1 : length(ImpulseEggs_34)

    OutEggs_34 = OutEggs_34 + z^(-j) * ImpulseEggs_34(j);

end

[IR_Eggs_34, TimeE34] = impulse(OutEggs_34); % store the solution


    % Impulsive response - Larvae 18

OutLarvae_18 = tf(0);

for j = 1 : length(ImpulseLarvae_18)

    OutLarvae_18 = OutLarvae_18 + z^(-j) * ImpulseLarvae_18(j);

end

[IR_Larvae_18, TimeL18] = impulse(OutLarvae_18); % store the solution


    % Impulsive response - Larvae 21

OutLarvae_21 = tf(0);

for j = 1 : length(ImpulseLarvae_21)

    OutLarvae_21 = OutLarvae_21 + z^(-j) * ImpulseLarvae_21(j);

end

[IR_Larvae_21, TimeL21] = impulse(OutLarvae_21); % store the solution


    % Impulsive response - Larvae 24

OutLarvae_24 = tf(0);

for j = 1 : length(ImpulseLarvae_24)

    OutLarvae_24 = OutLarvae_24 + z^(-j) * ImpulseLarvae_24(j);

end

[IR_Larvae_24, TimeL24] = impulse(OutLarvae_24); % store the solution


    % Impulsive response - Larvae 26

OutLarvae_26 = tf(0);

for j = 1 : length(ImpulseLarvae_26)

    OutLarvae_26 = OutLarvae_26 + z^(-j) * ImpulseLarvae_26(j);

end

[IR_Larvae_26, TimeL26] = impulse(OutLarvae_26); % store the solution


    % Impulsive response - Larvae 28

OutLarvae_28 = tf(0);

for j = 1 : length(ImpulseLarvae_28)

    OutLarvae_28 = OutLarvae_28 + z^(-j) * ImpulseLarvae_28(j);

end

[IR_Larvae_28, TimeL28] = impulse(OutLarvae_28); % store the solution


    % Impulsive response - Larvae 30

OutLarvae_30 = tf(0);

for j = 1 : length(ImpulseLarvae_30)

    OutLarvae_30 = OutLarvae_30 + z^(-j) * ImpulseLarvae_30(j);

end

[IR_Larvae_30, TimeL30] = impulse(OutLarvae_30); % store the solution


    % Impulsive response - Larvae 34

OutLarvae_34 = tf(0);

for j = 1 : length(ImpulseLarvae_34)

    OutLarvae_34 = OutLarvae_34 + z^(-j) * ImpulseLarvae_34(j);

end

[IR_Larvae_34, TimeL34] = impulse(OutLarvae_34); % store the solution


    % Impulsive response - Pupae 18

OutPupae_18 = tf(0);

for j = 1 : length(ImpulsePupae_18)

    OutPupae_18 = OutPupae_18 + z^(-j) * ImpulsePupae_18(j);

end

[IR_Pupae_18, TimeP18] = impulse(OutPupae_18); % store the solution


    % Impulsive response - Pupae 21

OutPupae_21 = tf(0);

for j = 1 : length(ImpulsePupae_21)

    OutPupae_21 = OutPupae_21 + z^(-j) * ImpulsePupae_21(j);

end

[IR_Pupae_21, TimeP21] = impulse(OutPupae_21); % store the solution


    % Impulsive response - Pupae 24

OutPupae_24 = tf(0);

for j = 1 : length(ImpulsePupae_24)

    OutPupae_24 = OutPupae_24 + z^(-j) * ImpulsePupae_24(j);

end

[IR_Pupae_24, TimeP24] = impulse(OutPupae_24); % store the solution


    % Impulsive response - Pupae 26

OutPupae_26 = tf(0);

for j = 1 : length(ImpulsePupae_26)

    OutPupae_26 = OutPupae_26 + z^(-j) * ImpulsePupae_26(j);

end

[IR_Pupae_26, TimeP26] = impulse(OutPupae_26); % store the solution


    % Impulsive response - Pupae 28

OutPupae_28 = tf(0);

for j = 1 : length(ImpulsePupae_28)

    OutPupae_28 = OutPupae_28 + z^(-j) * ImpulsePupae_28(j);

end

[IR_Pupae_28, TimeP28] = impulse(OutPupae_28); % store the solution


    % Impulsive response - Pupae 30

OutPupae_30 = tf(0);

for j = 1 : length(ImpulsePupae_30)

    OutPupae_30 = OutPupae_30 + z^(-j) * ImpulsePupae_30(j);

end

[IR_Pupae_30, TimeP30] = impulse(OutPupae_30); % store the solution


    % Impulsive response - Pupae 34

OutPupae_34 = tf(0);

for j = 1 : length(ImpulsePupae_34)

    OutPupae_34 = OutPupae_34 + z^(-j) * ImpulsePupae_34(j);

end

[IR_Pupae_34, TimeP34] = impulse(OutPupae_34); % store the solution


% Calculation of the Gaussian distributions from life tables published
% and elaborated dataset


    % Calculate impulses

    % Eggs 18

LifeTab_OutEggs_18 = tf(0);

for j = 1 : length(ImpulseEggs_18)

    LifeTab_OutEggs_18 = LifeTab_OutEggs_18 + z^(-j) * NormEggs_18(j);

end

[IR_LifeTab_Eggs_18, TimeLTE18] = impulse(LifeTab_OutEggs_18); % store the solution

    % Eggs 21

LifeTab_OutEggs_21 = tf(0);

for j = 1 : length(ImpulseEggs_21)

    LifeTab_OutEggs_21 = LifeTab_OutEggs_21 + z^(-j) * NormEggs_21(j);

end

[IR_LifeTab_Eggs_21, TimeLTE21] = impulse(LifeTab_OutEggs_21); % store the solution

    % Eggs 24

LifeTab_OutEggs_24 = tf(0);

for j = 1 : length(ImpulseEggs_24)

    LifeTab_OutEggs_24 = LifeTab_OutEggs_24 + z^(-j) * NormEggs_24(j);

end

[IR_LifeTab_Eggs_24, TimeLTE24] = impulse(LifeTab_OutEggs_24); % store the solution

    % Eggs 26

LifeTab_OutEggs_26 = tf(0);

for j = 1 : length(ImpulseEggs_26)

    LifeTab_OutEggs_26 = LifeTab_OutEggs_26 + z^(-j) * NormEggs_26(j);

end

[IR_LifeTab_Eggs_26, TimeLTE26] = impulse(LifeTab_OutEggs_26); % store the solution

    % Eggs 28

LifeTab_OutEggs_28 = tf(0);

for j = 1 : length(ImpulseEggs_28)

    LifeTab_OutEggs_28 = LifeTab_OutEggs_28 + z^(-j) * NormEggs_28(j);

end

[IR_LifeTab_Eggs_28, TimeLTE28] = impulse(LifeTab_OutEggs_28); % store the solution

    % Eggs 30

LifeTab_OutEggs_30 = tf(0);

for j = 1 : length(ImpulseEggs_30)

    LifeTab_OutEggs_30 = LifeTab_OutEggs_30 + z^(-j) * NormEggs_30(j);

end

[IR_LifeTab_Eggs_30, TimeLTE30] = impulse(LifeTab_OutEggs_30); % store the solution

    % Eggs 34

LifeTab_OutEggs_34 = tf(0);

for j = 1 : length(ImpulseEggs_34)

    LifeTab_OutEggs_34 = LifeTab_OutEggs_34 + z^(-j) * NormEggs_34(j);

end

[IR_LifeTab_Eggs_34, TimeLTE34] = impulse(LifeTab_OutEggs_34); % store the solution

    % Larvae 18

LifeTab_OutLarvae_18 = tf(0);

for j = 1 : length(ImpulseLarvae_18)

    LifeTab_OutLarvae_18 = LifeTab_OutLarvae_18 + z^(-j) * NormLarvae_18(j);

end

[IR_LifeTab_Larvae_18, TimeLTL18] = impulse(LifeTab_OutLarvae_18); % store the solution

    % Larvae 21

LifeTab_OutLarvae_21 = tf(0);

for j = 1 : length(ImpulseLarvae_21)

    LifeTab_OutLarvae_21 = LifeTab_OutLarvae_21 + z^(-j) * NormLarvae_21(j);

end

[IR_LifeTab_Larvae_21, TimeLTL21] = impulse(LifeTab_OutLarvae_21); % store the solution

    % Larvae 24

LifeTab_OutLarvae_24 = tf(0);

for j = 1 : length(ImpulseLarvae_24)

    LifeTab_OutLarvae_24 = LifeTab_OutLarvae_24 + z^(-j) * NormLarvae_24(j);

end

[IR_LifeTab_Larvae_24, TimeLTL24] = impulse(LifeTab_OutLarvae_24); % store the solution

    % Larvae 26

LifeTab_OutLarvae_26 = tf(0);

for j = 1 : length(ImpulseLarvae_26)

    LifeTab_OutLarvae_26 = LifeTab_OutLarvae_26 + z^(-j) * NormLarvae_26(j);

end

[IR_LifeTab_Larvae_26, TimeLTL26] = impulse(LifeTab_OutLarvae_26); % store the solution

    % Larvae 28

LifeTab_OutLarvae_28 = tf(0);

for j = 1 : length(ImpulseLarvae_28)

    LifeTab_OutLarvae_28 = LifeTab_OutLarvae_28 + z^(-j) * NormLarvae_28(j);

end

[IR_LifeTab_Larvae_28, TimeLTL28] = impulse(LifeTab_OutLarvae_28); % store the solution

    % Larvae 30

LifeTab_OutLarvae_30 = tf(0);

for j = 1 : length(ImpulseLarvae_30)

    LifeTab_OutLarvae_30 = LifeTab_OutLarvae_30 + z^(-j) * NormLarvae_30(j);

end

[IR_LifeTab_Larvae_30, TimeLTL30] = impulse(LifeTab_OutLarvae_30); % store the solution

    % Larvae 34

LifeTab_OutLarvae_34 = tf(0);

for j = 1 : length(ImpulseLarvae_34)

    LifeTab_OutLarvae_34 = LifeTab_OutLarvae_34 + z^(-j) * NormLarvae_34(j);

end

[IR_LifeTab_Larvae_34, TimeLTL34] = impulse(LifeTab_OutLarvae_34); % store the solution

    % Pupae 18

LifeTab_OutPupae_18 = tf(0);

for j = 1 : length(ImpulsePupae_18)

    LifeTab_OutPupae_18 = LifeTab_OutPupae_18 + z^(-j) * NormPupae_18(j);

end

[IR_LifeTab_Pupae_18, TimeLTP18] = impulse(LifeTab_OutPupae_18); % store the solution

    % Pupae 21

LifeTab_OutPupae_21 = tf(0);

for j = 1 : length(ImpulsePupae_21)

    LifeTab_OutPupae_21 = LifeTab_OutPupae_21 + z^(-j) * NormPupae_21(j);

end

[IR_LifeTab_Pupae_21, TimeLTP21] = impulse(LifeTab_OutPupae_21); % store the solution

    % Pupae 24

LifeTab_OutPupae_24 = tf(0);

for j = 1 : length(ImpulsePupae_24)

    LifeTab_OutPupae_24 = LifeTab_OutPupae_24 + z^(-j) * NormPupae_24(j);

end

[IR_LifeTab_Pupae_24, TimeLTP24] = impulse(LifeTab_OutPupae_24); % store the solution

    % Pupae 26

LifeTab_OutPupae_26 = tf(0);

for j = 1 : length(ImpulsePupae_26)

    LifeTab_OutPupae_26 = LifeTab_OutPupae_26 + z^(-j) * NormPupae_26(j);

end

[IR_LifeTab_Pupae_26, TimeLTP26] = impulse(LifeTab_OutPupae_26); % store the solution

    % Pupae 28

LifeTab_OutPupae_28 = tf(0);

for j = 1 : length(ImpulsePupae_28)

    LifeTab_OutPupae_28 = LifeTab_OutPupae_28 + z^(-j) * NormPupae_28(j);

end

[IR_LifeTab_Pupae_28, TimeLTP28] = impulse(LifeTab_OutPupae_28); % store the solution

    % Pupae 30

LifeTab_OutPupae_30 = tf(0);

for j = 1 : length(ImpulsePupae_30)

    LifeTab_OutPupae_30 = LifeTab_OutPupae_30 + z^(-j) * NormPupae_30(j);

end

[IR_LifeTab_Pupae_30, TimeLTP30] = impulse(LifeTab_OutPupae_30); % store the solution

    % Pupae 34

LifeTab_OutPupae_34 = tf(0);

for j = 1 : length(ImpulsePupae_34)

    LifeTab_OutPupae_34 = LifeTab_OutPupae_34 + z^(-j) * NormPupae_34(j);

end

[IR_LifeTab_Pupae_34, TimeLTP34] = impulse(LifeTab_OutPupae_34); % store the solution


% Calculation of the impulsive response from the non scaled dataset. This
% is for comparison purposes, given that in this case we experimentally
% have the composition of the impulsive responses, not the single stage
% impulsive responses.


    % Eggs 18

WLF_OutEggs_18 = tf(0);

for j = 1 : length(Impulse_WLF_Eggs_18)

    WLF_OutEggs_18 = WLF_OutEggs_18 + z^(-j) * Impulse_WLF_Eggs_18(j);

end

[IR_WLF_OutEggs_18, TimeWLFE18] = impulse(WLF_OutEggs_18); % store the solution


    % Eggs 21

WLF_OutEggs_21 = tf(0);

for j = 1 : length(Impulse_WLF_Eggs_21)

    WLF_OutEggs_21 = WLF_OutEggs_21 + z^(-j) * Impulse_WLF_Eggs_21(j);

end

[IR_WLF_OutEggs_21, TimeWLFE21] = impulse(WLF_OutEggs_21); % store the solution


    % Eggs 24

WLF_OutEggs_24 = tf(0);

for j = 1 : length(Impulse_WLF_Eggs_24)

    WLF_OutEggs_24 = WLF_OutEggs_24 + z^(-j) * Impulse_WLF_Eggs_24(j);

end

[IR_WLF_OutEggs_24, TimeWLFE24] = impulse(WLF_OutEggs_24); % store the solution


    % Eggs 26

WLF_OutEggs_26 = tf(0);

for j = 1 : length(Impulse_WLF_Eggs_26)

    WLF_OutEggs_26 = WLF_OutEggs_26 + z^(-j) * Impulse_WLF_Eggs_26(j);

end

[IR_WLF_OutEggs_26, TimeWLFE26] = impulse(WLF_OutEggs_26); % store the solution


    % Eggs 28

WLF_OutEggs_28 = tf(0);

for j = 1 : length(Impulse_WLF_Eggs_28)

    WLF_OutEggs_28 = WLF_OutEggs_28 + z^(-j) * Impulse_WLF_Eggs_28(j);

end

[IR_WLF_OutEggs_28, TimeWLFE28] = impulse(WLF_OutEggs_28); % store the solution


    % Eggs 30

WLF_OutEggs_30 = tf(0);

for j = 1 : length(Impulse_WLF_Eggs_30)

    WLF_OutEggs_30 = WLF_OutEggs_30 + z^(-j) * Impulse_WLF_Eggs_30(j);

end

[IR_WLF_OutEggs_30, TimeWLFE30] = impulse(WLF_OutEggs_30); % store the solution


    % Eggs 34

WLF_OutEggs_34 = tf(0);

for j = 1 : length(Impulse_WLF_Eggs_34)

    WLF_OutEggs_34 = WLF_OutEggs_34 + z^(-j) * Impulse_WLF_Eggs_34(j);

end

[IR_WLF_OutEggs_34, TimeWLFE34] = impulse(WLF_OutEggs_34); % store the solution


    % Larva 18

WLF_OutLarvae_18 = tf(0);

for j = 1 : length(Impulse_WLF_Larvae_18)

    WLF_OutLarvae_18 = WLF_OutLarvae_18 + z^(-j) * Impulse_WLF_Larvae_18(j);

end

[IR_WLF_OutLarvae_18, TimeWLFL18] = impulse(WLF_OutLarvae_18); % store the solution


    % Larva 21

WLF_OutLarvae_21 = tf(0);

for j = 1 : length(Impulse_WLF_Larvae_21)

    WLF_OutLarvae_21 = WLF_OutLarvae_21 + z^(-j) * Impulse_WLF_Larvae_21(j);

end

[IR_WLF_OutLarvae_21, TimeWLFL21] = impulse(WLF_OutLarvae_21); % store the solution


    % Larva 24

WLF_OutLarvae_24 = tf(0);

for j = 1 : length(Impulse_WLF_Larvae_24)

    WLF_OutLarvae_24 = WLF_OutLarvae_24 + z^(-j) * Impulse_WLF_Larvae_24(j);

end

[IR_WLF_OutLarvae_24, TimeWLFL24] = impulse(WLF_OutLarvae_24); % store the solution


    % Larva 26

WLF_OutLarvae_26 = tf(0);

for j = 1 : length(Impulse_WLF_Larvae_26)

    WLF_OutLarvae_26 = WLF_OutLarvae_26 + z^(-j) * Impulse_WLF_Larvae_26(j);

end

[IR_WLF_OutLarvae_26, TimeWLFL26] = impulse(WLF_OutLarvae_26); % store the solution


    % Larva 28

WLF_OutLarvae_28 = tf(0);

for j = 1 : length(Impulse_WLF_Larvae_28)

    WLF_OutLarvae_28 = WLF_OutLarvae_28 + z^(-j) * Impulse_WLF_Larvae_28(j);

end

[IR_WLF_OutLarvae_28, TimeWLFL28] = impulse(WLF_OutLarvae_28); % store the solution


    % Larva 30

WLF_OutLarvae_30 = tf(0);

for j = 1 : length(Impulse_WLF_Larvae_30)

    WLF_OutLarvae_30 = WLF_OutLarvae_30 + z^(-j) * Impulse_WLF_Larvae_30(j);

end

[IR_WLF_OutLarvae_30, TimeWLFL30] = impulse(WLF_OutLarvae_30); % store the solution


    % Larva 34

WLF_OutLarvae_34 = tf(0);

for j = 1 : length(Impulse_WLF_Larvae_34)

    WLF_OutLarvae_34 = WLF_OutLarvae_34 + z^(-j) * Impulse_WLF_Larvae_34(j);

end

[IR_WLF_OutLarvae_34, TimeWLFL34] = impulse(WLF_OutLarvae_34); % store the solution


    % Pupa 18

WLF_OutPupae_18 = tf(0);

for j = 1 : length(Impulse_WLF_Pupae_18)

    WLF_OutPupae_18 = WLF_OutPupae_18 + z^(-j) * Impulse_WLF_Pupae_18(j);

end

[IR_WLF_OutPupae_18, TimeWLFP18] = impulse(WLF_OutPupae_18); % store the solution


    % Pupa 21

WLF_OutPupae_21 = tf(0);

for j = 1 : length(Impulse_WLF_Pupae_21)

    WLF_OutPupae_21 = WLF_OutPupae_21 + z^(-j) * Impulse_WLF_Pupae_21(j);

end

[IR_WLF_OutPupae_21, TimeWLFP21] = impulse(WLF_OutPupae_21); % store the solution


    % Pupa 24

WLF_OutPupae_24 = tf(0);

for j = 1 : length(Impulse_WLF_Pupae_24)

    WLF_OutPupae_24 = WLF_OutPupae_24 + z^(-j) * Impulse_WLF_Pupae_24(j);

end

[IR_WLF_OutPupae_24, TimeWLFP24] = impulse(WLF_OutPupae_24); % store the solution


    % Pupa 26

WLF_OutPupae_26 = tf(0);

for j = 1 : length(Impulse_WLF_Pupae_26)

    WLF_OutPupae_26 = WLF_OutPupae_26 + z^(-j) * Impulse_WLF_Pupae_26(j);

end

[IR_WLF_OutPupae_26, TimeWLFP26] = impulse(WLF_OutPupae_26); % store the solution


    % Pupa 28

WLF_OutPupae_28 = tf(0);

for j = 1 : length(Impulse_WLF_Pupae_28)

    WLF_OutPupae_28 = WLF_OutPupae_28 + z^(-j) * Impulse_WLF_Pupae_28(j);

end

[IR_WLF_OutPupae_28, TimeWLFP28] = impulse(WLF_OutPupae_28); % store the solution


    % Pupa 30

WLF_OutPupae_30 = tf(0);

for j = 1 : length(Impulse_WLF_Pupae_30)

    WLF_OutPupae_30 = WLF_OutPupae_30 + z^(-j) * Impulse_WLF_Pupae_30(j);

end

[IR_WLF_OutPupae_30, TimeWLFP30] = impulse(WLF_OutPupae_30); % store the solution


    % Pupa 34

WLF_OutPupae_34 = tf(0);

for j = 1 : length(Impulse_WLF_Pupae_34)

    WLF_OutPupae_34 = WLF_OutPupae_34 + z^(-j) * Impulse_WLF_Pupae_34(j);

end

[IR_WLF_OutPupae_34, TimeWLFP34] = impulse(WLF_OutPupae_34); % store the solution


% Simulation of the whole life cycle


    % Multiplication of the transfer functions from the stage of interest
    % to the lower ones!!
    % We have to consider the total eggs enter in the life cycle at day
    % zero, for this reason it is multiplied by the number of eggs!


% 18 C
    
    % From REAL data

LifeCycle_Eggs_18 = TotalEggs_18 * (OutEggs_18);
LifeCycle_Larvae_18 = TotalEggs_18 * (OutEggs_18 * OutLarvae_18);
LifeCycle_Pupae_18 = TotalEggs_18 * (OutEggs_18 * OutLarvae_18 * OutPupae_18);

    % From FAKE Gaussian data

LifeCycle_LifTab_Eggs_18 = TotalEggs_18 * (LifeTab_OutEggs_18 );
LifeCycle_LifTab_Larvae_18 = TotalEggs_18 * (LifeTab_OutEggs_18 * ...
                             LifeTab_OutLarvae_18);
LifeCycle_LifTab_Pupae_18 = TotalEggs_18 * (LifeTab_OutEggs_18 * ...
                            LifeTab_OutLarvae_18 * LifeTab_OutPupae_18);

    % store the solution - Real data Eggs
[IR_LifeCycleEggs_18, TimeLifeCycleE18] = impulse(LifeCycle_Eggs_18);
    % store the solution -  Real data Larvae
[IR_LifeCycleLarvae_18, TimeLifeCycleL18] = impulse(LifeCycle_Larvae_18);
    % store the solution - Real data Pupae
[IR_LifeCyclePupae_18, TimeLifeCycleP18] = impulse(LifeCycle_Pupae_18);

    % store the solution - Gaussian data Eggs
[IR_LifeCycle_LifTab_Eggs_18, TimeLifeCycle_LifTab_E18] = ...
                       impulse(LifeCycle_LifTab_Eggs_18);
    % store the solution -  Gaussian data Larvae
[IR_LifeCycle_LifTab_Larvae_18, TimeLifeCycle_LifTab_L18] = ...
                       impulse(LifeCycle_LifTab_Larvae_18);
    % store the solution - Gaussian data Pupae
[IR_LifeCycle_LifTab_Pupae_18, TimeLifeCycle_LifTab_P18] = ...
                       impulse(LifeCycle_LifTab_Pupae_18);


% 21 C
    
    % From REAL data

LifeCycle_Eggs_21 = TotalEggs_21 * (OutEggs_21);
LifeCycle_Larvae_21 = TotalEggs_21 * (OutEggs_21 * OutLarvae_21);
LifeCycle_Pupae_21 = TotalEggs_21 * (OutEggs_21 * OutLarvae_21 * OutPupae_21);

    % From FAKE Gaussian data

LifeCycle_LifTab_Eggs_21 = TotalEggs_21 * (LifeTab_OutEggs_21);
LifeCycle_LifTab_Larvae_21 = TotalEggs_21 * (LifeTab_OutEggs_21 * ...
                             LifeTab_OutLarvae_21);
LifeCycle_LifTab_Pupae_21 = TotalEggs_21 * (LifeTab_OutEggs_21 * ...
                            LifeTab_OutLarvae_21 * LifeTab_OutPupae_21);

    % store the solution - Real data Eggs
[IR_LifeCycleEggs_21, TimeLifeCycleE21] = impulse(LifeCycle_Eggs_21);
    % store the solution -  Real data Larvae
[IR_LifeCycleLarvae_21, TimeLifeCycleL21] = impulse(LifeCycle_Larvae_21);
    % store the solution - Real data Pupae
[IR_LifeCyclePupae_21, TimeLifeCycleP21] = impulse(LifeCycle_Pupae_21);

    % store the solution - Gaussian data Eggs
[IR_LifeCycle_LifTab_Eggs_21, TimeLifeCycle_LifTab_E21] = ...
                       impulse(LifeCycle_LifTab_Eggs_21);
    % store the solution -  Gaussian data Larvae
[IR_LifeCycle_LifTab_Larvae_21, TimeLifeCycle_LifTab_L21] = ...
                       impulse(LifeCycle_LifTab_Larvae_21);
    % store the solution - Gaussian data Pupae
[IR_LifeCycle_LifTab_Pupae_21, TimeLifeCycle_LifTab_P21] = ...
                       impulse(LifeCycle_LifTab_Pupae_21);


% 24 C
    
    % From REAL data

LifeCycle_Eggs_24 = TotalEggs_24 * (OutEggs_24);
LifeCycle_Larvae_24 = TotalEggs_24 * (OutEggs_24 * OutLarvae_24);
LifeCycle_Pupae_24 = TotalEggs_24 * (OutEggs_24 * OutLarvae_24 * OutPupae_24);

    % From FAKE Gaussian data

LifeCycle_LifTab_Eggs_24 = TotalEggs_24 * (LifeTab_OutEggs_24);
LifeCycle_LifTab_Larvae_24 = TotalEggs_24 * (LifeTab_OutEggs_24 * ...
                             LifeTab_OutLarvae_24);
LifeCycle_LifTab_Pupae_24 = TotalEggs_24 * (LifeTab_OutEggs_24 * ...
                            LifeTab_OutLarvae_24 * LifeTab_OutPupae_24);

    % store the solution - Real data Eggs
[IR_LifeCycleEggs_24, TimeLifeCycleE24] = impulse(LifeCycle_Eggs_24);
    % store the solution -  Real data Larvae
[IR_LifeCycleLarvae_24, TimeLifeCycleL24] = impulse(LifeCycle_Larvae_24);
    % store the solution - Real data Pupae
[IR_LifeCyclePupae_24, TimeLifeCycleP24] = impulse(LifeCycle_Pupae_24);

    % store the solution - Gaussian data Eggs
[IR_LifeCycle_LifTab_Eggs_24, TimeLifeCycle_LifTab_E24] = ...
                       impulse(LifeCycle_LifTab_Eggs_24);
    % store the solution -  Gaussian data Larvae
[IR_LifeCycle_LifTab_Larvae_24, TimeLifeCycle_LifTab_L24] = ...
                       impulse(LifeCycle_LifTab_Larvae_24);
    % store the solution - Gaussian data Pupae
[IR_LifeCycle_LifTab_Pupae_24, TimeLifeCycle_LifTab_P24] = ...
                       impulse(LifeCycle_LifTab_Pupae_24);


% 26 C
    
    % From REAL data

LifeCycle_Eggs_26 = TotalEggs_26 * (OutEggs_26);
LifeCycle_Larvae_26 = TotalEggs_26 * (OutEggs_26 * OutLarvae_26);
LifeCycle_Pupae_26 = TotalEggs_26 * (OutEggs_26 * OutLarvae_26 * OutPupae_26);

    % From FAKE Gaussian data

LifeCycle_LifTab_Eggs_26 = TotalEggs_26 * (LifeTab_OutEggs_26);
LifeCycle_LifTab_Larvae_26 = TotalEggs_26 * (LifeTab_OutEggs_26 * ...
                             LifeTab_OutLarvae_26);
LifeCycle_LifTab_Pupae_26 = TotalEggs_26 * (LifeTab_OutEggs_26 * ...
                            LifeTab_OutLarvae_26 * LifeTab_OutPupae_26);

    % store the solution - Real data Eggs
[IR_LifeCycleEggs_26, TimeLifeCycleE26] = impulse(LifeCycle_Eggs_26);
    % store the solution -  Real data Larvae
[IR_LifeCycleLarvae_26, TimeLifeCycleL26] = impulse(LifeCycle_Larvae_26);
    % store the solution - Real data Pupae
[IR_LifeCyclePupae_26, TimeLifeCycleP26] = impulse(LifeCycle_Pupae_26);

    % store the solution - Gaussian data Eggs
[IR_LifeCycle_LifTab_Eggs_26, TimeLifeCycle_LifTab_E26] = ...
                       impulse(LifeCycle_LifTab_Eggs_26);
    % store the solution -  Gaussian data Larvae
[IR_LifeCycle_LifTab_Larvae_26, TimeLifeCycle_LifTab_L26] = ...
                       impulse(LifeCycle_LifTab_Larvae_26);
    % store the solution - Gaussian data Pupae
[IR_LifeCycle_LifTab_Pupae_26, TimeLifeCycle_LifTab_P26] = ...
                       impulse(LifeCycle_LifTab_Pupae_26);


% 28 C
    
    % From REAL data

LifeCycle_Eggs_28 = TotalEggs_28 * (OutEggs_28);
LifeCycle_Larvae_28 = TotalEggs_28 * (OutEggs_28 * OutLarvae_28);
LifeCycle_Pupae_28 = TotalEggs_28 * (OutEggs_28 * OutLarvae_28 * OutPupae_28);

    % From FAKE Gaussian data

LifeCycle_LifTab_Eggs_28 = TotalEggs_28 * (LifeTab_OutEggs_28);
LifeCycle_LifTab_Larvae_28 = TotalEggs_28 * (LifeTab_OutEggs_28 * ...
                             LifeTab_OutLarvae_28);
LifeCycle_LifTab_Pupae_28 = TotalEggs_28 * (LifeTab_OutEggs_28 * ...
                            LifeTab_OutLarvae_28 * LifeTab_OutPupae_28);

    % store the solution - Real data Eggs
[IR_LifeCycleEggs_28, TimeLifeCycleE28] = impulse(LifeCycle_Eggs_28);
    % store the solution -  Real data Larvae
[IR_LifeCycleLarvae_28, TimeLifeCycleL28] = impulse(LifeCycle_Larvae_28);
    % store the solution - Real data Pupae
[IR_LifeCyclePupae_28, TimeLifeCycleP28] = impulse(LifeCycle_Pupae_28);

    % store the solution - Gaussian data Eggs
[IR_LifeCycle_LifTab_Eggs_28, TimeLifeCycle_LifTab_E28] = ...
                       impulse(LifeCycle_LifTab_Eggs_28);
    % store the solution -  Gaussian data Larvae
[IR_LifeCycle_LifTab_Larvae_28, TimeLifeCycle_LifTab_L28] = ...
                       impulse(LifeCycle_LifTab_Larvae_28);
    % store the solution - Gaussian data Pupae
[IR_LifeCycle_LifTab_Pupae_28, TimeLifeCycle_LifTab_P28] = ...
                       impulse(LifeCycle_LifTab_Pupae_28);


% 30 C
    
    % From REAL data

LifeCycle_Eggs_30 = TotalEggs_30 * (OutEggs_30);
LifeCycle_Larvae_30 = TotalEggs_30 * (OutEggs_30 * OutLarvae_30);
LifeCycle_Pupae_30 = TotalEggs_30 * (OutEggs_30 * OutLarvae_30 * OutPupae_30);

    % From FAKE Gaussian data

LifeCycle_LifTab_Eggs_30 = TotalEggs_30 * (LifeTab_OutEggs_30);
LifeCycle_LifTab_Larvae_30 = TotalEggs_30 * (LifeTab_OutEggs_30 * ...
                             LifeTab_OutLarvae_30);
LifeCycle_LifTab_Pupae_30 = TotalEggs_30 * (LifeTab_OutEggs_30 * ...
                            LifeTab_OutLarvae_30 * LifeTab_OutPupae_30);

    % store the solution - Real data Eggs
[IR_LifeCycleEggs_30, TimeLifeCycleE30] = impulse(LifeCycle_Eggs_30);
    % store the solution -  Real data Larvae
[IR_LifeCycleLarvae_30, TimeLifeCycleL30] = impulse(LifeCycle_Larvae_30);
    % store the solution - Real data Pupae
[IR_LifeCyclePupae_30, TimeLifeCycleP30] = impulse(LifeCycle_Pupae_30);

    % store the solution - Gaussian data Eggs
[IR_LifeCycle_LifTab_Eggs_30, TimeLifeCycle_LifTab_E30] = ...
                       impulse(LifeCycle_LifTab_Eggs_30);
    % store the solution -  Gaussian data Larvae
[IR_LifeCycle_LifTab_Larvae_30, TimeLifeCycle_LifTab_L30] = ...
                       impulse(LifeCycle_LifTab_Larvae_30);
    % store the solution - Gaussian data Pupae
[IR_LifeCycle_LifTab_Pupae_30, TimeLifeCycle_LifTab_P30] = ...
                       impulse(LifeCycle_LifTab_Pupae_30);


% 34 C
    
    % From REAL data

LifeCycle_Eggs_34 = TotalEggs_34 * (OutEggs_34);
LifeCycle_Larvae_34 = TotalEggs_34 * (OutEggs_34 * OutLarvae_34);
LifeCycle_Pupae_34 = TotalEggs_34 * (OutEggs_34 * OutLarvae_34 * OutPupae_34);

    % From FAKE Gaussian data

LifeCycle_LifTab_Eggs_34 = TotalEggs_34 * (LifeTab_OutEggs_34);
LifeCycle_LifTab_Larvae_34 = TotalEggs_34 * (LifeTab_OutEggs_34 * ...
                             LifeTab_OutLarvae_34);
LifeCycle_LifTab_Pupae_34 = TotalEggs_34 * (LifeTab_OutEggs_34 * ...
                            LifeTab_OutLarvae_34 * LifeTab_OutPupae_34);

    % store the solution - Real data Eggs
[IR_LifeCycleEggs_34, TimeLifeCycleE34] = impulse(LifeCycle_Eggs_34);
    % store the solution -  Real data Larvae
[IR_LifeCycleLarvae_34, TimeLifeCycleL34] = impulse(LifeCycle_Larvae_34);
    % store the solution - Real data Pupae
[IR_LifeCyclePupae_34, TimeLifeCycleP34] = impulse(LifeCycle_Pupae_34);

    % store the solution - Gaussian data Eggs
[IR_LifeCycle_LifTab_Eggs_34, TimeLifeCycle_LifTab_E34] = ...
                       impulse(LifeCycle_LifTab_Eggs_34);
    % store the solution -  Gaussian data Larvae
[IR_LifeCycle_LifTab_Larvae_34, TimeLifeCycle_LifTab_L34] = ...
                       impulse(LifeCycle_LifTab_Larvae_34);
    % store the solution - Gaussian data Pupae
[IR_LifeCycle_LifTab_Pupae_34, TimeLifeCycle_LifTab_P34] = ...
                       impulse(LifeCycle_LifTab_Pupae_34);


% Recalling the script for plotting results

run("Plots.m")
run("PlotsDetails.m")
