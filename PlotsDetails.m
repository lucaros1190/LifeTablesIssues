% Script for plotting the results of LTI system - Corcyra case
% Created by Luca Rossini on 22 July 2022
% Last update 2 June 2023
% e-mail luca.rossini@unitus.it

% This script is recalled by 'Script_impulse_resp.m'

% First round of plots - Impulse response from real data versus mean and
% standard deviation of the same data assuming a Gaussian distribution
% This is helpful to show that the common interpretation of the life tables
% data is wrong.


    % Eggs 18

figure
hold on

stairs(TimeE18, IR_Eggs_18 * TotalEggs_18, '--', 'Color', 'blue', 'LineWidth', 1.25)
stairs(TimeLTE18, IR_LifeTab_Eggs_18 * TotalEggs_18, 'Color', 'red')
scatter(TimeUnits_Eggs_18, Eggs_18, 'filled', 'Color', 'green')
plot([ElabData_MedianEggs_18 ElabData_MedianEggs_18], [0 max(Eggs_18)], ...
      '--', 'Color', 'black', 'LineWidth', 1)
title('Eggs 18 °C')
legend('Impulsive response from real distribution', ['Impulsive response ' ...
       'from gaussian distribution'], 'Experimental data', 'Median')
xlabel('Time (days)')
ylabel('Number of hatching eggs')


    % Eggs 21

figure
hold on

stairs(TimeE21, IR_Eggs_21 * TotalEggs_21,  '--', 'Color', 'blue', 'LineWidth', 1.25)
stairs(TimeLTE21, IR_LifeTab_Eggs_21 * TotalEggs_21, 'Color', 'red')
scatter(TimeUnits_Eggs_21, Eggs_21, 'filled', 'Color', 'green')
plot([ElabData_MedianEggs_21 ElabData_MedianEggs_21], [0 max(Eggs_21)], ...
      '--', 'Color', 'black', 'LineWidth', 1)
title('Eggs 21 °C')
legend('Impulsive response from real distribution', ['Impulsive response ' ...
       'from gaussian distribution'], 'Experimental data', 'Median')
xlabel('Time (days)')
ylabel('Number of hatching eggs')


    % Eggs 24

figure
hold on

stairs(TimeE24, IR_Eggs_24 * TotalEggs_24, '--', 'Color', 'blue', 'LineWidth', 1.25)
stairs(TimeLTE24, IR_LifeTab_Eggs_24 * TotalEggs_24, 'Color', 'red')
scatter(TimeUnits_Eggs_24, Eggs_24, 'filled', 'Color', 'green')
title('Eggs 24 °C')
plot([ElabData_MedianEggs_24 ElabData_MedianEggs_24], [0 max(Eggs_24)], ...
      '--', 'Color', 'black', 'LineWidth', 1)
legend('Impulsive response from real distribution', ['Impulsive response ' ...
       'from gaussian distribution'], 'Experimental data', 'Median')
xlabel('Time (days)')
ylabel('Number of hatching eggs')


    % Eggs 26

figure
hold on

stairs(TimeE26, IR_Eggs_26 * TotalEggs_26, '--', 'Color', 'blue', 'LineWidth', 1.25)
stairs(TimeLTE26, IR_LifeTab_Eggs_26 * TotalEggs_26, 'Color', 'red')
scatter(TimeUnits_Eggs_26, Eggs_26, 'filled', 'Color', 'green')
plot([ElabData_MedianEggs_26 ElabData_MedianEggs_26], [0 max(Eggs_26)], ...
      '--', 'Color', 'black', 'LineWidth', 1)
title('Eggs 26 °C')
legend('Impulsive response from real distribution', ['Impulsive response ' ...
       'from gaussian distribution'], 'Experimental data', 'Median')
xlabel('Time (days)')
ylabel('Number of hatching eggs')


    % Eggs 28

figure
hold on

stairs(TimeE28, IR_Eggs_28 * TotalEggs_28, '--', 'Color', 'blue', 'LineWidth', 1.25)
stairs(TimeLTE28, IR_LifeTab_Eggs_28 * TotalEggs_28, 'Color', 'red')
scatter(TimeUnits_Eggs_28, Eggs_28, 'filled', 'Color', 'green')
plot([ElabData_MedianEggs_28 ElabData_MedianEggs_28], [0 max(Eggs_28)], ...
      '--', 'Color', 'black', 'LineWidth', 1)
