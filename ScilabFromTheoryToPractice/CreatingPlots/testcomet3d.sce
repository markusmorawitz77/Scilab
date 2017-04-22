t=[0:0.01:10]';
clf;
comet3d(sin(t),cos(t),[t, cos(t) sin(t) ],"colors",[2 3 5])
