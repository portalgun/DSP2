
u=unique(P.ptchOpts.trgtInfo.trgtDsp);
hist(P.ptchOpts.trgtInfo.trgtDsp,u);

unique([P.Blk.blk('cmpInd').ret() P.ptchOpts.trgtInfo.trgtDsp],'rows')
P.Blk.blk('cmpNum').ret()
P.Blk.blk('intrvl').ret()

unique([P.Blk.blk('cmpInd').ret() P.ptchOpts.trgtInfo.trgtDsp P.Blk.blk('cmpNum').ret()],'rows')
