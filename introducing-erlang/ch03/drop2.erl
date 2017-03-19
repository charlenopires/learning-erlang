-module(drop2).
-export([fall_velocity/2]).

% fall_velocity(Planemo, Distance) -> math:sqrt(2 * 9.8 * Distance).
% fall_velocity(_, Distance) -> math:sqrt(2 * 9.8 * Distance).
% fall_velocity(you_dont_care, Distance) -> math:sqrt(2 * 9.8 * Distance).
fall_velocity(_ola, Distance) -> math:sqrt(2 * 9.8 * Distance).
