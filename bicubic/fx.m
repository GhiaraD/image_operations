function r = fx(f, x, y)
    % =========================================================================
    % Aproximeaza derivata fata de y a lui f in punctul (x, y).
    % =========================================================================
    
    % TODO: calculeaza derivata
    r = (f(y,x+1) - f(y,x-1)) / 2;

endfunction
