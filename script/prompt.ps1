function kubeOff {
    function global:Prompt {
        return ("PS Demo >")
    }
}

function kubeOn(){
    function global:Prompt {
        $ESC = [char]27
        $context = $(kubectl config current-context)
        $namespace = $(kubectl config view --minify --output 'jsonpath={..namespace}')
        "$ESC[38;2;0;255;128mctx:$context|$ESC[38;2;0;204;204mns:$namespace>"
    }
}