%for all descriptors
[idx,scores] = fscmrmr(Xlog,Y);
bar(scores(idx));
xlabel('Fearure rank')
ylabel('Feature importance score')
xticks([1:21])
xticklabels((Xlog.Properties.VariableNames(idx)))
xticklabels(90)
xticklabels((Xlog.Properties.VariableNames(idx)))
xtickangle(90)

%for patial descriptors
writematrix(idx,'Index for mrmr all.csv');
[idxv,scoresv] = fscmrmr(Xrv,Y);
bar(scoresv(idxv));
xlabel('Fearure rank')
ylabel('Feature importance score')
xticks([1:21])
xticklabels((Xrv.Properties.VariableNames(idxv)))
xtickangle(90)
idxv

%for horizontal bar plot and d name descriptors
[idxd,scoresd] = fscmrmr(X,Y);
reverse_idxd=flip(idxd)
barh(scoresd(reverse_idxd));
ylabel('Descriptor d_j')
xlabel('Feature importance score')
yticks([1:21])
yticklabels((X.Properties.VariableNames(reverse_idxd)))

%for horizontal bar plot and d name descriptors (removed data)
[idxdv,scoresdv] = fscmrmr(X_rv,Y);
reverse_idxdv=flip(idxdv)
barh(scoresdv(reverse_idxdv));
ylabel('Descriptor d_j')
xlabel('Feature importance score')
yticks([1:19])
yticklabels((X_rv.Properties.VariableNames(reverse_idxdv)))
