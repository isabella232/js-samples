def inline(src, out, sources):
    native.genrule(
        name = "inline_" + src.replace(":", "").split(".")[0],
        srcs = [src] + sources,
        outs = [out],
        cmd = "$(location //rules:inline) $(location {}) $@ ".format(src),
        tools = ["//rules:inline"],
    )
