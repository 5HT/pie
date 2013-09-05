Definitions.

AtomChar = [^\s\r\n\(\)]
WS       = [\s\r\n]

Rules.

\(     : {token, {'(', TokenLine}}.
\)     : {token, {')', TokenLine}}.

lambda : {token, {special, TokenLine}}.
define : {token, {special, TokenLine}}.
let    : {token, {special, TokenLine}}.

({AtomChar}{AtomChar}*) : {token, {atom, TokenLine, TokenChars}}.
%% Ignore
{WS} : skip_token.

Erlang code.
