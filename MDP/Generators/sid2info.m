function [spd, myx, Y] = sid2info(sid, nSpeeds, nL, nG)

tid = sid - 1;
Y = zeros(1,nL);
for i = nL:-1:1
    if tid == (3071)
        fprintf("We hit it: %f");
    end
    Y(i) = mod(tid, nG) + 1;
    tid = (tid - Y(i) + 1)/nG;
end
myx = mod(tid, nL) + 1;
% if myx >= 3
%     fprintf("We hit it: %f",myx)
% end
tid = (tid - myx + 1)/nL;
spd = mod(tid, nSpeeds) + 1;

end