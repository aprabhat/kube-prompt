# kube-prompt

Utility to display the current context and current namespace in command line prompt for power shell

Inspired from [kube-ps1](https://github.com/jonmosco/kube-ps1) a Kubernetes prompt for bash and zsh, kube-prompt is a utility to add current kubernetes context and namespace on power shell prompt.

## Requirements

To make use of this utility, `kubectl` should be installed.

## Installation

**Using Invoke-Expression cmdlet**

You can use below mentioned comment to invoke this utility.

```
invoke-expression (invoke-webrequest 'https://raw.githubusercontent.com/aprabhat/kube-prompt/main/script/prompt.ps1').content
```

To display the current context and namespace run `kubeon `command

To turn off the modified prompt, use `kubeoff` commend

![](/screenshots/dot-sourcing.gif)
