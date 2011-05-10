
-spec init (Args::term()) ->
                   {'ok', State::term()} |
                   'ignore' |
                   {'stop', Reason::term()}.

-spec elected(State, gen_leader:election(), node() | 'undefined') ->
                     {'ok', Sync::term(), State} |
                     {'reply', Sync::term(), State}.

-spec surrendered(State, Sync::term(), gen_leader:election()) ->
                         {'ok', State}.

-spec handle_leader_call(Request::term(),
                         From::{pid(), reference()},
                         State,
                         gen_leader:election()) ->
                                {'reply', Reply::term(), State} |
                                {'reply', Reply::term(), Broadcast::term(), State} |
                                {'noreply', State} |
                                {'stop', Reason::term(), Reply::term(), State}.

-spec handle_leader_cast(Msg::term(),
                         State,
                         gen_leader:election()) ->
                                {'ok', Broadcast::term(), State} |
                                {'noreply', State} |
                                {'stop', Reason::term(), State}.

-spec from_leader(Msg::term(),
                  State,
                  gen_leader:election()) ->
                         {'noreply', State} |
                         {'ok', State} |
                         {'stop', Reason::term(), State}.

-spec handle_call(Request::term(),
                  From::{pid(), reference()},
                  State,
                  gen_leader:election()) ->
                         {'reply', Reply::term(), State} |
                         {'noreply', State} |
                         {'stop', Reason::term(), State} |
                         {'stop', Reason::term(), Reply::term(), State}.

-spec handle_cast(Msg::term(),
                  State,
                  gen_leader:election()) ->
                         {'noreply', State} |
                         {'stop', Reason::term(), State}.

-spec handle_DOWN(node(), State, gen_leader:election()) ->
                         {'ok', State} |
                         {'ok', Sync::term(), State}.

-spec handle_info(Msg::term(), State) ->
                         {'noreply', State} |
                         {'stop', Reason::term(), State} |
                         {'ok', State}.

-spec terminate(Reason::term(), State::term()) -> any().

-spec code_change(OldVsn::term(), State, gen_leader:election(), Extra::term()) ->
                         {'ok', State} |
                         {'ok', State, gen_leader:election()}.
