%--------------------------------------------------------------------------
% IX1303: PROJEKTUPPGIFT 1, Linjära ekvationssystem
%
% Detta är en template.
% Ni ska fylla i koden som efterfrågas och svara på frågorna.
% Notera att alla svar på frågor måste skrivas på raden som börjar med "%".
%--------------------------------------------------------------------------

clear all

%--------------------------------------------------------------------------
% PROBLEM 1: Numeriska beräkningar av determinanter.
M1 = [1, 4 
      2, 8];

M2 = [1, 4/3; 1.1, 4.4/3];

determinanten_av_M1 = det(M1);            % Byt ut "0"
determinanten_av_M2 = det(M2);            % Byt ut "0"

% (a) Varför blir inte båda determinanterna exakt noll?
% SVAR: Floating point calculation error, det finns en oexakthet i
% operationer med tal representerade som floating point.

% (b) Använd beräkningen för determinanterna ovan får att uppskatta hur
%     stora fel kan vi förvänta oss vid beräkning av determinanter?
% SVAR: ungefär fel på 2,445*10^-16


%--------------------------------------------------------------------------
% PROBLEM 2: Matrisinverser

m1 = [ 2; 4; 19];           % Byt ut "0"
m2 = [ 1; 1; 1];            % Byt ut "0"
m3 = cross(m1, m2)         % Byt ut "[]"
M  = [m1, m2 ,m3];

% (a) Vad är vinkeln mellan m1 och m3?
% SVAR: 90 grader

% (b) Vad är vinkeln mellan m2 och m3?
% SVAR: 90 grader

% (c)	Är de tre vektorerna linjärt oberoende?
% SVAR: Ja, de måste vara det så länge m1 och m2 är det, eftersom kryss
% produkten av m1 m2 alltid kommer vara vinkelrät mot m1 och m2.


determinanten_av_M = 0;             % Byt ut "0"

%	(d) Vad är determinanten av matrisen M? Använd funktionen "det".
% SVAR: Determinanten är ??

%	(e) Vilket påstående i "invertable matrix theorem", från Lay's bok, ska
%     man använda tillsammans med svaret i c) för att avgöra om matrisen 
%     M är inverterbar?
% SVAR: ---skriv ditt svar här---

% (f) Vilket påstående i "invertable matrix theorem", från Lay's bok, ska
%     man använda tillsammans med svaret i d) för att avgöra om matrisen
%     M är inverterbar?
% SVAR: ---skriv ditt svar här---


inversen_av_M = [];               % Byt ut "[]"

%	(g) Använd Matlab's funktion inv för att beräkna inversen av matrisen M.
%     Är svaret från inv rimligt?
% SVAR: ---skriv ditt svar här---


%--------------------------------------------------------------------------
% PROBLEM 3: Matrisers rank och nollrum

m1 = [  1; 2; 3];
m2 = [ -1; 2; 1];
m3 = [];                % Byt ut "[]"
m4 = [];                % Byt ut "[]"
M4 = [m1, m2, m3, m4];

% (a) Vad har matrisen M4 för rang? Använd funktionen "rank".
% SVAR: ---skriv ditt svar här---

% (b) Hur många pivotkolumner och hur många fria variabler har M4?
%     Notera att detta är relaterat till matrisens rang.
% SVAR: ---skriv ditt svar här---


bas_till_nollrummmet_for_M4 = [];            % Byt ut "[]"

% (b) Vad är nollrummet till M4? För detta kan du använda funktionen null.
%     Notera att svaret måste skrivas på ett matematiskt korrekt sätt, så
%     att det beskriver ett vektorrum. Svaret kan skrivas som en mening,
%     eller med matematisk notation. Talen i vektorerna kan avrundas till
%     att ha fyra decimaler.
% SVAR: ---skriv ditt svar här---


%--------------------------------------------------------------------------
% PROBLEM 4: Ekvationssystem med många obekanta
%
% List över antalet frihetsgrader (värden på n) som ska studeras.
% Här har vi alltså fyra olika fall som ska studeras, först n=3,
% sen n=100, sen n=1000 och till sist n=10000.
nList = [3, 100, 1000, 10000];

% Initiera tidsvektorerna. Här sätter vi alla värden till noll, men inne i
% looper ska ni sätta in den tid det tog att lösa ekvationssystemet.
T_mldivide = zeros(size(nList));
T_inv      = zeros(size(nList));

% Loop över de olika frihetsgraderna.
% Loopen innebär att koden mellan "for" och "end" kommer att köras 4 gånger
% (eftersom length(nList)=4), först med i=1, sen i=2, i=3 och i=4.
for i=1:length(nList)

  % Här skapar vi en variabel n. Värdet på n är 3 först gången vi går
  % igenom loopen, sen 100, 1000 och 10000.
  % Värdet på n är antalet dimensioner hos ekvationssystemet vi ska lösa.
  n=nList(i);

  %----- SKRIV KOD: Skapa nxn matrisen A -----
  %   Här är A=I-C, där C=kR och R är en matris med slumptal
  %   mellan 0 och 1. För att A ska vara inverterbar använder vi k=0.9/n
  k=0.9/n;

  R = 0;            % Byt ut "0"
  C = 0;            % Byt ut "0"
  A = 0;            % Byt ut "0"
  
  
  %----- SKRIV KOD:Skapa kolumn-vektorn b -----
  b = 0;            % Byt ut "0"
  
  
  tic;
  %----- SKRIV KOD: Lös ekvationssystemet med mldivide -----
  losning_med_mldivide = 0;             % Byt ut "0"
  
  tid_mldivide(i)=toc;
  
  
  tic;
  %----- SKRIV KOD: Lös ekvationssystemet med inv -----
  losning_med_inv = 0;                  % Byt ut "0"
  
  tid_inv(i)=toc;
  
  
  %----- SKRIV KOD: Beräkna relativa skillnaden mellan lösningarna
  %                 från mldivide och inv                          -----
  relativa_skillnaden = 0;              % Byt ut "0"
end


figure; hold on
%----- SKRIV KOD: Rita första figuren -----
% plot( ?? , ?? )

figure; hold on
%----- SKRIV KOD: Rita andra figuren -----
% plot( ?? , ?? )


% Frågor:
% (a) Antag att du ska lösa ett problem med tre obekanta en eller ett par
%     gånger. Hur väljer du metod? Är det viktigt att välja rätt metod?
% SVAR: ---skriv ditt svar här---

% (b) Antag att du ska lösa ett problem med tre obekanta 10 000 gånger.
%     Hur väljer du metod? Är det viktigt att välja rätt metod?
% SVAR: ---skriv ditt svar här---

% (c) Antag att du ska lösa ett problem med 10 000 obekanta en eller ett
%     par gånger. Hur väljer du metod? Är det viktigt att välja rätt metod?
% SVAR: ---skriv ditt svar här---

% (d) Kör om alla räkningar tre gånger. Varför får du olika resultat varje
%     gång du kör programmet?
% SVAR: ---skriv ditt svar här---

% (e) Hur stor är den relativa skillnaden i beräkningstid mellan de två
%     metoderna för 10 000 obekanta?
% SVAR: ---skriv ditt svar här---
