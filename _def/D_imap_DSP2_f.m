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
%% VET - 1
vet=struct();
% DVN
dvn.PszXY=[33 33];
dvn.bVetAgainst=[1 1];
dvn.minCntrSep=[3 3];
vet.dvn=dvn;

% XYZnan
xyzNan.PszXY=[33 33];
xyzNan.bVetAgainst=[1 1];
xyzNan.minCntrSep=[3 3];
vet.xyzNan=xyzNan;


%%%%%%%%%%%%%%%
%% GEN - 2
gen=struct();
% type
type=struct();
type.name='@DspRmsDnk4';
type.setParams=struct();
type.setParams.dnk=1;
type.setParams.Wk=100;
type.setParams.kernSz=[128 128]; % note
gen.type=type;

typeL=struct();
typeL.name='@DspRms2Dnk4';
typeL.minMax=[0 3]; % XXX
gen.typeL=cell(2,1);
gen.typeL{1}=typeL;

typeL=struct();
typeL.name='@DspRmsDnk4';
typeL.setParams=struct();
typeL.minMax=[0 1]; % XXX
gen.typeL{2}=typeL;

% Package
gen.plotOpts=plotOpts;

%%%%%%%%%%%%%%%
%% BIN - 3
bin=struct();
bin.nBin=50;
bin.bLogBin=1;
% Package
bin.plotOpts=plotOpts;

