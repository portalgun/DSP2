defName='DSP2';
P=DSP2.load_ptchs();

nP=size(P.idx.flags,1);
P.idx.flags(randperm(nP,1000))=1;


P.replace_flagged(defName);
b=B.blk.ret();

P.apply_block_all(defName);
bo=P.Blk.blk.ret();

sum(replaceBinds);
sum(~prod(b==bo,2)); % number different, should be number of flags

sum(ismember(b(:,end), P.idx.P(logical(P.idx.flags)))); % should be 0
%get_selInd_table_blk_()
