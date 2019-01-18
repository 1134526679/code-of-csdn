figure(1)
Teta1=Theta(:,2);
Teta2=Teta1*180/pi;
Teta3=Teta2(1:8000);
Teta=Teta3(1:3:end);
Flux1=Amplitude(:,2);
Flux2=Flux1(1:8000);
Flux=Flux2(1:3:end);
x=Flux.*cos(Teta);
y=Flux.*sin(Teta);
plot(x,y);
xlabel('X');
ylabel('Y');
title('��������');

figure(2)
plot(N.time(1:50000),N.signals.values(1:50000),'k');
grid on
xlabel('Times(s)');
ylabel('SVPMW����');
title('SVPMW����N������');

figure(3)
plot(Tcm.time(1:50000),Tcm.signals.values(1:50000));
grid on
xlabel('Times(s)');
ylabel('ʱ��Tcm');
title('SVPWM�л���ʱ��Tcm');


figure(4)
plot(Ua.time(1:50000),Ua.signals.values(1:50000),'k');
grid on
xlabel('Times(s)');
ylabel('SVPWM������ѹUa');
title('SVPWM������ѹUa');

% figure(5)
% plot(Uab.time(1:50000),Uab.signals.values(1:50000),'k');
% grid on
% xlabel('Times(s)');
% ylabel('SVPWM����ߵ�ѹUAB');
% title('SVPWM����ߵ�ѹUAB');


figure(6)
plot(Iabc.time,Iabc.signals.values,'k');
grid on
xlabel('Times(s)');
ylabel('iabc(A)');
title('������ඨ�ӵ���'); 

figure(7)
plot(Speed.time,Speed.signals.values,'k');
grid on
xlabel('Times(s)');
ylabel('n(rpm)');
title('������ת��');

figure(8)
plot(Te.time,Te.signals.values,'k');
grid on
xlabel('Times(s)');
ylabel('Te TL(N��m)');
title('������ת��');

% figure(4)
% plot(Uabc.time,Uabc.signals.values,'k');
% grid on
% xlabel('Times(s)');
% ylabel('�����ѹ');
% title('SVPWM��������ѹ');
% 
% figure(8)
% plot(UABC.time,UABC.signals.values,'k');
% grid on
% xlabel('Times(s)');
% ylabel('SVPWM���Uabc');
% title('SVPWM��������ߵ�ѹ');
