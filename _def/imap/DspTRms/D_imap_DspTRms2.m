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
type.name='contrast';
type.setParams=struct();
type.setParams.Wk=100;
type.setParams.kernSz=[32 32];
type.setParams.imgName='gen.DspTRms';
gen.type=type;
gen.plotOpts=plotOpts;


%%%%%%%%%%%%%%%
%% BIN - 3
bin=struct();
bin.nBin=50;
bin.bLogBin=0;
% Package
bin.plotOpts=plotOpts;

