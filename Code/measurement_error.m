function [R_1, R_2] = measurement_error(Vsource, Rl, Rt)

i = Vsource/(Rl+Rt);

ddp_Rt = Rt*i;

R_1 = ddp_Rt/(Vsource/Rl);

R_2 = ddp_Rt/(Vsource/(Rl+R_1));

e = R_2/R_1;

end

