x=[0 0 0 1+i 1-i -1-i 1-i -1+i 1 1+i 1-i -1+i 1+i 1+i 0 0];
y=ifft(x,256);
papr=max(abs(real(y).^2+imag(y).^2))/mean(abs(real(y).^2+imag(y).^2))
