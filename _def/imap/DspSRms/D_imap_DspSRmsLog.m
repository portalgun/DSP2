%%%%%%%%%%%%%%%
%ALL
base.database='LRSI';
%base.imgNums=1:98;
%base.LorRorB='B';
base.mods=2:3;

%%%%%%%%%%%%%%%
%% Plot opts
plotOpts=struct();
plotOpts.bProg=1;
plotOpts.bSaveProg=1;

%%%%%%%%%%%%%%%
%% GEN - 2
gen=struct();
% type
type=struct();
type.name='disparity_contrast';
type.setParams=struct();
type.setParams.Wk=100;
type.setParams.kernSz=[32 32];
type.setParams.dnk=1;
type.setParams.dim=1;
type.setParams.winPosXYZm=[0 0 1]; % jburge-wheatstone
type.setParams.winWHm=[0.0178 0.0178]; % 1 deg jburge-wheatstone
gen.type=type;
gen.plotOpts=plotOpts;


%%%%%%%%%%%%%%%
%% BIN - 3
bin=struct();
bin.nBin=50;
bin.bLogBin=1;
% Package
bin.plotOpts=plotOpts;

