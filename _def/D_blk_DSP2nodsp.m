dtb='LRSI';
pchAlias='DSP2';
%hash='93c4a4c0401b69c04e5095578a22e708';

modes=1;
nBlkPerLvl=5;
nTrlPerLvl=5000;
nIntrvlPerTrl=1;
repeats={'mode'};
sd=1;

% INDEPENDENT VARIABLES
dims={'bins'};
linked={ {}, ...
         {}, ...
       };

disparity=0;
%speed=[];
bins=num2cell([5,7,9,11,13]); % smp bins . add 14 rm 7?
% 31    33    35    37    39 bin bin

% DISPARITY BETWEEN TARGET AND FOCUS
trgtDispOrWin='disp'; % relative to dispaly coordinates
trgtPosXYZm=[0 0 0];
focDispOrWin='disp'; % relative to dispaly coordinates
focPosXYZm=[0 0 0];

% STIM LOCATION
stmPosXYZm=[0 0 0];
stmXYdeg=[1 1];

% VIEW WINDOW
wdwType         = 'COS';
wdwPszRCT       = '@PszRC';
wdwRmpDm        = '@PszRC';
wdwDskDm        = 0.5;
wdwSymInd       = [1 1];

% "Map" properties
rmsFix=0.14;
dcFix=0.4;
dnkFix=1;

duration=0.250;
