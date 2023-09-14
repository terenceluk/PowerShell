# The accepted mandatory parameter for date (Example: Sat, May 27, 2023)
Param
    (
        [Parameter(Mandatory=$true)]
        [string] $date
    )

# Function that takes date and convert to yyyy-mm-dd
# Works with:
# Sat, May 27, 2023
# Sat, May 27, 2023 1:55 PM GMT
# Does not work with: Sat, May 27, 2023 1:55 PM GMT -0300
# Use this Regex match [\s][-+]\d* ----> to match whitespace, match - or +, match a digit and 0 or more

function ConvertDate {
    Param
    (
        [Parameter(Mandatory=$true)]
        [string] $passedDate
    )

    # Parse the input date string (use RegEx expression to handle -0300 if passed)
    $date = Get-Date ($passedDate -replace ('[\s][-+]\d*', '')) 

    # Format the date to yyyy-mm-dd
    $formattedDate = $date.ToString("yyyy-MM-dd")
    return $formattedDate
}

ConvertDate($date)
