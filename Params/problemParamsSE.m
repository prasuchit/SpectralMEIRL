function problem = problemParamsSE(name)

problem.name      = name;
problem.iters     = 1;      %1:10;
problem.discount  = 0.99;
problem.nExps     = length(problem.iters);
problem.nExperts  = 1;    % # of experts
problem.nTrajs    = 10;    % # of trajectories
problem.nSteps    = 50;   % # of steps in each trajectory
problem.initSeed  = 1;    % initial random seed

if strcmp(name, 'gridworld')
    problem.gridSize  = 4;
    problem.blockSize = 1;
    problem.noise     = 0.3;
    problem.filename = sprintf('%s_%dx%d', name, ...
        problem.gridSize, problem.blockSize);
    
elseif strcmp(name, 'highway3')
    problem.filename = name;
    
end

