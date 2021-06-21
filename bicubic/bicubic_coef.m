function A = bicubic_coef(f, Ix, Iy, Ixy, x1, y1, x2, y2)
    % =========================================================================
    % Calculeaza coeficientii de interpolare bicubica pentru 4 puncte alaturate
    % =========================================================================

    % TODO: calculeaza matricile intermediare
    interm1 = [1 0 0 0; 0 0 1 0; -3 3 -2 -1; 2 -2 1 1];
    
    f_mic   = [f(y1,x1)   f(y1,x2);   f(y2,x1)   f(y2,x2)];
    Ix_mic  = [Ix(y1,x1)  Ix(y1,x2);  Ix(y2,x1)  Ix(y2,x2)];
    Iy_mic  = [Iy(y1,x1)  Iy(y1,x2);  Iy(y2,x1)  Iy(y2,x2)];
    Ixy_mic = [Ixy(y1,x1) Ixy(y1,x2); Ixy(y2,x1) Ixy(y2,x2)];
    
    interm2 = [f_mic Ix_mic; Iy_mic Ixy_mic];

    % TODO: converteste matricile intermediare la double
    interm1 = double(interm1);
    interm2 = double(interm2);

    % TODO: calculeaza matricea finala
    A = interm1 * interm2' * interm1';

endfunction