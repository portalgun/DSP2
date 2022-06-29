subj='DNW';
alias='DSP2';
bTest=0;
rule='';
mode=3;
blks=1:2;

lookup=Blk.load_lookup('DSP2');
%stds=lookup.lvl('disparity',1,5,'bins',1,5,'stdInd').ret();
stds=lookup.lvl('disparity',1,2,3,4,5,'bins',1,2,3,4,5,6,'stdInd').ret();
B=Blk.load(alias);
e=E(alias);

for b =1:length(blks)
for s =1:length(stds)
    blk=blks(b);
    std=stds(s);

    Bl=B.select_block(mode,std,blk);
    cmpX=Bl.get_cmpX();
    stdX=Bl.get_stdX();
    cmpIntrvl=Bl.get_cmpIntrvl();

    raw=e.load_block(subj,mode,std,blk);
    if isempty(raw)
        continue
    end
    exp=raw.exp;
    exp.RSP.cmpX=cmpX(:,1);
    exp.RSP.stdX=stdX(:,1);
    if all(ismember(cmpIntrvl,[1,2])) && any(ismember(cmpIntrvl,2))
        cmpIntrvl=cmpIntrvl-1;
    end
    exp.RSP.cmpIntrvl=cmpIntrvl;

    [r1,r2]=e.get_block_redo(subj,mode,std,blk);
    fname=e.gen_fname_block(subj,mode,std,blk,r1,r2);

    save(fname,'exp');
    %if s == 1
    %    continue
    %end
    %if b==1
    %    continue
    %end
end
end
