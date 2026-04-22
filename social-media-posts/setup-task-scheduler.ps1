# Run this once as Administrator to register the weekly task.

$action = New-ScheduledTaskAction `
    -Execute "powershell.exe" `
    -Argument "-NonInteractive -ExecutionPolicy Bypass -File `"E:\wamp\www\awesomemotive\support\customer-success\social-media-posts\run-weekly.ps1`""

# Every Wednesday at 5:00 PM
$trigger = New-ScheduledTaskTrigger -Weekly -DaysOfWeek Wednesday -At "17:00"

$settings = New-ScheduledTaskSettingsSet `
    -ExecutionTimeLimit (New-TimeSpan -Hours 1) `
    -StartWhenAvailable `
    -RunOnlyIfNetworkAvailable

Register-ScheduledTask `
    -TaskName "AM Social Media Posts - Weekly" `
    -TaskPath "\AwesomeMotive\" `
    -Action $action `
    -Trigger $trigger `
    -Settings $settings `
    -RunLevel Highest `
    -Force

Write-Host "Task registered. Next run: Wednesday 5:00 PM"
