%% funktion zur Errechnung von Drehzahlen aus VC d und Zahnzahl

function n = rpm(vc, d, z)

% vc = pi * d * n * z (vc in Meter/min)
% mit den Variablen:
% d = Durchmesser (in mm)
% n = Drehzahl (in upm)
% z = Zähnezahl

n = vc / ( pi * d*10^-3 * z);