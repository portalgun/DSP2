B=Blk.get();
ind=ismember(B.opts.key,'disparity');
in=B.opts.table(:,ind);
B.opts.table(:,ind)=cellfun(@(x) {x{1}/60 x{2}/60}, in,'UniformOutput',false);

alias=Blk.getAlias;
dire=Blk.get_dir(alias);
table=B.opts.table;
key=B.opts.key;
dk
save([dire 'opts'],'table','key');
