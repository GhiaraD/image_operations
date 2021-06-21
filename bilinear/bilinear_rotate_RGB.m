function out = bilinear_rotate_RGB(img, rotation_angle)
    % =========================================================================
    % Aplica interpolare bilineara pentru a roti o imagine RGB cu un unghi dat.
    % =========================================================================
    
    % TODO: extrage canalul rosu al imaginii
    R = img(:, :, 1);
    
    % TODO: extrage canalul verde al imaginii
    G = img(:, :, 2);
    
    % TODO: extrage canalul albastru al imaginii
    B = img(:, :, 3);

    % TODO: aplica bilinear_rotate pe fiecare canal al imaginii
    R_new = bilinear_rotate(R, rotation_angle);
    G_new = bilinear_rotate(G, rotation_angle);
    B_new = bilinear_rotate(B, rotation_angle);

    % TODO: reconstruieste imaginea RGB finala (hint: cat)
    out = cat(3,R_new,G_new,B_new);
    
endfunction