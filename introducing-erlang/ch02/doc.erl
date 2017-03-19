%% @author Simon St.Laurent <simonstl@simonstl.com> [http://simonstl.com]
%% @doc Functions calculating velocities achieved by objects
%% dropped in a vacuum.
%% @reference from <a href= "http://shop.oreilly.com/product/0636920025818.do" >In troducing Erlang</a>,
%% O'Reilly Media, Inc., 2012.
%% @copyright 2012 by Simon St.Laurent
%% @version 0.1

-module(doc).
-export([fall_velocity/1]).

fall_velocity(Distance) -> math:sqrt(2 * 9.8 * Distance).
