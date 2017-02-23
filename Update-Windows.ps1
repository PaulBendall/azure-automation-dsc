Configuration MuSecurityImportant
{
    Import-DscResource -ModuleName xWindowsUpdate
    xWindowsUpdateAgent MuSecurityImportant
    {
        IsSingleInstance = 'Yes'
        UpdateNow        = $true
        Category         = @('Security','Important')
        Source           = 'MicrosoftUpdate'
        Notifications    = 'Disabled'
    }
}