function kubeOff {
    function global:Prompt {
        return ("PS Demo >")
    }
}

function kubeOn(){
    function global:Prompt {
        $ESC = [char]27
        $symbol = [char]0x2388
        $context = $(kubectl config current-context)
        $namespace = $(kubectl config view --minify --output 'jsonpath={..namespace}')
        "$symbol|$ESC[38;2;0;255;128mctx:$context$ESC[0m|$ESC[38;2;0;204;204mns:$namespace$ESC[0m> "
    }
}