title('Eggs 28 °C')
legend('Impulsive response from real distribution', ['Impulsive response ' ...
       'from gaussian distribution'], 'Experimental data', 'Median')
xlabel('Time (days)')
ylabel('Number of hatching eggs')


    % Eggs 30

figure
hold on

stairs(TimeE30, IR_Eggs_30 * TotalEggs_30, '--', 'Color', 'blue', 'LineWidth', 1.25)
stairs(TimeLTE30, IR_LifeTab_Eggs_30 * TotalEggs_30, 'Color', 'red')
scatter(TimeUnits_Eggs_30, Eggs_30, 'filled', 'Color', 'green')
plot([ElabData_MedianEggs_30 ElabData_MedianEggs_30], [0 max(Eggs_30)], ...
      '--', 'Color', 'black', 'LineWidth', 1)
title('Eggs 30 °C')
legend('Impulsive response from real distribution', ['Impulsive response ' ...
       'from gaussian distribution'], 'Experimental data', 'Median')
xlabel('Time (days)')
ylabel('Number of hatching eggs')


    % Eggs 34

figure
hold on

stairs(TimeE34, IR_Eggs_34 * TotalEggs_34, '--', 'Color', 'blue', 'LineWidth', 1.25)
stairs(TimeLTE34, IR_LifeTab_Eggs_34 * TotalEggs_34, 'Color', 'red')
scatter(TimeUnits_Eggs_34, Eggs_34, 'filled', 'Color', 'green')
plot([ElabData_MedianEggs_34 ElabData_MedianEggs_34], [0 max(Eggs_34)], ...
      '--', 'Color', 'black', 'LineWidth', 1)
title('Eggs 34 °C')
legend('Impulsive response from real distribution', ['Impulsive response ' ...
       'from gaussian distribution'], 'Experimental data', 'Median')
xlabel('Time (days)')
ylabel('Number of hatching eggs')


    % Larva 18

figure
hold on

stairs(TimeL18, IR_Larvae_18 * TotalLarvae_18, '--', 'Color', 'blue', 'LineWidth', 1.25)
stairs(TimeLTL18, IR_LifeTab_Larvae_18 * TotalLarvae_18, 'Color', 'red')
scatter(TimeUnits_Larvae_18, Larvae_18, 'filled', 'Color', 'green')
plot([ElabData_MedianLarvae_18 ElabData_MedianLarvae_18], [0 max(Larvae_18)], ...
      '--', 'Color', 'black', 'LineWidth', 1)
title('Larvae 18 °C')
legend('Impulsive response from real distribution', ['Impulsive response ' ...
       'from gaussian distribution'], 'Experimental data', 'Median')
xlabel('Time (days)')
ylabel('Number of pupating larvae')


    % Larva 21

figure
hold on

stairs(TimeL21, IR_Larvae_21 * TotalLarvae_21, '--', 'Color', 'blue', 'LineWidth', 1.25)
stairs(TimeLTL21, IR_LifeTab_Larvae_21 * TotalLarvae_21, 'Color', 'red')
scatter(TimeUnits_Larvae_21, Larvae_21, 'filled', 'Color', 'green')
plot([ElabData_MedianLarvae_21 ElabData_MedianLarvae_21], [0 max(Larvae_21)], ...
      '--', 'Color', 'black', 'LineWidth', 1)
title('Larvae 21 °C')
legend('Impulsive response from real distribution', ['Impulsive response ' ...
       'from gaussian distribution'], 'Experimental data', 'Median')
xlabel('Time (days)')
ylabel('Number of pupating larvae')


    % Larva 24

figure
hold on

stairs(TimeL24, IR_Larvae_24 * TotalLarvae_24, '--', 'Color', 'blue', 'LineWidth', 1.25)
stairs(TimeLTL24, IR_LifeTab_Larvae_24 * TotalLarvae_24, 'Color', 'red')
scatter(TimeUnits_Larvae_24, Larvae_24, 'filled', 'Color', 'green')
plot([ElabData_MedianLarvae_24 ElabData_MedianLarvae_24], [0 max(Larvae_24)], ...
      '--', 'Color', 'black', 'LineWidth', 1)
