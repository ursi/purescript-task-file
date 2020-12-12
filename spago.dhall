{ name = "task-file"
, dependencies = [ "mason-prelude", "node-fs", "task" ]
, packages = ./packages.dhall
, sources = [ "src/**/*.purs" ]
}
