base.database='LRSI';
%base.imgNums=1:98;
%base.LorRorB='B';
base.mods=2:6;

%%%%%%%%%%%%%%%
%% Plot opts
plotOpts=struct();
plotOpts.bProg=1;
plotOpts.bSaveProg=1;

%%%%%%%%%%%%%%%
%% VET - 1
vet=struct();


%%%%%%%%%%%%%%%
%% GEN - 2
gen=struct();

type=struct();
type.name='copy';
type.setParams.imgName='gen.DspRms';
gen.type=type;
gen.plotOpts=plotOpts;
gen.typeL=cell(2,1);

    %%% MAIN CONSTRAINTS
    %% nDVN SMALL
    typeL=struct();
    typeL.name='copy';
    typeL.setParams.imgName='gen.nDvnSmall';
    typeL.minMax=[0 0];
    gen.typeL{1}=typeL;

    typeL=struct();
    typeL.name='copy';
    typeL.setParams.imgName='gen.DspRmsSmall4';
    typeL.minMax=[1*10^-5 0.006]; % XXX
    gen.typeL{2}=typeL;


    %%%% Z Rms
    %typeL=struct();
    %typeL.name='@ZRms';
    %typeL.minMax=[0 3]; % XXX
    %gen.typeL=cell(2,1);
    %gen.typeL{1}=typeL;

    %typeL=struct();
    %typeL.name='@ZRmsSmall';
    %typeL.minMax=[0 3]; % XXX
    %gen.typeL=cell(2,1);
    %gen.typeL{1}=typeL;

    %typeL=struct();
    %typeL.name='@ZRms2';
    %typeL.minMax=[0 3]; % XXX
    %gen.typeL=cell(2,1);
    %gen.typeL{1}=typeL;


    %%%% DVN
    %%% nDVN
    %typeL=struct();
    %typeL.name='@nDVN';
    %typeL.minMax=[0 3]; % XXX
    %gen.typeL=cell(2,1);
    %gen.typeL{1}=typeL;
    %% Package
    %gen.plotOpts=plotOpts;

    %%% nDVNreg
    %typeL=struct();
    %typeL.name='@nDVNReg';
    %typeL.minMax=[0 3]; % XXX
    %gen.typeL=cell(2,1);
    %gen.typeL{1}=typeL;
    %% Package
    %gen.plotOpts=plotOpts;

    %%% magDVN
    %typeL=struct();
    %typeL.name='@magDVN';
    %typeL.minMax=[0 3]; % XXX
    %gen.typeL=cell(2,1);
    %gen.typeL{1}=typeL;
    % Package




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
smp.PszXY=[32 32]; % NOTE
smp.rndSd=1;
smp.bSampleDouble=1;
smp.bBinOverlap=0;
smp.bCPoverlap=0;
smp.overlapPix=0;
%smp.binNums=[27:39]; % befoe 5-5-21
%smp.binNums=[22:41]; % 5-5-21 to 5-12
%smp.binNums=[19 21 23 25 27:41]; % XXX
smp.binNums=[19 25 30 35 39]; % XXX DIFFERENT
smp.preFname='/Volumes/Data/.daveDB/imap/all/d7688d789dbae46fccee9888162cb451/_smp_pre_.mat';
smp.priority='cumu'; % cumu, img, bins
% Package
smp.plotOpts=plotOpts;

%%%%%%%%%%%%%%%
%% Tbl - 5
tbl=struct();
tbl.limBinMin=2500;
tbl.maxSmpPerImg=0;
tbl.PszXY=[32 32]; % NOTE
tbl.PszRCbuff=[50 50]; % NOTE
tbl.mapNames={'pht','xyz'};
tbl.mskNames=[];
tbl.texNames=[];
tbl.bStereo=1;
tbl.appendToAlias='DSP2';
% Package
tbl.plotOpts=plotOpts;
tbl.maxSmpPerImg=100;
tbl.bRmExtra=true;

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
