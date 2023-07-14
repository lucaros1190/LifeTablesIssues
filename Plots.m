
% Script for plotting the results of LTI system - Corcyra case
% Created by Luca Rossini on 22 July 2022
% Last update 2 June 2023
% e-mail luca.rossini@unitus.it

% This script is recalled by 'Script_impulse_resp.m'

% Plotting the impulsive responses obtained by the non scaled data
% Note: that this plot is referred only to 21, 26, 28 and 30 °C, even if
% the script calculated all the temperatures.

% Making plots for the manuscript

    % FIGURE 1

    % Larva 26

figure
hold on

plot(TimeLTL26, IR_LifeTab_Larvae_26 * TotalLarvae_26, 'Color', 'red')
bar(TimeUnits_Larvae_26, Larvae_26, 'g', 'FaceAlpha', 0.2, BarWidth = 0.3)
title('Larvae 26 °C')
legend(['Gaussian distribution'], 'Experimental data')
xlabel('Time (days)')
ylabel('Number of pupating larvae')


    % FIGURE 2

    % Eggs 21

figure

subplot(4,3,1);

hold on

stairs(TimeE21, IR_Eggs_21 * TotalEggs_21,  '-.', 'Color', 'blue', 'LineWidth', 1.25)
stairs(TimeLTE21, IR_LifeTab_Eggs_21 * TotalEggs_21, 'Color', 'red')
plot([ElabData_MedianEggs_21 ElabData_MedianEggs_21], [0 max(Eggs_21)], ...
      '-', 'Color', 'green', 'LineWidth', 1.5)
title('Eggs 21 °C')
legend('Experimental data', ['Gaussian approximation'], 'Median')
xlabel('Time (days)')
ylabel('Number of hatching eggs')

hold off

    % Eggs 26

subplot(4,3,4);

hold on

stairs(TimeE26, IR_Eggs_26 * TotalEggs_26, '-.', 'Color', 'blue', 'LineWidth', 1.25)
stairs(TimeLTE26, IR_LifeTab_Eggs_26 * TotalEggs_26, 'Color', 'red')
plot([ElabData_MedianEggs_26 ElabData_MedianEggs_26], [0 max(Eggs_26)], ...
      '-', 'Color', 'green', 'LineWidth', 1.5)
title('Eggs 26 °C')
xlabel('Time (days)')
ylabel('Number of hatching eggs')

hold off

    % Eggs 28

subplot(4,3,7);

hold on

stairs(TimeE28, IR_Eggs_28 * TotalEggs_28, '-.', 'Color', 'blue', 'LineWidth', 1.25)
stairs(TimeLTE28, IR_LifeTab_Eggs_28 * TotalEggs_28, 'Color', 'red')
plot([ElabData_MedianEggs_28 ElabData_MedianEggs_28], [0 max(Eggs_28)], ...
      '-', 'Color', 'green', 'LineWidth', 1.5)
title('Eggs 28 °C')
xlabel('Time (days)')
ylabel('Number of hatching eggs')

hold off

    % Eggs 30

subplot(4,3,10);

hold on

stairs(TimeE30, IR_Eggs_30 * TotalEggs_30, '-.', 'Color', 'blue', 'LineWidth', 1.25)
stairs(TimeLTE30, IR_LifeTab_Eggs_30 * TotalEggs_30, 'Color', 'red')
plot([ElabData_MedianEggs_30 ElabData_MedianEggs_30], [0 max(Eggs_30)], ...
      '-', 'Color', 'green', 'LineWidth', 1.5)
title('Eggs 30 °C')
xlabel('Time (days)')
ylabel('Number of hatching eggs')

hold off

    % Larva 21

subplot(4,3,2);

hold on

stairs(TimeL21, IR_Larvae_21 * TotalLarvae_21, '-.', 'Color', 'blue', 'LineWidth', 1.25)
stairs(TimeLTL21, IR_LifeTab_Larvae_21 * TotalLarvae_21, 'Color', 'red')
plot([ElabData_MedianLarvae_21 ElabData_MedianLarvae_21], [0 max(Larvae_21)], ...
      '-', 'Color', 'green', 'LineWidth', 1.5)
title('Larvae 21 °C')
xlabel('Time (days)')
ylabel('Number of pupating larvae')

hold off

    % Larva 26

subplot(4,3,5);

hold on

stairs(TimeL26, IR_Larvae_26 * TotalLarvae_26, '-.', 'Color', 'blue', 'LineWidth', 1.25)
stairs(TimeLTL26, IR_LifeTab_Larvae_26 * TotalLarvae_26, 'Color', 'red')
plot([ElabData_MedianLarvae_26 ElabData_MedianLarvae_26], [0 max(Larvae_26)], ...
      '-', 'Color', 'green', 'LineWidth', 1.5)
title('Larvae 26 °C')
xlabel('Time (days)')
ylabel('Number of pupating larvae')