title('Larvae 24 °C')
legend('Impulsive response from real distribution', ['Impulsive response ' ...
       'from gaussian distribution'], 'Experimental data', 'Median')
xlabel('Time (days)')
ylabel('Number of pupating larvae')


    % Larva 26

figure
hold on

stairs(TimeL26, IR_Larvae_26 * TotalLarvae_26, '--', 'Color', 'blue', 'LineWidth', 1.25)
stairs(TimeLTL26, IR_LifeTab_Larvae_26 * TotalLarvae_26, 'Color', 'red')
scatter(TimeUnits_Larvae_26, Larvae_26, 'filled', 'Color', 'green')
plot([ElabData_MedianLarvae_26 ElabData_MedianLarvae_26], [0 max(Larvae_26)], ...
      '--', 'Color', 'black', 'LineWidth', 1)
title('Larvae 26 °C')
legend('Impulsive response from real distribution', ['Impulsive response ' ...
       'from gaussian distribution'], 'Experimental data', 'Median')
xlabel('Time (days)')
ylabel('Number of pupating larvae')


    % Larva 28

figure
hold on

stairs(TimeL28, IR_Larvae_28 * TotalLarvae_28, '--', 'Color', 'blue', 'LineWidth', 1.25)
stairs(TimeLTL28, IR_LifeTab_Larvae_28 * TotalLarvae_28, 'Color', 'red')
scatter(TimeUnits_Larvae_28, Larvae_28, 'filled', 'Color', 'green')
plot([ElabData_MedianLarvae_28 ElabData_MedianLarvae_28], [0 max(Larvae_28)], ...
      '--', 'Color', 'black', 'LineWidth', 1)
title('Larvae 28 °C')
legend('Impulsive response from real distribution', ['Impulsive response ' ...
       'from gaussian distribution'], 'Experimental data', 'Median')
xlabel('Time (days)')
ylabel('Number of pupating larvae')


    % Larva 30

figure
hold on

stairs(TimeL30, IR_Larvae_30 * TotalLarvae_30, '--', 'Color', 'blue', 'LineWidth', 1.25)
stairs(TimeLTL30, IR_LifeTab_Larvae_30 * TotalLarvae_30, 'Color', 'red')
scatter(TimeUnits_Larvae_30, Larvae_30, 'filled', 'Color', 'green')
plot([ElabData_MedianLarvae_30 ElabData_MedianLarvae_30], [0 max(Larvae_30)], ...
      '--', 'Color', 'black', 'LineWidth', 1)
title('Larvae 30 °C')
legend('Impulsive response from real distribution', ['Impulsive response ' ...
       'from gaussian distribution'], 'Experimental data', 'Median')
xlabel('Time (days)')
ylabel('Number of pupating larvae')


    % Larva 34

figure
hold on

stairs(TimeL34, IR_Larvae_34 * TotalLarvae_34, '--', 'Color', 'blue', 'LineWidth', 1.25)
stairs(TimeLTL34, IR_LifeTab_Larvae_34 * TotalLarvae_34, 'Color', 'red')
scatter(TimeUnits_Larvae_34, Larvae_34, 'filled', 'Color', 'green')
plot([ElabData_MedianLarvae_34 ElabData_MedianLarvae_34], [0 max(Larvae_34)], ...
      '--', 'Color', 'black', 'LineWidth', 1)
title('Larvae 34 °C')
legend('Impulsive response from real distribution', ['Impulsive response ' ...
       'from gaussian distribution'], 'Experimental data', 'Median')
xlabel('Time (days)')
ylabel('Number of pupating larvae')


    % Pupa 18

figure
hold on

stairs(TimeP18, IR_Pupae_18 * TotalPupae_18, '--', 'Color', 'blue', 'LineWidth', 1.25)
stairs(TimeLTP18, IR_LifeTab_Pupae_18 * TotalPupae_18, 'Color', 'red')
scatter(TimeUnits_Pupae_18, Pupae_18, 'filled', 'Color', 'green')
plot([ElabData_MedianPupae_18 ElabData_MedianPupae_18], [0 max(Pupae_18)], ...
      '--', 'Color', 'black', 'LineWidth', 1)
title('Pupae 18 °C')
legend('Impulsive response from real distribution', ['Impulsive response ' ...
       'from gaussian distribution'], 'Experimental data', 'Median')
