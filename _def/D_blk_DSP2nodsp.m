dtb='LRSI';
%hash='4f8a8555861ed541982f1103fd788f29'; % XXX WILL CHANGE
hash='a8a3837c874442e61e3d901561ea9f01';

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
bins=num2cell([5,7,9,11,13]); % XXX probably will change

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
