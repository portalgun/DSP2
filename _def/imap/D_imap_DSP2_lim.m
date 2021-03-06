%%%%%%%%%%%%%%%
%ALL
base.database='LRSI';
%base.imgNums=1:98;
%base.LorRorB='B';
base.mods=2:6;

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
type.setParams.kernSz=[32 32];
gen.type=type;

typeL=struct();
typeL.name='disparity_contrast2';
typeL.setParams=struct();
typeL.setParams.dnk=1;
typeL.setParams.Wk=100;
typeL.setParams.kernSz=[6 6];
typeL.minMax=[0 3];
gen.typeL=type;

% Package
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
smp.PszXY=[32 32];
smp.rndSd=1;
smp.bSampleDouble=1;
smp.bBinOverlap=0;
smp.bCPoverlap=0;
smp.overlapPix=0;
smp.binNums=[15:49];
smp.priority='img';
% Package
smp.plotOpts=plotOpts;

%%%%%%%%%%%%%%%
%% PCH - 5
pch=struct();
pch.maxSmpPerImg=5;
pch.PszXY=[32 32];
pch.PszRCbuff=[50 50];
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
