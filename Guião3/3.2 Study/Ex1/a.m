
% a state transition matrix example
H = [0.8 0   0 0.3 0
     0.2 0.6 0 0.2 0
     0   0.3 1 0   0
     0   0.1 0 0.4 0
     0   0   0 0.1 1];

t = [0 0 0];
t2 = [0 0];
nOfIterations = 10000;
soma = 0;
soma3 = 0;
soma5 = 0;
for i = 1:1:nOfIterations
    state = crawl(H, 1, [3, 5]);
    soma = soma + length(state)-1;
    if state(length(state)) == 3 && state(1) == 1
        soma3 = soma3 + 1;
    end
    if state(length(state)) == 5 && state(1) == 1
        soma5 = soma5 + 1;
    end
end
t(1)=soma/nOfIterations;

soma = 0;
for i = 1:1:nOfIterations
    state = crawl(H, 2, [3, 5]);
    soma = soma + length(state)-1;
    if state(length(state)) == 3 && state(1) == 1
        soma3 = soma3 + 1;
    end
    if state(length(state)) == 5 && state(1) == 1
        soma5 = soma5 + 1;
    end
end
t(2)=soma/nOfIterations;

soma = 0;
for i = 1:1:nOfIterations
    state = crawl(H, 4, [3, 5]);
    soma = soma + length(state)-1;
    if state(end) == 3 && state(1) == 1
        soma3 = soma3 + 1;
    end
    if state(end) == 5 && state(1) == 1
        soma5 = soma5 + 1;
    end
end
t(3)=soma/nOfIterations;
t
t2(1) = soma3/nOfIterations;
t2(2) = soma5/nOfIterations;
t2


% how to use crawl()
% state = crawl(H, 1, 3)
% Note:
% if the Markov chain has more than 1 absorbing state the third argument % must be a vector with the absorbing states
% for example in a chain with 5 states and considering that
% states 4 and 5 are absorbing states:
% state = crawl(H5, 1, [4 5])
%
% Random walk on the Markov chain
% Inputs:
% H - state transition matrix
% first - initial state
% last - terminal or absorving state
function [state] = crawl(H, first, last)
    % the sequence of states will be saved in the vector "state"
    % initially, the vector contains only the initial state:
    state = [first];
    % keep moving from state to state until state "last" is reached: while (1)
    while(1)
        state(end+1) = nextState(H, state(end));
        if ismember(state(end), last)
            break;
        end
    end 
end

% Returning the next state
% Inputs:
% H - state transition matrix
% currentState - current state
function state = nextState(H, currentState)
    % find the probabilities of reaching all states starting at the current one: probVector = H(:,currentState)’; % probVector is a row vector
    probVector = H(:, currentState)'; % is a row vector
    n = length(probVector); %n is the number of states
    % generate the next state randomly according to probabilities probVector: state = discrete_rnd(1:n, probVector);
    state = discrete_rnd(1:n, probVector);
end

% Generate randomly the next state.
% Inputs:
% states = vector with state values
% probVector = probability vector
function state = discrete_rnd(states, probVector)
    U=rand();
    i = 1 + sum(U > cumsum(probVector)); 
    state= states(i);
end