xlabel('Time (days)')
ylabel('Number of emerging adults')


    % Pupa 21

figure
hold on

stairs(TimeP21, IR_Pupae_21 * TotalPupae_21, '--', 'Color', 'blue', 'LineWidth', 1.25)
stairs(TimeLTP21, IR_LifeTab_Pupae_21 * TotalPupae_21, 'Color', 'red')
scatter(TimeUnits_Pupae_21, Pupae_21, 'filled', 'Color', 'green')
plot([ElabData_MedianPupae_21 ElabData_MedianPupae_21], [0 max(Pupae_21)], ...
      '--', 'Color', 'black', 'LineWidth', 1)
title('Pupae 21 °C')
legend('Impulsive response from real distribution', ['Impulsive response ' ...
       'from gaussian distribution'], 'Experimental data', 'Median')
xlabel('Time (days)')
ylabel('Number of emerging adults')


    % Pupa 24

figure
hold on

stairs(TimeP24, IR_Pupae_24 * TotalPupae_24, '--', 'Color', 'blue', 'LineWidth', 1.25)
stairs(TimeLTP24, IR_LifeTab_Pupae_24 * TotalPupae_24, 'Color', 'red')
scatter(TimeUnits_Pupae_24, Pupae_24, 'filled', 'Color', 'green')
plot([ElabData_MedianPupae_24 ElabData_MedianPupae_24], [0 max(Pupae_24)], ...
      '--', 'Color', 'black', 'LineWidth', 1)
title('Pupae 24 °C')
legend('Impulsive response from real distribution', ['Impulsive response ' ...
       'from gaussian distribution'], 'Experimental data', 'Median')
xlabel('Time (days)')
ylabel('Number of emerging adults')


    % Pupa 26

figure
hold on

stairs(TimeP26, IR_Pupae_26 * TotalPupae_26, '--', 'Color', 'blue', 'LineWidth', 1.25)
stairs(TimeLTP26, IR_LifeTab_Pupae_26 * TotalPupae_26, 'Color', 'red')
scatter(TimeUnits_Pupae_26, Pupae_26, 'filled', 'Color', 'green')
plot([ElabData_MedianPupae_26 ElabData_MedianPupae_26], [0 max(Pupae_26)], ...
      '--', 'Color', 'black', 'LineWidth', 1)
title('Pupae 26 °C')
legend('Impulsive response from real distribution', ['Impulsive response ' ...
       'from gaussian distribution'], 'Experimental data', 'Median')
xlabel('Time (days)')
ylabel('Number of emerging adults')


    % Pupa 28

figure
hold on

stairs(TimeP28, IR_Pupae_28 * TotalPupae_28, '--', 'Color', 'blue', 'LineWidth', 1.25)
stairs(TimeLTP28, IR_LifeTab_Pupae_28 * TotalPupae_28, 'Color', 'red')
scatter(TimeUnits_Pupae_28, Pupae_28, 'filled', 'Color', 'green')
plot([ElabData_MedianPupae_28 ElabData_MedianPupae_28], [0 max(Pupae_28)], ...
      '--', 'Color', 'black', 'LineWidth', 1)
title('Pupae 28 °C')
legend('Impulsive response from real distribution', ['Impulsive response ' ...
       'from gaussian distribution'], 'Experimental data', 'Median')
xlabel('Time (days)')
ylabel('Number of emerging adults')


    % Pupa 30

figure
hold on

stairs(TimeP30, IR_Pupae_30 * TotalPupae_30, '--', 'Color', 'blue', 'LineWidth', 1.25)
stairs(TimeLTP30, IR_LifeTab_Pupae_30 * TotalPupae_30, 'Color', 'red')
scatter(TimeUnits_Pupae_30, Pupae_30, 'filled', 'Color', 'green')
plot([ElabData_MedianPupae_30 ElabData_MedianPupae_30], [0 max(Pupae_30)], ...
      '--', 'Color', 'black', 'LineWidth', 1)
title('Pupae 30 °C')
legend('Impulsive response from real distribution', ['Impulsive response ' ...
       'from gaussian distribution'], 'Experimental data', 'Median')
xlabel('Time (days)')
ylabel('Number of emerging adults')


    % Pupa 34

figure
hold on

