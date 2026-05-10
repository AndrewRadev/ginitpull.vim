## Usage

The plugin exposes a single command:

```
:Ginitpull [remote-name] [branch-name]
```

Calling it initiates a github pull request in the default browser, from the given branch name to master on the given remote. Both arguments are tab-completed.

If called without any arguments, defaults to the "origin" remote and the current branch name, which is probably what you usually want.

At this time, it works with Github, Gitlab.com, and Codeberg remotes. If you're looking for support for a self-hosted repos or some other centrally-hosted service, please open a PR or issue to discuss.

## Settings

The only "setting" of sorts is the mechanism to open URLs. If you have a global function defined named `OpenURL(url)`, the plugin will use that. If not, it will call the built-in `netrw#BrowseX` function, the same one that the `gx` mapping uses.

## Contributing

Pull requests are welcome, as long as they did not involve LLM usage. Be sure to abide by the [CODE_OF_CONDUCT.md](./CODE_OF_CONDUCT.md) as well.
