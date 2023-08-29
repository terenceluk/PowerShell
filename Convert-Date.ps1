# The accepted mandatory parameter for date (Example: Sat, May 27, 2023)
Param
    (
        [Parameter(Mandatory=$true)]
        [string] $date
    )

# Function that takes date and convert to yyyy-mm-dd
function ConvertDate {
    Param
    (
        [Parameter(Mandatory=$true)]
        [string] $passedDate
    )

    # Parse the input date string
    $date = Get-Date $passedDate

    # Format the date to yyyy-mm-dd
    $formattedDate = $date.ToString("yyyy-MM-dd")
    return $formattedDate
}

ConvertDate($date)
