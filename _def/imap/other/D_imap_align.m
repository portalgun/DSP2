%%%%%%%%%%%%%%%
%ALL
%base.alias='test_all'
base.database='LRSI';
%base.imgNums=1:98;
%base.LorRorB='B';
base.mods=2;

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
type.name='range_image_alignment';
type.setParams=struct();
type.setParams.kernSz=[32 32];
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

