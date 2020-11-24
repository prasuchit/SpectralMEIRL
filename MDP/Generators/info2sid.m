function sid = info2sid(spd, myx, Y, nS, nL, nG)

sid = spd;
sid = (sid - 1)*nL + myx;
for i = 1:nL
    sid = (sid - 1)*nG + Y(i);
end

end