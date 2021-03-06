function Start-Count {
    param (
        # The current time, or the starting point
        [Parameter(Mandatory=$false)]
        [int]
        $CurrentTime=0,

        # The total number of seconds to count
        [Parameter(Mandatory=$true, Position=1)]
        [int]
        $TotalTime
    )

    while ($CurrentTime -le $TotalTime) {
        Write-Progress -Activity "Counting to $TotalTime" -Status "Counting: $CurrentTime seconds" -PercentComplete ($CurrentTime / $TotalTime * 100)
        Start-Sleep 1
        $CurrentTime++
    }
}