stairs(TimeP34, IR_Pupae_34 * TotalPupae_34, '--', 'Color', 'blue', 'LineWidth', 1.25)
stairs(TimeLTP34, IR_LifeTab_Pupae_34 * TotalPupae_34, 'Color', 'red')
scatter(TimeUnits_Pupae_34, Pupae_34, 'filled', 'Color', 'green')
plot([ElabData_MedianPupae_34 ElabData_MedianPupae_34], [0 max(Pupae_34)], ...
      '--', 'Color', 'black', 'LineWidth', 1)
title('Pupae 34 °C')
legend('Impulsive response from real distribution', ['Impulsive response ' ...
       'from gaussian distribution'], 'Experimental data', 'Median')
xlabel('Time (days)')
ylabel('Number of emerging adults')


% Second round of plots: simulations of the whole life cycle using the 
% composition of the transfer functions


    % 18 C

    % Plot Eggs

figure
hold on

stairs(TimeLifeCycleE18, IR_LifeCycleEggs_18, '--', 'Color', 'blue', ...
       'LineWidth', 1.25)
stairs(TimeLifeCycle_LifTab_E18, IR_LifeCycle_LifTab_Eggs_18, 'Color', ...
       'red')
bar(linspace(1, length(WLF_Eggs_18), length(WLF_Eggs_18)), WLF_Eggs_18, ...
       'g', 'FaceAlpha', 0.2, BarWidth = 0.3)

title('Eggs 18 °C')
legend('Impulsive response from real distribution', ['Impulsive response ' ...
       'from gaussian distribution'], 'Experimental data')
xlabel('Time (days)')
ylabel('Number of hatching eggs')

    % Plot Larvae

figure
hold on

stairs(TimeLifeCycleL18, IR_LifeCycleLarvae_18, '--', 'Color', 'blue', ...
       'LineWidth', 1.25)
stairs(TimeLifeCycle_LifTab_L18, IR_LifeCycle_LifTab_Larvae_18, 'Color', ...
       'red')
bar(linspace(1, length(WLF_Larvae_18), length(WLF_Larvae_18)), ...
             WLF_Larvae_18, 'g', 'FaceAlpha', 0.2, BarWidth = 0.3)

title('Larvae 18 °C')
legend('Impulsive response from real distribution', ['Impulsive response ' ...
       'from gaussian distribution'], 'Experimental data')
xlabel('Time (days)')
ylabel('Number of pupating larvae')

    % Plot Pupae

figure
hold on

stairs(TimeLifeCycleP18, IR_LifeCyclePupae_18, '--', 'Color', 'blue', ...
       'LineWidth', 1.25)
stairs(TimeLifeCycle_LifTab_P18, IR_LifeCycle_LifTab_Pupae_18, 'Color', ...
       'red')
bar(linspace(1, length(WLF_Pupae_18), length(WLF_Pupae_18)), ...
       WLF_Pupae_18, 'g', 'FaceAlpha', 0.2, BarWidth = 0.3)

title('Pupae 18 °C')
legend('Impulsive response from real distribution', ['Impulsive response ' ...
       'from gaussian distribution'], 'Experimental data')
xlabel('Time (days)')
ylabel('Number of emerging adults')


    % 21 C

    % Plot Eggs

figure
hold on

stairs(TimeLifeCycleE21, IR_LifeCycleEggs_21, '--', 'Color', 'blue', ...
       'LineWidth', 1.25)
stairs(TimeLifeCycle_LifTab_E21, IR_LifeCycle_LifTab_Eggs_21, 'Color', ...
       'red')
bar(linspace(1, length(WLF_Eggs_21), length(WLF_Eggs_21)), WLF_Eggs_21, ...
       'g', 'FaceAlpha', 0.2, BarWidth = 0.3)

title('Eggs 21 °C')
legend('Impulsive response from real distribution', ['Impulsive response ' ...
       'from gaussian distribution'], 'Experimental data')
xlabel('Time (days)')
ylabel('Number of hatching eggs')

    % Plot Larvae

figure
hold on

stairs(TimeLifeCycleL21, IR_LifeCycleLarvae_21, '--', 'Color', 'blue', ...
       'LineWidth', 1.25)
stairs(TimeLifeCycle_LifTab_L21, IR_LifeCycle_LifTab_Larvae_21, 'Color', ...
       'red')
