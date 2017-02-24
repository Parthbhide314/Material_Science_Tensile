%% Aluminum Sample

% Plot Values for 0.002% Offset
x_2=0.002:0.0001:0.0375;
slope = (Al_StressPa(245)-Al_StressPa(1))/(Al_Strain(245)-Al_Strain(1));
y_2 = slope*(-0.002 + x_2);

% Modulus for Extensometer
slope_ex = (Al_StressPa(245)-Al_StressPa(1))/(Al_ExtensometerStrain(245)-Al_ExtensometerStrain(1));

% Plot Values for 0.002% Horizontal Line (Values Obtained from Graph)
x_h_2 = 0:0.0001:0.0375;
y_h_2 = 3.07*10^8*ones(length(x_h_2));

% Plot Values for Ultimate Strength
[max_n,  max_i] = max(Al_StressPa);
x_max_2 = 0:0.001:Al_Strain(max_i);
y_max_2 = max_n*ones(length(x_max_2));

% Plot Values for Fracture Strength
x_end = 0:0.001:Al_Strain(end);
y_end = Al_StressPa(end)*ones(length(x_end));

% Plot Values for Strain to Failure
y_end_2 = 0:1000000:Al_StressPa(end);
x_end_2 = Al_Strain(end)*ones(length(y_end_2));

% Resets Plot
hold off

% Plots Crosshead Stress v. Strain
plot(Al_Strain,Al_StressPa,'b-')
hold on

% Plots Extensometer Stress v. Strain
plot(Al_ExtensometerStrain,Al_StressPa,'r-')

% Plots
plot(x_2,y_2,'m--') % 0.002% Offset
plot(x_h_2,y_h_2,'m--') % 0.002% Horizontal
plot(x_max_2,y_max_2,'g--') % Ultimate Strength
plot(x_end,y_end,'k--') % Fracture Strength
plot(x_end_2,y_end_2,'k--') % Strain to Fracture

% Plot Aesthetics
legend('Crosshead','Extensometer','0.2% Offset','Location','Southeast')
xlabel('Strain')
ylabel('Stress (Pa)')
title('Tensile Test of an Aluminum Sample')

% Header
clc
fprintf('\n\nALUMINUM:\n')

% Modulus
fprintf('\nCrosshead Modulus: %g',slope)
fprintf('\nExtensometer Modulus: %g',slope_ex)

% Yield Strength
fprintf('\nYield Strength: %g',3.07*10^8)

% Untimate Strength
fprintf('\nUltimate Strength: %g',3.474532303842280e+08)

% Fracture Strength
fprintf('\nFracture Strength: %g',Al_StressPa(end))

% Strain to Failure
fprintf('\nStrain to Failure: %g',Al_Strain(end))

%% Polymer Sample

% Plot Values for 0.002% Offset
x_2=0.002:0.0001:0.0891;
slope = (P_StressPa(245)-P_StressPa(1))/(P_Strain(245)-P_Strain(1));
y_2 = slope*(-0.002 + x_2);

% Plot Values for 0.002% Horizontal Line
x_h_2 = 0:0.0001:0.0891;
y_h_2 = 6.637*10^7*ones(length(x_h_2));

% Plot Values for Ultimate Strength
[max_n,  max_i] = max(P_StressPa);
x_max_2 = 0:0.001:Al_Strain(max_i);
y_max_2 = max_n*ones(length(x_max_2));

% Plot Values for Fracture Strength
x_end = 0:0.001:P_Strain(end);
y_end = P_StressPa(end)*ones(length(x_end));

% Plot Values for Strain to Failure
y_end_2 = 0:1000000:P_StressPa(end);
x_end_2 = P_Strain(end)*ones(length(y_end_2));

% Resets Plot
hold off

% Plots Stress v. Strain
plot(P_Strain,P_StressPa,'b-')
hold on

% Plots
plot(x_2,y_2,'m--') % 0.002% Offset
plot(x_h_2,y_h_2,'m--') % 0.002% Horizontal
plot(x_max_2,y_max_2,'g--') % Ultimate Strength
plot(x_end,y_end,'k--') % Fracture Strength
plot(x_end_2,y_end_2,'k--') % Strain to Fractures

% Plot Aesthetics
legend('Crosshead','0.2% Offset','Location','Southeast')
xlabel('Strain')
ylabel('Stress (Pa)')
title('Tensile Test of a Polymer Sample')

% Header
clc
fprintf('POLYMER:\n')

% Modulus
fprintf('\nModulus: %g',slope)

% Yield Strength
fprintf('\nYield Strength: %g',6.637*10^7)

% Untimate Strength
fprintf('\nUltimate Strength: %g',6.984686570452793e+07)

% Fracture Strength
fprintf('\nFracture Strength: %g',P_StressPa(end))

% Strain to Failure
fprintf('\nStrain to Failure: %g\n\n',P_Strain(end))
