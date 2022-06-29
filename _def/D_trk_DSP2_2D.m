hashAlias='DSP2';
prjCode='DSP2';
imgDTB='LRSI';
natORflt='flt'; %NOTE
imgDim='2D';
method='2IFC';
prjInd=[1 1];
pass=1;
subjs={'DNW','JDB'};
pAuthor='DNW';
description='';
language='matlab';
expHost='wheatstone';
Xname={'disparity','disparity contrast'};
Xunits={'arcmin','au'};
description='Disparity contrast experiments, binned by disparity contrast';

rnd_bBlk=1;
rnd_bTrl=0;
rnd_bIntrvl=0;


% MAP
hashes=ImapCommon.alias2hashes(hashAlias,imgDTB);
% XXX MAKE UPPER CASE
