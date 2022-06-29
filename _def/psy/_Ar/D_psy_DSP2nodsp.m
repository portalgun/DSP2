lib='Psycho';
expType='viewer';

% TIMING
dOpts=struct();
    dOpts.nInterval=1; % N
    dOpts.bUseBg=1;
    dOpts.isi=0;
    dOpts.iti=0; % N
    dOpts.breakTime=0; % N
    dOpts.nCountDown=0;
    dOpts.countDownTime=0;
    dOpts.nReset=10;
    dOpts.bHideLastInterval=1;
    dOpts.loadRule='reset';

% INPUT
keyOpts=struct();
    keyOpts.keyDefName='key_defs_2AFC_DSP_rsp';
    keyOpts.bUseKeycaps=1;
    keyOpts.pauseLength=0.2;

% PTB
ptbOpts=struct();
    ptbOpts.blk=0;
    ptbOpts.wht=1;
    ptbOpts.gry=0.4;

% CROSSHAIRS
chOpts=struct();
    chOpts.parts={'o','+','x'};
    chOpts.bgColor=ptbOpts.gry;
    chOpts.plateRadius=[3 3];
    chOpts.plateShape='oval';
    chOpts.retLength=4;
    chOpts.retWidth=0.07;
    chOpts.retColor=ptbOpts.wht;
    chOpts.outRadius=[2 2];
    chOpts.outWidth=0.07;
    chOpts.outColor=ptbOpts.wht;
    chOpts.inRadius=[1 1];
    chOpts.inWidth=0.07;
    chOpts.inColor=ptbOpts.wht;

% TRIAL COUNTER
counterOpts=struct();
    counterOpts.bgColor=ptbOpts.gry;
    counterOpts.fgColor=ptbOpts.wht;
    counterOpts.relPosPRC='IBR';
    counterOpts.fontSize=30;

% STIM
stmInfoOpts=struct();
    %stmInfoOpts.font=
    stmInfoOpts.fontSize=20;
    stmInfoOpts.fgColor=1;
    stmInfoOpts.bgColor=0;
    stmInfoOpts.lineSpacing=5;
    stmInfoOpts.borderColor=ptbOpts.wht;
    stmInfoOpts.borderWidth=2;
    stmInfoOpts.borderPad=10;
    stmInfoOpts.borderFill=0;
    stmInfoOpts.padXY=[10,0];
    stmInfoOpts.relPosPRC='OML';

stmInfo2Opts=struct();
    %stmInfoOpts.font=
    stmInfo2Opts.fontSize=20;
    stmInfo2Opts.fgColor=1;
    stmInfo2Opts.bgColor=0;
    stmInfo2Opts.lineSpacing=5;
    stmInfo2Opts.borderColor=ptbOpts.wht;
    stmInfo2Opts.borderWidth=2;
    stmInfo2Opts.borderPad=10;
    stmInfo2Opts.borderFill=0;
    stmInfo2Opts.padXY=[10,0];
    stmInfo2Opts.relPosPRC='OMR';


hlpInfoOpts=struct();
    hlpInfoOpts.fontSize=15;
    hlpInfoOpts.fgColor=1;
    hlpInfoOpts.bgColor=0;
    hlpInfoOpts.lineSpacing=0;
    hlpInfoOpts.borderColor=ptbOpts.wht;
    hlpInfoOpts.borderWidth=2;
    hlpInfoOpts.borderPad=10;
    hlpInfoOpts.borderFill=0;
    hlpInfoOpts.padXY=[10,0];
    hlpInfoOpts.relPosPRC='OML';
