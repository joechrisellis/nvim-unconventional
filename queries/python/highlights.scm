; Python class names are conventionally MixedCase.
(
    (class_definition
        name: (identifier) @unconventional)

    (#negative-match? @unconventional "^\\([A-Z0-9][a-z0-9]*\\)\\+$")
)

; Python function names are conventionally snake_case.
(
    (function_definition
        name: (identifier) @unconventional)

    (#negative-match? @unconventional "^\\([a-z_]\\)\\+$")
)

; Python variable names are conventionally snake_case.
(
    (assignment
        left: [
            (identifier) @unconventional
            (attribute
                attribute: (identifier) @unconventional)
        ]
        right: (_))

    (#negative-match? @unconventional "^\\([a-z_]\\)\\+$")
)
