%%%%%%%%%%%%%%%
%ALL
base.database='LRSI';
%base.imgNums=1:98;
%base.LorRorB='B';
base.mods=2;

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
type.name='magDvn';
type.setParams=struct();
type.setParams.kernSz=[7 7];
type.setParams.thresh=0;
gen.type=type;
gen.plotOpts=plotOpts;

