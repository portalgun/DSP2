expType='2IFC';

dOpts=struct();
    dOpts.nInterval=2;
    dOpts.bUseBg=1;
    dOpts.isi=.250;
    dOpts.iti=.5;
    dOpts.breakTime=2;
    dOpts.nCountDown=3;
    dOpts.countDownTime=1;
    dOpts.nReset=10;
    dOpts.bHideLastInterval=1;

keyOpts=struct();
    keyOpts.keyDefName='key_defs_2AFC_DSP_rsp';
    keyOpts.bUseKeycaps=1;
    keyOpts.pauseLength=.2;

ptbOpts=struct();
    ptbOpts.blk=0;
    ptbOpts.wht=1;
    ptbOpts.gry=.4;

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

counterOpts=struct();
    counterOpts.bgColor=ptbOpts.gry;
    counterOpts.fgColor=ptbOpts.wht;
    counterOpts.relPosPRC='IBR';
    counterOpts.fontSize=30;

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