hold off

    % Larva 28

subplot(4,3,8);

hold on

stairs(TimeL28, IR_Larvae_28 * TotalLarvae_28, '-.', 'Color', 'blue', 'LineWidth', 1.25)
stairs(TimeLTL28, IR_LifeTab_Larvae_28 * TotalLarvae_28, 'Color', 'red')
plot([ElabData_MedianLarvae_28 ElabData_MedianLarvae_28], [0 max(Larvae_28)], ...
      '-', 'Color', 'green', 'LineWidth', 1.5)
title('Larvae 28 °C')
xlabel('Time (days)')
ylabel('Number of pupating larvae')

hold off

    % Larva 30

subplot(4,3,11);

hold on

stairs(TimeL30, IR_Larvae_30 * TotalLarvae_30, '-.', 'Color', 'blue', 'LineWidth', 1.25)
stairs(TimeLTL30, IR_LifeTab_Larvae_30 * TotalLarvae_30, 'Color', 'red')
plot([ElabData_MedianLarvae_30 ElabData_MedianLarvae_30], [0 max(Larvae_30)], ...
      '-', 'Color', 'green', 'LineWidth', 1.5)
title('Larvae 30 °C')
xlabel('Time (days)')
ylabel('Number of pupating larvae')

hold off

    % Pupa 21

subplot(4,3,3);

hold on

stairs(TimeP21, IR_Pupae_21 * TotalPupae_21, '-.', 'Color', 'blue', 'LineWidth', 1.25)
stairs(TimeLTP21, IR_LifeTab_Pupae_21 * TotalPupae_21, 'Color', 'red')
plot([ElabData_MedianPupae_21 ElabData_MedianPupae_21], [0 max(Pupae_21)], ...
      '-', 'Color', 'green', 'LineWidth', 1.5)
title('Pupae 21 °C')
xlabel('Time (days)')
ylabel('Number of emerging adults')

hold off

    % Pupa 26

subplot(4,3,6);

hold on

stairs(TimeP26, IR_Pupae_26 * TotalPupae_26, '-.', 'Color', 'blue', 'LineWidth', 1.25)
stairs(TimeLTP26, IR_LifeTab_Pupae_26 * TotalPupae_26, 'Color', 'red')
plot([ElabData_MedianPupae_26 ElabData_MedianPupae_26], [0 max(Pupae_26)], ...
      '-', 'Color', 'green', 'LineWidth', 1.5)
title('Pupae 26 °C')
xlabel('Time (days)')
ylabel('Number of emerging adults')

hold off

    % Pupa 28

subplot(4,3,9);

hold on

stairs(TimeP28, IR_Pupae_28 * TotalPupae_28, '-.', 'Color', 'blue', 'LineWidth', 1.25)
stairs(TimeLTP28, IR_LifeTab_Pupae_28 * TotalPupae_28, 'Color', 'red')
plot([ElabData_MedianPupae_28 ElabData_MedianPupae_28], [0 max(Pupae_28)], ...
      '-', 'Color', 'green', 'LineWidth', 1.5)
title('Pupae 28 °C')
xlabel('Time (days)')
ylabel('Number of emerging adults')

hold off

    % Pupa 30

subplot(4,3,12);

hold on

stairs(TimeP30, IR_Pupae_30 * TotalPupae_30, '-.', 'Color', 'blue', 'LineWidth', 1.25)
stairs(TimeLTP30, IR_LifeTab_Pupae_30 * TotalPupae_30, 'Color', 'red')
plot([ElabData_MedianPupae_30 ElabData_MedianPupae_30], [0 max(Pupae_30)], ...
      '-', 'Color', 'green', 'LineWidth', 1.5)
title('Pupae 30 °C')
xlabel('Time (days)')
ylabel('Number of emerging adults')

hold off


    % FIGURE 3 - Subplots 21 °C


    % Plot Eggs

figure

subplot(3,1,1);

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

hold off

    % Plot Larvae

subplot(3,1,2);

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

hold off

    % Plot Pupae

subplot(3,1,3);

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

hold off


    % FIGURE 4 - Subplots 26 °C


    % Plot Eggs

figure

subplot(3,1,1);

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

hold off

    % Plot Larvae

subplot(3,1,2);

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

hold off

    % Plot Pupae

subplot(3,1,3);

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

hold off


    % FIGURE 5 - Subplots 28 °C
  

    % Plot Eggs

figure

subplot(3,1,1);

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

hold off

    % Plot Larvae

subplot(3,1,2);

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

hold off

    % Plot Pupae

subplot(3,1,3);

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

hold off


        % FIGURE 6 - Subplots 30 °C


    % Plot Eggs

figure

subplot(3,1,1);

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

hold off

    % Plot Larvae

subplot(3,1,2);

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

hold off

    % Plot Pupae

subplot(3,1,3);

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

hold off


    
