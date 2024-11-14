$headers = @{
    "Authorization" = "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"
    "Accept"         = "application/vnd.github.v3+json"
}

$body = @{
    "ref"    = "master"  # Replace with your desired branch (e.g., 'main' or 'master')
    "inputs" = @{
        "example_input" = "some_value"  # Optional: Replace with actual input parameters if required by your workflow
    }
} | ConvertTo-Json

$uri = "https://api.github.com/repos/jatinbhalla/myshuttle/actions/workflows/ant/dispatches"  # Replace with your details

Invoke-WebRequest -Uri $uri `
    -Method Post `
    -Headers $headers `
    -Body $body `
    -ContentType "application/json"
