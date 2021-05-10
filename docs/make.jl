using QznbTestPackage
using Documenter

DocMeta.setdocmeta!(QznbTestPackage, :DocTestSetup, :(using QznbTestPackage); recursive=true)

makedocs(;
    modules=[QznbTestPackage],
    authors="qz-michael <michael@quartznotebook.com> and contributors",
    repo="https://github.com/qz-michael/QznbTestPackage.jl/blob/{commit}{path}#{line}",
    sitename="QznbTestPackage.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://qz-michael.github.io/QznbTestPackage.jl",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    devbranch = "main",
    repo="github.com/qz-michael/QznbTestPackage.jl"
)
