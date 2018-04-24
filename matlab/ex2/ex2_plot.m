figure
plot(1:number_of_iteration,jmax)
title('Graph of Jmax')
xlabel('iteration')
ylabel('Jmax')
path_e0 = strcat('../../figs/ex2_','jmax','.eps');
print(path_e0,'-depsc2','-painters')

figure
plot(1:number_of_iteration,jmin)
title('Graph of Jmin')
xlabel('iteration')
ylabel('Jmin')
path_e0 = strcat('../../figs/ex2_','jmin','.eps');
print(path_e0,'-depsc2','-painters')

figure
plot(1:number_of_iteration,jmean)
title('Graph of Jmean')
xlabel('iteration')
ylabel('Jmean')
path_e0 = strcat('../../figs/ex2_','jmean','.eps');
print(path_e0,'-depsc2','-painters')