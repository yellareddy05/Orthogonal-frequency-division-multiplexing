x=[0 0 0 1+i 1-i -1-i 1-i -1+i 1 1+i 1-i -1+i 1+i 1+i 0 0 zeros(1,240)].';
%User Defined Bit Sequence 11_10_00_10_01_11_10_01_11_11
az
yy=round ((ifft(x*2^15,256)));
yycp=[yy(193:end).',yy.'].';
plot(real(yy),'g');
hold on;
plot(imag(yy),'r');
fid=fopen('tx_signal_r.txt','w');
fprintf(fid,'%d,\n',real(yy));
fclose(fid);
fid=fopen('tx_signal_i.txt','w');
fprintf(fid,'%d,\n',imag(yy));
fclose(fid);
