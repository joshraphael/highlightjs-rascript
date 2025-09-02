/**
 * Language: RAScript
 * Contributors:
 *   Joshua Raphael
 */
export default function(hljs) {
    return {
        case_insensitive: false,
        contains: [
            // assign relavence to these keywords without giving them a "style" scope
            {
                begin: /\b(dword\(|word\()\b/,
                relavence: 10
            },
            hljs.C_LINE_COMMENT_MODE,
            hljs.QUOTE_STRING_MODE,
            hljs.C_NUMBER_MODE,
            hljs.COMMENT(
                '/\\*',
                '\\*/',
            ),
            {
                className: 'variable.language',
                begin: /\b(this)\b/,
                relevance: 0
            },
            {
                className: 'keyword',
                begin: /\b(function|class|else|for|if|in|return)\b/,
                relevance: 0
            },
            {
                className: 'literal',
                begin: /\b(true|false)\b/,
                relevance: 0
            },
            {
                className: 'operator',
                begin: /(\|\||\&\&|\=\=|\!\=|\>\=|\<\=|\=\>)/,
                relevance: 0
            },
            {
                scope: 'operator',
                match: /[\+\-\*\/\%\^\&\^\~\>\<\!\|]/,
                relevance: 0
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
                relevance: 0
            },
            {
                begin: [
                    /class[\t ]+/,
                    /[a-zA-Z_][\w]*/
                ],
                beginScope: {
                    2: "title.class"
                },
                relevance: 0
            },
            {
                begin: [
                    /[a-zA-Z_][\w]*/,
                    /\(/
                ],
                beginScope: {
                    1: "title.function.invoke"
                },
                relevance: 0
            },
            {
                className: 'variable',
                begin: /[a-zA-Z_][\w]*/,
                relevance: 0
            }
        ]
    }
}