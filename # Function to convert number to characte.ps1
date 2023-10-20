# Function to convert number to character
function Convert-NumberToChar {
    param (
        [Parameter(Mandatory=$true)]
        [int[]]$Numbers
    )

    foreach ($Number in $Numbers) {
        # Convert number to char using .NET System.Char class
        $Char = [System.Char]::ConvertFromUtf32($Number)
        Write-Output $Char
    }
}

# Example usage:
$Numbers = 65, 66, 67, 97, 98, 99
Convert-NumberToChar -Numbers $Numbers