/**
 * Language: RAScript
 * Contributors:
 *   Joshua Raphael
 */
export default function(hljs) {
    return {
        case_insensitive: false,
        contains: [
            hljs.C_LINE_COMMENT_MODE,
            hljs.QUOTE_STRING_MODE,
            hljs.C_NUMBER_MODE,
            hljs.COMMENT(
                '/\\*',
                '\\*/',
            ),
            {
                className: 'variable.language',
                begin: /\b(this)\b/
            },
            {
                className: 'keyword',
                begin: /\b(function|class|else|for|if|in|return)\b/
            },
            {
                className: 'literal',
                begin: /\b(true|false)\b/
            },
            {
                className: 'operator',
                begin: /(\|\||\&\&|\=\=|\!\=|\>\=|\<\=|\=\>)/,
            },
            {
                scope: 'operator',
                match: /[\+\-\*\/\%\^\&\^\~\>\<\!\|]/,
            },      
            {
                begin: [
                    /function[\t ]+/,
                    /[a-zA-Z_][\w]*/,
                    /\(/
                ],
                beginScope: {
                    2: "title.function"
                },
            },
            {
                begin: [
                    /class[\t ]+/,
                    /[a-zA-Z_][\w]*/
                ],
                beginScope: {
                    2: "title.class"
                },
            },
            {
                begin: [
                    /[a-zA-Z_][\w]*/,
                    /\(/
                ],
                beginScope: {
                    1: "title.function.invoke"
                },
            },
            {
                className: 'variable',
                begin: /[a-zA-Z_][\w]*/,
            }
        ]
    }
}