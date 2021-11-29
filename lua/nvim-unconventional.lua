local query = require"vim.treesitter.query"

-- Treesitter predicate for an inverse match so that we can define a regex for
-- what _conventional_ is, then match on the inverse of that.
query.add_predicate("negative-match?", function(match, pattern, bufnr, predicate)
    local node = match[predicate[2]]
    local node_text = query.get_node_text(node, bufnr)

    local specified_pattern = predicate[3]
    local re = vim.regex(specified_pattern)
    return re:match_str(node_text) == nil
end)
