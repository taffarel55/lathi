function [y] = sinc(x);
  y = ones(size(x)); i = find(x~=0);
  y(i) = sin(x(i))./x(i);
endfunction
