dtb='LRSI';
pchAlias='DSP2';
%hash='93c4a4c0401b69c04e5095578a22e708';

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
];

cmp=[ ...
        % -13.1250  -12.6562  -12.1875  -11.7188  -11.2500  -10.7812  -10.3125  -9.8438   -9.3750; ...
        % -11.2500  -10.7812  -10.3125  -9.8438   -9.3750   -8.9062   -8.4375   -7.9688   -7.5000; ...
        % -8.9062   -8.5547   -8.2031   -7.8516   -7.5000   -7.1484   -6.7969   -6.4453   -6.0938; ...
        % -7.0312   -6.6797   -6.3281   -5.9766   -5.6250   -5.2734   -4.9219   -4.5703   -4.2188; ...
        % -4.6875   -4.4531   -4.2188   -3.9844   -3.7500   -3.5156   -3.2812   -3.0469   -2.8125; ...
         % -13.2500     -12.2500    -11.2500    -10.2500    -9.2500;  ...

         % 4/28
         % -13.1250    -12.1875    -11.2500    -10.3125    -9.3750; ... % 0.9375
         % -11.2500    -10.3125    -9.3750     -8.4375     -7.5000; ...  % 0.9375
         % -8.9062     -8.2031     -7.5000     -6.7969     -6.0938; ...  % 0.7031
         % -7.0312     -6.3281     -5.6250     -4.9219     -4.2188; ...  % 0.7031
         % -4.6875     -4.2188     -3.7500     -3.2812     -2.8125; ... % 0.4687


         % 5/5/2012
          -14.9000    -13.250    -11.2500     -9.2500     -7.52500; ...  % 1.8750
          % -13.1250    -11.250    -9.37500     -7.5000     -5.6250; ...  % 1.8750
          -13.3750    -11.375    -9.37500     -7.37500     -5.3750; ...  % 2.000  left needs work
          % -10.0000    -8.7500    -7.50000     -6.2500     -5.0000; ...  % 1.2500
          -10.5000    -9.0000    -7.50000     -6.0000     -4.5000; ...  % 1.5000  left needs work
          -8.12500    -6.8750    -5.62500     -4.3750     -3.1250; ...  % 1.2500  GOOD
          -5.75000    -4.7500    -3.75000     -2.7500     -1.7500; ...  % 1.0000  GOOD
];


% 4/28
%bins=num2cell([5,7,9,11,13]); % XXX probably will change

% 5/5
%bins=num2cell([1,4,8,11,13]); % before 5-5-21
bins=num2cell([1,6,13,16,18]); %  5-5-21 to . % add 5

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
