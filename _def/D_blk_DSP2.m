dtb='LRSI';
hash='4f8a8555861ed541982f1103fd788f29'; % XXX WILL CHANGE

modes=[1:3];
nBlkPerLvl=5;
nTrlPerLvl=100;
nIntrvlPerTrl=2;
sd=1;

% INDEPENDENT VARIABLES
dims={'disparity','bins'};

std=[ ...
        -11.2500;
        -9.3750;
        -7.5000;
        -5.6250;
        -3.7500;
];

cmp=[ ...
        -13.1250  -12.6562  -12.1875  -11.7188  -11.2500  -10.7812  -10.3125  -9.8438   -9.3750; ...
        -11.2500  -10.7812  -10.3125  -9.8438   -9.3750   -8.9062   -8.4375   -7.9688   -7.5000; ...
        -8.9062   -8.5547   -8.2031   -7.8516   -7.5000   -7.1484   -6.7969   -6.4453   -6.0938; ...
        -7.0312   -6.6797   -6.3281   -5.9766   -5.6250   -5.2734   -4.9219   -4.5703   -4.2188; ...
        -4.6875   -4.4531   -4.2188   -3.9844   -3.7500   -3.5156   -3.2812   -3.0469   -2.8125; ...
]; % XXX MIGHT CHANGE


disparity=num2cell(permute([std cmp],[3,1,2]));
speed=[];
bins={35:39}; % XXX probably will change

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
wdwPszRCT       = 'PszRC';
wdwrmpDm        = 'PszRC';
wdwDskDm        = 0.5;
wdwsymInd       = 1;

% "Map" properties
rmsFix=0.14;
dcFix=0.4;
dnkFix=1;
