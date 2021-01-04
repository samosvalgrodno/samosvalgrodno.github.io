$sassBatchRelativePath = '\tools\dart-sass\sass.bat'
$scriptRoot = [System.IO.Path]::GetFullPath($PSScriptRoot)
$sassBatchFilePath = [System.IO.Path]::GetFullPath((Join-Path $scriptRoot $sassBatchRelativePath))

$inputSCSS = [System.IO.Path]::GetFullPath((Join-Path $scriptRoot '\sass\styles.scss')) 
$outputCSS = [System.IO.Path]::GetFullPath((Join-Path $scriptRoot '.\styles\main.css'))

Write-Host $inputSCSS
Write-Host $outputCSS

$sassBatchArgs = @($inputSCSS, $outputCSS)

& $sassBatchFilePath $sassBatchArgs