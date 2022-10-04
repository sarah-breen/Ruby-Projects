def make_snippet(str)
    if str.split.size > 5
        return str.split[0..4].join(' ') + "..."
    else
    return str
    end
end