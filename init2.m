close all   
clear
clc
% str2='total\bhachanikeyinda\incorrect\bhachanigeyinda.wav'
% str1='total\bhachanikeyinda\correct\bhachanikeyinda.wav'

% str1='total\ektari\correct\ektari.wav';
% str2='total\ektari\incorrect\ekdari_2.wav';


% 
% % str1='total\m_1.wav';
% str1='total\m_2.wav';

% str1='total\aditya\correct\aditya.wav';%?
% str2='total\aditya\incorrect\adittta.wav';

% str1='total\aitihasika\correct\aitihazika.wav';%da
% str2='total\aitihasika\incorrect\adihasika.wav';

% str1='total\akarshaka\correct\akashaka.wav';%gd
% str2='total\akarshaka\incorrect\agadshaka_2.wav';

%  str1='total\anchige\correct\anchage.wav';%gd
%  str2='total\anchige\incorrect\panchage.wav';

%  str1='total\atttake\correct\attakke_2.wav';%?
%  str2='total\atttake\incorrect\attage.wav';

%  str1='total\avignawagi\correct\avignawagi_2_denoised.wav';%gd
%  str2='total\avignawagi\incorrect\avishyawagi_denoised.wav';

%  str1='total\avignawagi\correct\avignawagi_3.wav';%not good
%  str2='total\avignawagi\incorrect\havignawagi.wav';

% str1='total\balipetadamele\correct\balipeethada_(2).wav';%gd
% str2='total\balipetadamele\incorrect\balibeethada_2.wav';

% str1='total\bhachanikeyinda\correct\bhachanikeyinda.wav';%gd
% str2='total\bhachanikeyinda\incorrect\bhachanigeyinda.wav'

% str1='total\daguttade\correct\aguttade_2.wav';%not good 
% str2='total\daguttade\incorrect\atuttade.wav';

% str1='total\deepagamba\correct\deepagamba.wav';%gd
% str2='total\deepagamba\incorrect\deepakamba_denoised.wav';

% str1='total\dhanasannu\correct\shivadhanasannu.wav';%gd
% str2='total\dhanasannu\incorrect\shivadhasasannu.wav'

% str1='total\dharawahi\correct\daravahi_3.wav';%gd
% str2='total\dharawahi\incorrect\dharavagi.wav';

% str1='total\duryodhana\correct\duryodhana.wav';%gd
% str2='total\duryodhana\incorrect\duryodtana_2.wav';

% str1='total\egarisida\incorrect\hegarisida_4.wav';%not good
% str2='total\egarisida\correct\egarisida_5.wav';

%  str1='total\ektari\correct\ektari_denoised.wav';%gd
%  str2='total\ektari\incorrect\ekdari_4.wav';

% str1='total\galante\correct\galante.wav';%gd
% str2='total\galante\incorrect\galive.wav';

% str1='total\gonda_hole\correct\gonda.wav';%not good
% str2='total\gonda_hole\incorrect\konda.wav';%even if zcr is great dtw is
% not working

% str1='total\habba\correct\habba.wav';%gd
% str2='total\habba\incorrect\happa.wav';

% str1='total\hindugalige\correct\hindugalige_2.wav';%dtw problem
% str2='total\hindugalige\incorrect\indugalige.wav';

% str1='total\hiriarige\correct\hiriarige.wav';%bad example
% str2='total\hiriarige\incorrect\idihariyege.wav';
 
% str1='total\huttuguna\correct\huttuguna_(2).wav';%gd
% str2='total\huttuguna\incorrect\hudduguna.wav';

% str1='total\kachaguli\correct\kachaguli_2.wav';%gd
% str2='total\kachaguli\incorrect\kachakuli.wav';

% str1='total\kalaha\correct\kalaha_(2).wav';%bad example
% str2='total\kalaha\incorrect\kalada.wav';%aa sound dominates
 
% str1='total\kasagi\correct\khasagi.wav';%gd
% str2='total\kasagi\incorrect\gasagi.wav';

% str1='total\kasagi\incorrect\gasaki.wav';%assimilation at front
% str2='total\kasagi\incorrect\kasaki_2.wav';%although zcr seems to work ok.
 
% str1='total\kayile\correct\kayile_2.wav';%gd
% str2='total\kayile\incorrect\gayile_denoised.wav';

% str1='total\kelasakke\correct\kelasakke.wav';%gd
% str2='total\kelasakke\incorrect\kelasagge.wav';

% str1='total\kobannu\correct\kobbannu.wav';%zcr seems to work
% str2='total\kobannu\incorrect\obbannu_4.wav';

% str1='total\krurasimha\correct\krurasimha_1.wav';%bad example
% str2='total\krurasimha\incorrect\1.wav';

% str1='total\kulirgalige\correct\kulirgalige_3.wav';%not good but segment normalization make it good
% str2='total\kulirgalige\incorrect\kulirgalike.wav';

% str1='total\maditu\correct\maditu.wav';%gd
% str2='total\maditu\incorrect\madidu_denoised.wav';

% str1='total\mahabharatdalli\correct\mahabharatadalli.wav';%gd
% str2='total\mahabharatdalli\incorrect\mavabharatadalli_denoised.wav';

% str1='total\mahanavami\correct\mahanamavi.wav';%da
% str2='total\mahanavami\incorrect\mamavahani.wav';

% str1='total\maragattuttade\correct\maragattuttade_2.wav'%gd
% str2='total\maragattuttade\incorrect\maragattuddade.wav'

% str1='total\meyutittu\correct\meyutittu.wav'%gd better with segment normalization
% str2='total\meyutittu\incorrect\meyutiddu.wav';

% str1='total\nadiyitu\correct\nadiyitu.wav';%gd
% str2='total\nadiyitu\incorrect\nadiyidu_denoised.wav';

% str1='total\oupacharika\correct\oukacharika.wav';%not good but good with segment normalization
% str2='total\oupacharika\incorrect\oukacharina.wav';

% str1='total\pataragitti\correct\pataragitti.wav';%gd not goodwith seg-nor
% str2='total\pataragitti\incorrect\pataragiddi.wav';

% str1='total\phaladayaka\correct\phaladayaka_2.wav';%gd
% str2='total\phaladayaka\incorrect\palakayaka.wav';

str1='total\pitrupakya\correct\pitruwakya.wav';
str2='total\pitrupakya\incorrect\pitrupakya.wav';





[y1,Fs1,bit1]=wavread(str1);
[y2,Fs2,bit2]=wavread(str2);
% plot(y1);
% figure
% plot(y2);
Tw = 30;                % analysis frame duration (ms)
Ts = 15;                % analysis frame shift (ms)
player1=audioplayer(y1,Fs1);
player2=audioplayer(y2,Fs2);