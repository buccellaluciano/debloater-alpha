function Play-Melody {
    param (
        [int]$frequency,
        [int]$duration
    )

    [Console]::Beep($frequency, $duration)
}

function Congratulate {
    Write-Host "Congratulations!"

    # Define the notes for the melody
    $melody = @(
        @{ Note = 523; Duration = 500 },
        @{ Note = 587; Duration = 500 },
        @{ Note = 659; Duration = 500 },
        @{ Note = 698; Duration = 500 },
        @{ Note = 784; Duration = 500 },
        @{ Note = 880; Duration = 500 },
        @{ Note = 988; Duration = 500 },
        @{ Note = 1047; Duration = 500 },
        @{ Note = 988; Duration = 500 },
        @{ Note = 880; Duration = 500 },
        @{ Note = 784; Duration = 500 },
        @{ Note = 698; Duration = 500 },
        @{ Note = 659; Duration = 500 },
        @{ Note = 587; Duration = 500 },
        @{ Note = 523; Duration = 500 }
    )

    foreach ($note in $melody) {
        Play-Melody -frequency $note.Note -duration $note.Duration
        Start-Sleep -Milliseconds 50
    }
}