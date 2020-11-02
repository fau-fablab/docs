\ProvidesClass{fablab-brief}

% Benutzung siehe brief-beispiel.tex in diesem Verzeichnis!

\PassOptionsToClass{\CurrentOption}{scrartcl} % Optionen wie landscape an scrartcl weitergeben
\LoadClass[%
  version=first % Stabilitaet bei Aenderungen von 'scrlttr2'
]{scrlttr2}

%%%%%%%%%%%%%%%%%%%%%% Pakete %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\usepackage[T1]{fontenc} % Umbrueche bei deutschen Umlauten, Schriftsatzerweiterung
\usepackage[utf8x]{inputenc} % Direkte Eingabe deutscher Umlaute
\usepackage[ngerman]{babel} % Deutsche Trennung, deutschsprachiges Format
\usepackage{blindtext}
\usepackage{graphicx}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\usepackage[babel,german=quotes]{csquotes} %\enquote{...} für deutsche Anführungszeichen um ein Wort
\usepackage{eurosym}

\newcommand{\briefDir}{\basedir/vorlagen/brief}

%%%%%%%%%%%%%%%%%%%%%% Fakultaet %%%%%%%%%%%%%%%%%%%%%%%%%%%%
% An dieser Stelle werden fakultaetsspezifische Einstellungen
% getroffen.
%
% Welcher Fakultaet gehoere ich an?
\newcommand*{\fromdepartment}{tech}%\newcommand*{\fromdepartment}{template}
%
% Moegliche Werte sind:
%   TAG            FAKULTAET
% ------------------------------------------------------------
% fau        FAU allgemein
% med        Medizinische Fakultaet
% nat        Naturwissenschaftliche Fakultaet
% philtheo   Philosophische Fakultaet und Fachbereich Theologie
% recht      Fachbereich Rechtswissenschaft
% rechtwirt  Rechts- und Wirtschaftswissenschaftliche Fakultaet
% tech       Technische Fakultaet
% wirtschaft Fachbereich Wirtschaftswissenschaften
% template	 Template Logo eines abstrakten Fachbereichs zu Testzwecken
% ------------------------------------------------------------
%
% Wird der Brief farbig oder schwarz-weiss gedruckt?
% coloredlogo = true => Farbige Logos
% coloredlogo = false => Schwarz-weiss Logos
\newcommand{\coloredlogo}{true}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%%%%%%%%%%%%%%%%%%%%%% FAU-Design %%%%%%%%%%%%%%%%%%%%%%%%%%%
\LoadLetterOption{\briefDir/faudesign} % Laden des FAU-Stylefiles
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Benoetige ich ein Lehrstuhl-Logo?
% Wenn ja, soll es im Kopf erscheinen?
\setkomavar{departmentlogohead}{\includegraphics[width=70mm]{\briefDir/logo}}
% Oder im Fuss? -- In diesem Fall kann kein Partnerlogo verwandt werden!
%\setkomavar{departmentlogofoot}{\vspace{-0.8cm}\includegraphics[height=20mm]{logo}}
%
% Sollte das Alignment aufgrund weisser Ecken des Logos nicht passen
% so kann manuell mittels \vspace, \hspace nachjustiert werden.
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


% Hier folgt der eigentliche Briefinhalt

%%%%%%%%%%%%%%%%%%%%%% Absender %%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Ruecksendeadresse des Absenders
\setkomavar{backaddress}{Lehrstuhl für Informatik 3, FAU FabLab, Martensstr. 3, 91058 Erlangen}
% Funktion des Absenders (% Wenn kein Lehrstuhl angegeben wird)
%\setkomavar{fromfunction}{FAU FabLab}
% Lehrstuhl des Absenders
\setkomavar{fromdepartment}{FAU FabLab}
% Name des Absenders
\setkomavar{fromname}{}
% Signatur des Absenders, falls abweichend von Name des Absenders
\ifkomavar{fromname}
	{\setkomavar{signature}{\usekomavar{fromname}\\FAU FabLab}}
	{\setkomavar{signature}{FAU FabLab}}
% Strasse des Absenders
\setkomavar{fromstreet}{c/o Lehrstuhl für Informatik 3\\Martensstr. 3}
% Stadt des Absenders
\setkomavar{fromcity}{91058 Erlangen} 
% Telefonnummer des Absenders
\setkomavar{fromphone}{}
% VORSICHT: Die meisten Empfänger erwarten, dass man unter dieser Nummer gut erreichbar ist. Im Zweifelsfall lieber keine Nummer angeben.
%\setkomavar{fromphone}{Telefon +49 9131 85-28013}
% Faksimile des Absenders
%\setkomavar{fromfax}{Fax +49 9131 85-2xxxx} 
% Email des Absenders
\setkomavar{fromemail}{kontakt@fablab.fau.de}
% Internetpraesenz des Absenders 
\setkomavar{fromurl}{www.fablab.fau.de}
% Aktenzeichen des Empfaengers
%\setkomavar{yourref}{Ihr Zeichen }
% Bezugnehmend auf Nachricht des Empfaengers
%\setkomavar{yourmessage}{Ihre Nachricht vom }
% Aktenzeichen des Absenders
%\setkomavar{myref}{Unser Zeichen }
% Ort des Absenders
\setkomavar{place}{Erlangen}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%%%%%%%%%%%%%%%%%%%%%% Empfaenger %%%%%%%%%%%%%%%%%%%%%%%%%%%
% Department des Empfaengers
\setkomavar{todepartment}{}
% Titel, Vor- und Zuname des Empfaengers
\setkomavar{tofullname}{}
% Abteilung des Empfaengers
\setkomavar{tobureau}{}
% Strasse des Empfaengers
\setkomavar{tostreet}{}
% Stadt des Empfaengers
\setkomavar{tocity}{}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%%%%%%%%%%%%%%%%%%%%%% Betreff %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Betreff
\setkomavar{subject}{}
% Datum, 'faudate' ersetzt 'date'
\setkomavar{faudate}{\today}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
