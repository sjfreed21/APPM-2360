function uVectors = orthoBasis(v1,v2)
uVectors = {[0;0],[0;0]};
uVectors{1} = v1/norm(v1);
v2O = v2 - (dot(uVectors{1},v2)*uVectors{1});
uVectors{2} = v2O/norm(v2O);
end