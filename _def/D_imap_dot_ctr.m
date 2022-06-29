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
%%%%%%%%%%%%%%%%
%% GEN - 2
gen=struct();

type=struct();
type.name='pht_dot';
type.setParams=struct();
type.setParams.kernSz=[3 3];
type.setParams.bPixelCtrs=true;
gen.type=type;
gen.plotOpts=plotOpts;

