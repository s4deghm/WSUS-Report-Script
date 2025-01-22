# Import the WSUS module

Import-Module UpdateServices

 

# Connect to the local WSUS server

$WsusServer = Get-WsusServer

 

# Get all computer groups, excluding "All Computers"

$ComputerGroups = $WsusServer.GetComputerTargetGroups() | Where-Object { $_.Name -ne "All Computers" }

 

# Generate the report for all subgroups

$Computers = $ComputerGroups | ForEach-Object {

    $Group = $_

    $Group.GetComputerTargets() | ForEach-Object {

        # Get update summary for the computer

        $UpdateSummary = $_.GetUpdateInstallationSummary()

 

        [PSCustomObject]@{

            GroupName           = $Group.Name

            ComputerName        = $_.FullDomainName

            IPAddress           = $_.IPAddress

            OperatingSystem     = $_.OSDescription

            InstalledUpdates    = $UpdateSummary.InstalledCount

            NotInstalledUpdates = $UpdateSummary.NotInstalledCount

            FailedUpdates       = $UpdateSummary.FailedCount

            LastContactTime     = $_.LastReportedStatusTime.ToString("yyyy-MM-dd HH:mm:ss")

        }

    }

}

 

# Export the data to a CSV file

$Computers | Export-Csv -Path "C:\WSUS_Report.csv" -NoTypeInformation -Encoding UTF8

 

Write-Host "Report generated successfully: C:\WSUS_Report.csv"