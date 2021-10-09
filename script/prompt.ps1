function kubeOff {
    function global:Prompt {
        return ("PS Demo >")
    }
}

function kubeOn(){
    function global:Prompt {
        $context = Write-Host $(kubectl config current-context) -ForegroundColor Red -NoNewline;
        $pipe = Write-Host " | " -NoNewline;
        $namespace = Write-Host $(kubectl config view --minify --output 'jsonpath={..namespace}') -ForegroundColor Yellow -NoNewline;
        $end = Write-Host ">" -NoNewline;
        return $context; + $pipe; + $namespace; + $end;
    }
}