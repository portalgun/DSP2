%%%%%%%%%%%%%%%
%ALL
base.database='LRSI';
%base.imgNums=1:98;
%base.LorRorB='B';
base.mods=1:6;

%%%%%%%%%%%%%%%
%Plot opts
plotOpts=struct();
plotOpts.bProg=1;
plotOpts.bSaveProg=1;

%%%%%%%%%%%%%%%
%% VET - 1
vet=struct();
% DVN
dvn.PszXY=[129 129];
dvn.bVetAgainst=[1 1];
dvn.minCntrSep=[12 12];
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
type.name='disparity_contrast';
type.setParams=struct();
type.setParams.dnk=4;
type.setParams.Wk=100;
type.setParams.kernSz=[128 128];
gen.type=type;

typeL=struct();
typeL.name='disparity_contrast_2';
typeL.setParams=struct();
typeL.setParams.dnk=1;
typeL.setParams.Wk=100;
typeL.setParams.kernSz=[24 24];
typeL.minMax=[0 3];
gen.typeL=cell(2,1);
gen.typeL{1}=typeL;

typeL=struct();
typeL.name='disparity_contrast';
typeL.setParams=struct();
typeL.setParams.dnk=1;
typeL.setParams.Wk=100;
typeL.setParams.kernSz=[12 12];
typeL.minMax=[0 1];
gen.typeL{2}=typeL;

gen.plotOpts=plotOpts;

%%%%%%%%%%%%%%%
%% BIN - 3
bin=struct();
bin.nBin=50;
bin.bLogBin=1;
% Package
bin.plotOpts=plotOpts;

%%%%%%%%%%%%%%%
%% SMP - 4
smp=struct();
smp.PszXY=[128 128];
smp.rndSd=1;
smp.bSampleDouble=1;
smp.bBinOverlap=0;
smp.bCPoverlap=0;
smp.overlapPix=20;
smp.binNums=[15:50];
smp.priority='img';
% Package
smp.plotOpts=plotOpts;

%%%%%%%%%%%%%%%
%% PCH - 5
pch=struct();
pch.PszXY=[128 128];
pch.PszRCbuff=[150 150];
pch.mapNames={'pht','xyz'};
pch.mskNames=[];
pch.texNames=[];
pch.bStereo=1;
% Package
pch.plotOpts=plotOpts;

%%%%%%%%%%%%%%%
%% PCH_DMP - 6
% NO PARAMS

%%%%%%%%%%%%%%%
%% DMP - DSP

%%%%%%%%%%%%%%%
%% DSP - 8
% NO PARAMS

%%%%%%%%%%%%%%%
%% SEL - 8
