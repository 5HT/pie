%%%----------------------------------------------------------------------
%%% File    : edit_terminal_gterm.erl
%%% Author  : Luke Gorrie <luke@bluetail.com>
%%% Purpose : edit_terminal implementation for gterm (Tony's GTK terminal
%%%           emulator)
%%% Created : 14 Mar 2001 by Luke Gorrie <luke@bluetail.com>
%%%----------------------------------------------------------------------

-module(edit_terminal_gterm).
-author('Luke Gorrie').
-compile(export_all).
-define(TERM, ?MODULE).

setup()           -> Term = gterm:run(), register(?TERM, Term), Term.
teardown()        -> gterm_api:quit().
newline()         -> gterm_api:newline(?TERM).
put_char(C)       -> gterm_api:put_char(?TERM, C).
put_string(S)     -> gterm_api:put_string(?TERM, S).
format(Fmt, Args) -> gterm_api:format(?TERM, Fmt, Args).
erase_to_eol()    -> gterm_api:erase_to_eol(?TERM).
move_to(X, Y)     -> gterm_api:move_to(?TERM, X, Y).
refresh()         -> gterm_api:refresh(?TERM).
invalidate()      -> gterm_api:refresh(?TERM).
width()           -> gterm_api:width(?TERM).
height()          -> gterm_api:height(?TERM).
read()            -> gterm_api:read(?TERM).
font_reverse()    -> gterm_api:font_reverse(?TERM).
font_normal()     -> gterm_api:font_normal(?TERM).
