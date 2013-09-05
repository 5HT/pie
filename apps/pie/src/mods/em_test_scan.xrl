Definitions.

Ch = [a-z]

Rules.

\+        : {token, {'+', TokenLine}}.
\+\+      : {token, {'++', TokenLine}}.
-         : {token, {'-', TokenLine}}.
\s        : skip_token.
({Ch}{Ch}*) : {token, {atom, TokenLine, TokenChars}}.

Erlang code.
