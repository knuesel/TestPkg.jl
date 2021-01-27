using TestPkg
using Documenter

DocMeta.setdocmeta!(TestPkg, :DocTestSetup, :(using TestPkg); recursive=true)

makedocs(;
    modules=[TestPkg],
    authors="Jeremie Knuesel <knuesel@gmail.com> and contributors",
    repo="https://github.com/knuesel/TestPkg.jl/blob/{commit}{path}#L{line}",
    sitename="TestPkg.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://knuesel.github.io/TestPkg.jl",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/knuesel/TestPkg.jl",
    # push_preview=true,
)
