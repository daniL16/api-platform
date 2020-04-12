workflow "check-and-release" {
    on = "push"
    resolves = "style"
}

workflow "gestPR" {
    on = "pull-request"
    resolves = "pr"
}

action "build_env" {
    uses = "./.github/actions/build_enviorement"
}

action "style" {
    needs = ["build_env"]
    uses = "./.github/actions/phpcsfixer"
}

action "pr" {
    uses = "./.github/actions/pull_request"
}