bar(linspace(1, length(WLF_Larvae_21), length(WLF_Larvae_21)), ...
             WLF_Larvae_21, 'g', 'FaceAlpha', 0.2, BarWidth = 0.3)

title('Larvae 21 °C')
legend('Impulsive response from real distribution', ['Impulsive response ' ...
       'from gaussian distribution'], 'Experimental data')
xlabel('Time (days)')
ylabel('Number of pupating larvae')

    % Plot Pupae

figure
hold on

stairs(TimeLifeCycleP21, IR_LifeCyclePupae_21, '--', 'Color', 'blue', ...
       'LineWidth', 1.25)
stairs(TimeLifeCycle_LifTab_P21, IR_LifeCycle_LifTab_Pupae_21, 'Color', ...
       'red')
bar(linspace(1, length(WLF_Pupae_21), length(WLF_Pupae_21)), ...
       WLF_Pupae_21, 'g', 'FaceAlpha', 0.2, BarWidth = 0.3)

title('Pupae 21 °C')
legend('Impulsive response from real distribution', ['Impulsive response ' ...
       'from gaussian distribution'], 'Experimental data')
xlabel('Time (days)')
ylabel('Number of emerging adults')


    % 24 C

    % Plot Eggs

figure
hold on

stairs(TimeLifeCycleE24, IR_LifeCycleEggs_24, '--', 'Color', 'blue', ...
       'LineWidth', 1.25)
stairs(TimeLifeCycle_LifTab_E24, IR_LifeCycle_LifTab_Eggs_24, 'Color', ...
       'red')
bar(linspace(1, length(WLF_Eggs_24), length(WLF_Eggs_24)), WLF_Eggs_24, ...
       'g', 'FaceAlpha', 0.2, BarWidth = 0.3)

title('Eggs 24 °C')
legend('Impulsive response from real distribution', ['Impulsive response ' ...
       'from gaussian distribution'], 'Experimental data')
xlabel('Time (days)')
ylabel('Number of hatching eggs')

    % Plot Larvae

figure
hold on

stairs(TimeLifeCycleL24, IR_LifeCycleLarvae_24, '--', 'Color', 'blue', ...
       'LineWidth', 1.25)
stairs(TimeLifeCycle_LifTab_L24, IR_LifeCycle_LifTab_Larvae_24, 'Color', ...
       'red')
bar(linspace(1, length(WLF_Larvae_24), length(WLF_Larvae_24)), ...
             WLF_Larvae_24, 'g', 'FaceAlpha', 0.2, BarWidth = 0.3)

title('Larvae 24 °C')
legend('Impulsive response from real distribution', ['Impulsive response ' ...
       'from gaussian distribution'], 'Experimental data')
xlabel('Time (days)')
ylabel('Number of pupating larvae')

    % Plot Pupae

figure
hold on

stairs(TimeLifeCycleP24, IR_LifeCyclePupae_24, '--', 'Color', 'blue', ...
       'LineWidth', 1.25)
stairs(TimeLifeCycle_LifTab_P24, IR_LifeCycle_LifTab_Pupae_24, 'Color', ...
       'red')
bar(linspace(1, length(WLF_Pupae_24), length(WLF_Pupae_24)), ...
       WLF_Pupae_24, 'g', 'FaceAlpha', 0.2, BarWidth = 0.3)

title('Pupae 24 °C')
legend('Impulsive response from real distribution', ['Impulsive response ' ...
       'from gaussian distribution'], 'Experimental data')
xlabel('Time (days)')
ylabel('Number of emerging adults')


    % 26 C

    % Plot Eggs

figure
hold on

stairs(TimeLifeCycleE26, IR_LifeCycleEggs_26, '--', 'Color', 'blue', ...
       'LineWidth', 1.25)
stairs(TimeLifeCycle_LifTab_E26, IR_LifeCycle_LifTab_Eggs_26, 'Color', ...
       'red')
bar(linspace(1, length(WLF_Eggs_26), length(WLF_Eggs_26)), WLF_Eggs_26, ...
       'g', 'FaceAlpha', 0.2, BarWidth = 0.3)

title('Eggs 26 °C')
legend('Impulsive response from real distribution', ['Impulsive response ' ...
       'from gaussian distribution'], 'Experimental data')
