%% TODO: rename FAIL to ABORT once we require at least R13B04 for
%% building rebar. Macros with different arity were not supported by the
%% compiler before 13B04.
-define(FAIL, rebar_utils:abort()).
-include("color.hrl").

-define(ABORT(Str, Args), rebar_utils:abort(Str, Args)).

-define(CONSOLE(Str, Args), io:format(Str, Args)).
-define(CONSOLE_COLOR(Color, Str, Args),
    ?CONSOLE(Color ++ Str ++ ?COLOR_OFF, Args)).
-define(CONSOLE_RED(Str, Args), ?CONSOLE_COLOR(?COLOR_RED, Str, Args)).
-define(CONSOLE_BLUE(Str, Args), ?CONSOLE_COLOR(?COLOR_BLUE, Str, Args)).
-define(CONSOLE_GREEN(Str, Args), ?CONSOLE_COLOR(?COLOR_GREEN, Str, Args)).
-define(CONSOLE_YELLOW(Str, Args), ?CONSOLE_COLOR(?COLOR_YELLOW, Str, Args)).
-define(CONSOLE_MAGENTA(Str, Args), ?CONSOLE_COLOR(?COLOR_MAGENTA, Str, Args)).

-define(DEBUG(Str, Args), rebar_log:log(debug, Str, Args)).
-define(INFO(Str, Args), rebar_log:log(info, Str, Args)).
-define(WARN(Str, Args), rebar_log:log(warn, Str, Args)).
-define(ERROR(Str, Args), rebar_log:log(standard_error, error, Str, Args)).

-define(FMT(Str, Args), lists:flatten(io_lib:format(Str, Args))).
