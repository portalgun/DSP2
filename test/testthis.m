U=[3 5 4 1 2];
B=[4 2 2 2 3 5 5 1 4];
D=[80 90 100 111 120 130 150 160 170];
A=[3 5 5 4 4 1 2 2 2];
%[~,bb]=ismember(B,U);

%bbb=sort(bb);
%
%%C=U(bbb); % IS A
%[~,ind]=ismember(C,B);
%
%accumarray(B',1)


size(B)
size(U)

Lia = ismember(B,U);
idx=find(Lia);
map=bsxfun(@eq, B(idx),U(:));
for i = 1:size(map,1)
    bbb=sort(find(map(i,:)))
end
