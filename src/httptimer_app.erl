%% ------------------------------------------------------------------
%%
%% httptimer_app : Callbacks for the HttpTimer Application
%%
%% Copyright (c) 2011 Andre Graf <andre@graf.io>, All Rights Reserved
%%
%% This file is provided to you under the Apache License,
%% Version 2.0 (the "License"); you may not use this file
%% except in compliance with the License.  You may obtain
%% a copy of the License at
%%
%%   http://www.apache.org/licenses/LICENSE-2.0
%%
%% Unless required by applicable law or agreed to in writing,
%% software distributed under the License is distributed on an
%% "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
%% KIND, either express or implied.  See the License for the
%% specific language governing permissions and limitations
%% under the License.
%%
%% -------------------------------------------------------------------
-module(httptimer_app).
-behaviour(application).
-export([start/2,stop/1]).


%% @spec start(_Type, _StartArgs) -> ServerRet
%% @doc application start callback for httptimer.
start(_Type, _StartArgs) ->
    httptimer_sup:start_link().

%% @spec stop(_State) -> ServerRet
%% @doc application stop callback for httptimer.
stop(_State) ->
    ok.