xlabel('Time (days)')
ylabel('Number of hatching eggs')

    % Plot Larvae

figure
hold on

stairs(TimeLifeCycleL26, IR_LifeCycleLarvae_26, '--', 'Color', 'blue', ...
       'LineWidth', 1.25)
stairs(TimeLifeCycle_LifTab_L26, IR_LifeCycle_LifTab_Larvae_26, 'Color', ...
       'red')
bar(linspace(1, length(WLF_Larvae_26), length(WLF_Larvae_26)), ...
             WLF_Larvae_26, 'g', 'FaceAlpha', 0.2, BarWidth = 0.3)

title('Larvae 26 °C')
legend('Impulsive response from real distribution', ['Impulsive response ' ...
       'from gaussian distribution'], 'Experimental data')
xlabel('Time (days)')
ylabel('Number of pupating larvae')

    % Plot Pupae

figure
hold on

stairs(TimeLifeCycleP26, IR_LifeCyclePupae_26, '--', 'Color', 'blue', ...
       'LineWidth', 1.25)
stairs(TimeLifeCycle_LifTab_P26, IR_LifeCycle_LifTab_Pupae_26, 'Color', ...
       'red')
bar(linspace(1, length(WLF_Pupae_26), length(WLF_Pupae_26)), ...
       WLF_Pupae_26, 'g', 'FaceAlpha', 0.2, BarWidth = 0.3)

title('Pupae 26 °C')
legend('Impulsive response from real distribution', ['Impulsive response ' ...
       'from gaussian distribution'], 'Experimental data')
xlabel('Time (days)')
ylabel('Number of emerging adults')


    % 28 C

    % Plot Eggs

figure
hold on

stairs(TimeLifeCycleE28, IR_LifeCycleEggs_28, '--', 'Color', 'blue', ...
       'LineWidth', 1.25)
stairs(TimeLifeCycle_LifTab_E28, IR_LifeCycle_LifTab_Eggs_28, 'Color', ...
       'red')
bar(linspace(1, length(WLF_Eggs_28), length(WLF_Eggs_28)), WLF_Eggs_28, ...
       'g', 'FaceAlpha', 0.2, BarWidth = 0.3)

title('Eggs 28 °C')
legend('Impulsive response from real distribution', ['Impulsive response ' ...
       'from gaussian distribution'], 'Experimental data')
xlabel('Time (days)')
ylabel('Number of hatching eggs')

    % Plot Larvae

figure
hold on

stairs(TimeLifeCycleL28, IR_LifeCycleLarvae_28, '--', 'Color', 'blue', ...
       'LineWidth', 1.25)
stairs(TimeLifeCycle_LifTab_L28, IR_LifeCycle_LifTab_Larvae_28, 'Color', ...
       'red')
bar(linspace(1, length(WLF_Larvae_28), length(WLF_Larvae_28)), ...
             WLF_Larvae_28, 'g', 'FaceAlpha', 0.2, BarWidth = 0.3)

title('Larvae 28 °C')
legend('Impulsive response from real distribution', ['Impulsive response ' ...
       'from gaussian distribution'], 'Experimental data')
xlabel('Time (days)')
ylabel('Number of pupating larvae')

    % Plot Pupae

figure
hold on

stairs(TimeLifeCycleP28, IR_LifeCyclePupae_28, '--', 'Color', 'blue', ...
       'LineWidth', 1.25)
stairs(TimeLifeCycle_LifTab_P28, IR_LifeCycle_LifTab_Pupae_28, 'Color', ...
       'red')
bar(linspace(1, length(WLF_Pupae_28), length(WLF_Pupae_28)), ...
       WLF_Pupae_28, 'g', 'FaceAlpha', 0.2, BarWidth = 0.3)

title('Pupae 28 °C')
legend('Impulsive response from real distribution', ['Impulsive response ' ...
       'from gaussian distribution'], 'Experimental data')
xlabel('Time (days)')
ylabel('Number of emerging adults')


    % 30 C

    % Plot Eggs

figure
hold on

stairs(TimeLifeCycleE30, IR_LifeCycleEggs_30, '--', 'Color', 'blue', ...
       'LineWidth', 1.25)
stairs(TimeLifeCycle_LifTab_E30, IR_LifeCycle_LifTab_Eggs_30, 'Color', ...
       'red')
