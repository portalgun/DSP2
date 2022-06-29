function out=fldsMatchDims(S,dim,n)
% n is dim size to match, if zero, any dim
    list=cell(0,2);
    out=match_fun(S,dim,n,'',list);
    names=cellfun(@split_fun, out(:,1),'UniformOutput',false);
    out(:,1)=names;
end
function out=split_fun(in)
    out=strsplit(in,'__');
end
function list=match_fun(S,dim,n,parents,list)
    flds=fieldnames(S);
    for i = 1:length(flds)
        fld=flds{i};
        if ~isempty(parents)
            name=[parents '__' fld];
        else
            name=fld;
        end
        if isstruct(S.(fld))
            list=match_fun(S.(fld),dim,n,name,list);
        elseif (n==0 && any(size(S.(fld))==n)) || (n~=0 && size(S.(fld),dim)==n)
            list{end+1,1}=name;
            list{end,2}=true;
        else
            list{end+1,1}=name;
            list{end,2}=false;
        end
    end
end
