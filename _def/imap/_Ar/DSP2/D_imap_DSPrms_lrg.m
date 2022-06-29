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
type.setParams.kernSz=[128 128];
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

%%%%%%%%%%%%%%%
%% SMP - 4
smp=struct();
smp.PszXY=[128 128];
smp.rndSd=1;
smp.bSampleDouble=1;
smp.bBinOverlap=0;
smp.bCPoverlap=0;
smp.overlapPix=5;
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
