%    9   1    3   3   5   9   fim
t = [0   0    0   0   0   0   0 % 9
     0.5 0    0   0   0   0   0 % 1
     0.5 0    0   0   0   0   0 % 3
     0   0.34 0   0.2 0.1 0   0 % 3
     0   0.34 0.6 0.5 0.4 0.3 0 % 5
     0   0.33 0.4 0   0.3 0.3 0 % 9
     0   0    0   0.3 0.2 0.4 1 % fim
     ];

% prob de uma seq de 7 digitos ser iniciada por 91 e terminada por 9
% 
% prob de começar por 9  = 1
% prob de ter 1 a seguir = 0.5
% prob de começar por 91 = 1*0.5 = 0.5
% 
nIter = 10000;
sequences = {};
count = 0;
soma9 = 0;

while count ~= nIter
    state = crawl(t, 1, 7);
    if length(state) == 7
        count = count + 1;
        sequences{1, count} = state;
    end
end

for i = 1:1:nIter
    seq = sequences{1,i};
    if seq(2) == 2 && seq(end-1) == 6
        soma9 = soma9 + 1;
    end
end

soma9/nIter

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