%%%%%%%%%%%%%%%
%ALL
base.database='LRSI';
%base.imgNums=1:98;
%base.LorRorB='B';
base.mods=2:3;

%%%%%%%%%%%%%%%
%Plot opts
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
type.setParams.dnk=1;
type.setParams.Wk=100;
type.setParams.kernSz=[6 6];
% Package
gen.type=type;
gen.plotOpts=plotOpts;

%%%%%%%%%%%%%%%
%% BIN - 3
bin=struct();
bin.nBin=50;
bin.bLogBin=1;
% Package
bin.plotOpts=plotOpts;

