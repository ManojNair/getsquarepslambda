function Get-Square {
    param (
        $LambdaInput,
        $LambdaContext
    )

    Write-Host "+" * 10
    Write-Host ($LambdaInput | ConvertTo-Json -Depth 5)
    Write-Host "+" * 10

    $payload = $LambdaInput.body | ConvertFrom-Json 
    Write-Host $payload
    $square = $payload.Number * $payload.Number

   @{
       statusCode = 200;
       body = $square;
       headers = @{'content-type' = 'application/json'};
   }
    
}