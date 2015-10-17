%%%-------------------------------------------------------------------
%% @doc bananaPhone public API
%% @end
%%%-------------------------------------------------------------------

-module('bananaPhone_app').

-behaviour(application).

%% Application callbacks
-export([start/2
        ,stop/1]).

%%====================================================================
%% API
%%====================================================================

start(_StartType, _StartArgs) ->
    'bananaPhone_sup':start_link().

%%--------------------------------------------------------------------
stop(_State) ->
    ok.

%%====================================================================
%% Internal functions
%%====================================================================



%%%===================================================================
%%% Tests
%%%===================================================================

-ifdef(TEST).

-include_lib("eunit/include/eunit.hrl").

silly_test_() ->
    {"Math works!", ?_assert(1 + 1 =:= 2)}.

-endif.
