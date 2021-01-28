clc;
clear all;

% tampilkan 1-10 bilangan gajil
for i=1:10
    if(mod(i,2) ~= 0)
        display(i+" Bilangan Ganjil")
    end
end

% tampilkan 1-10 bilangan genap
for i=1:10
    if(mod(i,2) == 0)
        display(i+" Bilangan Genap")
    end
end

s = input('Masukkan Nomor : ');
hasil = cekGenapGanjil_func(s);
display(s+" adalah bilangan "+hasil)