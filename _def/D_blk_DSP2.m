dtb='LRSI';
pchAlias='DSP2';
pchExtraAlias='DSP2_add';

modes=[1:3];
nBlkPerDim=5; % XXX change to nBlk
nTrlPerLvl=100;
nIntrvlPerTrl=2;
repeats={'mode'};
mirror={};
pmirror={'disparity'};
sd=1;

% INDEPENDENT VARIABLES
dims={'disparity','bins'};
linked={ {}, ...
         {}, ...
       };

std=[ ...
        -11.2500; ...
        -9.3750; ...
        -7.5000; ...
        -5.6250; ...
        -3.7500; ...
]./60;


cmp=[ ...
...
         -14.5314  -12.8907  -11.2500   -9.6093   -7.9686;  % 1.6407 NEW SAME?
        -12.1876  -10.7813   -9.3750   -7.9687   -6.5624;  % 1.4063 *NEW
         -9.8438   -8.6719   -7.5000   -6.3281   -5.1562;  % 1.1719 *NEW
        -7.9688   -6.7969   -5.6250   -4.4531   -3.2812;   % 1.1719 *NEW
        -6.0938   -4.9219   -3.7500   -2.5781   -1.4062;   % 1.1719 Gd
...
]./60;


% 5/25
bins=[1,4,8,13,17];
%bins=[1,4,8,13,17];
%bins=1;  %XXX
bins=num2cell(bins);

% DISPARITY BETWEEN TARGET AND FOCUS
trgtDispOrWin='disp'; % relative to dispaly coordinates
trgtPosXYZm=[0 0 0];
focDispOrWin='disp'; % relative to dispaly coordinates
focPosXYZm=[0 0 0];

% STIM LOCATION
stmPosXYZm=[0 0 1]; % are winInfo
stmXYdeg=[1 1]; % maps to winWHDegRaw

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
bDSP=1;

%speed=[];
disparity=num2cell(permute([std cmp],[3,1,2]));

primaryXYZ='d';
bXYZSource=true;

primaryPht='s';
bPhtSource=true;

WszRCPixOffset=-2.14086; % XXX NOTE WHpix could be wrong