bar(linspace(1, length(WLF_Eggs_30), length(WLF_Eggs_30)), WLF_Eggs_30, ...
       'g', 'FaceAlpha', 0.2, BarWidth = 0.3)

title('Eggs 30 °C')
legend('Impulsive response from real distribution', ['Impulsive response ' ...
       'from gaussian distribution'], 'Experimental data')
xlabel('Time (days)')
ylabel('Number of hatching eggs')

    % Plot Larvae

figure
hold on

stairs(TimeLifeCycleL30, IR_LifeCycleLarvae_30, '--', 'Color', 'blue', ...
       'LineWidth', 1.25)
stairs(TimeLifeCycle_LifTab_L30, IR_LifeCycle_LifTab_Larvae_30, 'Color', ...
       'red')
bar(linspace(1, length(WLF_Larvae_30), length(WLF_Larvae_30)), ...
             WLF_Larvae_30, 'g', 'FaceAlpha', 0.2, BarWidth = 0.3)

title('Larvae 30 °C')
legend('Impulsive response from real distribution', ['Impulsive response ' ...
       'from gaussian distribution'], 'Experimental data')
xlabel('Time (days)')
ylabel('Number of pupating larvae')

    % Plot Pupae

figure
hold on

stairs(TimeLifeCycleP30, IR_LifeCyclePupae_30, '--', 'Color', 'blue', ...
       'LineWidth', 1.25)
stairs(TimeLifeCycle_LifTab_P30, IR_LifeCycle_LifTab_Pupae_30, 'Color', ...
       'red')
bar(linspace(1, length(WLF_Pupae_30), length(WLF_Pupae_30)), ...
       WLF_Pupae_30, 'g', 'FaceAlpha', 0.2, BarWidth = 0.3)

title('Pupae 30 °C')
legend('Impulsive response from real distribution', ['Impulsive response ' ...
       'from gaussian distribution'], 'Experimental data')
xlabel('Time (days)')
ylabel('Number of emerging adults')


    % 34 C

    % Plot Eggs

figure
hold on

stairs(TimeLifeCycleE34, IR_LifeCycleEggs_34, '--', 'Color', 'blue', ...
       'LineWidth', 1.25)
stairs(TimeLifeCycle_LifTab_E34, IR_LifeCycle_LifTab_Eggs_34, 'Color', ...
       'red')
bar(linspace(1, length(WLF_Eggs_34), length(WLF_Eggs_34)), WLF_Eggs_34, ...
       'g', 'FaceAlpha', 0.2, BarWidth = 0.3)

title('Eggs 34 °C')
legend('Impulsive response from real distribution', ['Impulsive response ' ...
       'from gaussian distribution'], 'Experimental data')
xlabel('Time (days)')
ylabel('Number of hatching eggs')

    % Plot Larvae

figure
hold on

stairs(TimeLifeCycleL34, IR_LifeCycleLarvae_34, '--', 'Color', 'blue', ...
       'LineWidth', 1.25)
stairs(TimeLifeCycle_LifTab_L34, IR_LifeCycle_LifTab_Larvae_34, 'Color', ...
       'red')
bar(linspace(1, length(WLF_Larvae_34), length(WLF_Larvae_34)), ...
             WLF_Larvae_34, 'g', 'FaceAlpha', 0.2, BarWidth = 0.3)

title('Larvae 34 °C')
legend('Impulsive response from real distribution', ['Impulsive response ' ...
       'from gaussian distribution'], 'Experimental data')
xlabel('Time (days)')
ylabel('Number of pupating larvae')

    % Plot Pupae

figure
hold on

stairs(TimeLifeCycleP34, IR_LifeCyclePupae_34, '--', 'Color', 'blue', ...
       'LineWidth', 1.25)
stairs(TimeLifeCycle_LifTab_P34, IR_LifeCycle_LifTab_Pupae_34, 'Color', ...
       'red')
bar(linspace(1, length(WLF_Pupae_34), length(WLF_Pupae_34)), ...
       WLF_Pupae_34, 'g', 'FaceAlpha', 0.2, BarWidth = 0.3)

title('Pupae 34 °C')
legend('Impulsive response from real distribution', ['Impulsive response ' ...
       'from gaussian distribution'], 'Experimental data')
xlabel('Time (days)')
ylabel('Number of emerging adults')