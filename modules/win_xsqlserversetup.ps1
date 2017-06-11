#!powershell
# <COPYRIGHT>
# <CODEGENMETA>
#
# This file is part of Ansible
#
# Ansible is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# Ansible is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with Ansible.  If not, see <http://www.gnu.org/licenses/>.

# WANT_JSON
# POWERSHELL_COMMON
Set-StrictMode -Off
$params = Parse-Args $args -supports_check_mode $true
$result = New-Object psobject
Set-Attr $result "changed" $false



#ATTRIBUTE:InstanceName;MANDATORY:True;DEFAULTVALUE:;DESCRIPTION:;CHOICES:
$InstanceName = Get-AnsibleParam -obj $params -name InstanceName -failifempty $True -resultobj $result
#ATTRIBUTE:SetupCredential_username;MANDATORY:True;DEFAULTVALUE:;DESCRIPTION:;CHOICES:
$SetupCredential_username = Get-AnsibleParam -obj $params -name SetupCredential_username -failifempty $True -resultobj $result
#ATTRIBUTE:SetupCredential_password;MANDATORY:True;DEFAULTVALUE:;DESCRIPTION:;CHOICES:
$SetupCredential_password = Get-AnsibleParam -obj $params -name SetupCredential_password -failifempty $True -resultobj $result
#ATTRIBUTE:Action;MANDATORY:False;DEFAULTVALUE:;DESCRIPTION:;CHOICES:AddNode,CompleteFailoverCluster,Install,InstallFailoverCluster,PrepareFailoverCluster
$Action = Get-AnsibleParam -obj $params -name Action -failifempty $False -resultobj $result
#ATTRIBUTE:AgtSvcAccount_username;MANDATORY:False;DEFAULTVALUE:;DESCRIPTION:;CHOICES:
$AgtSvcAccount_username = Get-AnsibleParam -obj $params -name AgtSvcAccount_username -failifempty $False -resultobj $result
#ATTRIBUTE:AgtSvcAccount_password;MANDATORY:False;DEFAULTVALUE:;DESCRIPTION:;CHOICES:
$AgtSvcAccount_password = Get-AnsibleParam -obj $params -name AgtSvcAccount_password -failifempty $False -resultobj $result
#ATTRIBUTE:ASBackupDir;MANDATORY:False;DEFAULTVALUE:;DESCRIPTION:;CHOICES:
$ASBackupDir = Get-AnsibleParam -obj $params -name ASBackupDir -failifempty $False -resultobj $result
#ATTRIBUTE:ASCollation;MANDATORY:False;DEFAULTVALUE:;DESCRIPTION:;CHOICES:
$ASCollation = Get-AnsibleParam -obj $params -name ASCollation -failifempty $False -resultobj $result
#ATTRIBUTE:ASConfigDir;MANDATORY:False;DEFAULTVALUE:;DESCRIPTION:;CHOICES:
$ASConfigDir = Get-AnsibleParam -obj $params -name ASConfigDir -failifempty $False -resultobj $result
#ATTRIBUTE:ASDataDir;MANDATORY:False;DEFAULTVALUE:;DESCRIPTION:;CHOICES:
$ASDataDir = Get-AnsibleParam -obj $params -name ASDataDir -failifempty $False -resultobj $result
#ATTRIBUTE:ASLogDir;MANDATORY:False;DEFAULTVALUE:;DESCRIPTION:;CHOICES:
$ASLogDir = Get-AnsibleParam -obj $params -name ASLogDir -failifempty $False -resultobj $result
#ATTRIBUTE:ASSvcAccount_username;MANDATORY:False;DEFAULTVALUE:;DESCRIPTION:;CHOICES:
$ASSvcAccount_username = Get-AnsibleParam -obj $params -name ASSvcAccount_username -failifempty $False -resultobj $result
#ATTRIBUTE:ASSvcAccount_password;MANDATORY:False;DEFAULTVALUE:;DESCRIPTION:;CHOICES:
$ASSvcAccount_password = Get-AnsibleParam -obj $params -name ASSvcAccount_password -failifempty $False -resultobj $result
#ATTRIBUTE:ASSysAdminAccounts;MANDATORY:False;DEFAULTVALUE:;DESCRIPTION:;CHOICES:
$ASSysAdminAccounts = Get-AnsibleParam -obj $params -name ASSysAdminAccounts -failifempty $False -resultobj $result
#ATTRIBUTE:ASTempDir;MANDATORY:False;DEFAULTVALUE:;DESCRIPTION:;CHOICES:
$ASTempDir = Get-AnsibleParam -obj $params -name ASTempDir -failifempty $False -resultobj $result
#ATTRIBUTE:BrowserSvcStartupType;MANDATORY:False;DEFAULTVALUE:;DESCRIPTION:;CHOICES:Automatic,Disabled,Manual
$BrowserSvcStartupType = Get-AnsibleParam -obj $params -name BrowserSvcStartupType -failifempty $False -resultobj $result
#ATTRIBUTE:ErrorReporting;MANDATORY:False;DEFAULTVALUE:;DESCRIPTION:;CHOICES:
$ErrorReporting = Get-AnsibleParam -obj $params -name ErrorReporting -failifempty $False -resultobj $result
#ATTRIBUTE:FailoverClusterGroupName;MANDATORY:False;DEFAULTVALUE:;DESCRIPTION:;CHOICES:
$FailoverClusterGroupName = Get-AnsibleParam -obj $params -name FailoverClusterGroupName -failifempty $False -resultobj $result
#ATTRIBUTE:FailoverClusterIPAddress;MANDATORY:False;DEFAULTVALUE:;DESCRIPTION:;CHOICES:
$FailoverClusterIPAddress = Get-AnsibleParam -obj $params -name FailoverClusterIPAddress -failifempty $False -resultobj $result
#ATTRIBUTE:FailoverClusterNetworkName;MANDATORY:False;DEFAULTVALUE:;DESCRIPTION:;CHOICES:
$FailoverClusterNetworkName = Get-AnsibleParam -obj $params -name FailoverClusterNetworkName -failifempty $False -resultobj $result
#ATTRIBUTE:Features;MANDATORY:False;DEFAULTVALUE:;DESCRIPTION:;CHOICES:
$Features = Get-AnsibleParam -obj $params -name Features -failifempty $False -resultobj $result
#ATTRIBUTE:ForceReboot;MANDATORY:False;DEFAULTVALUE:;DESCRIPTION:;CHOICES:
$ForceReboot = Get-AnsibleParam -obj $params -name ForceReboot -failifempty $False -resultobj $result
#ATTRIBUTE:FTSvcAccount_username;MANDATORY:False;DEFAULTVALUE:;DESCRIPTION:;CHOICES:
$FTSvcAccount_username = Get-AnsibleParam -obj $params -name FTSvcAccount_username -failifempty $False -resultobj $result
#ATTRIBUTE:FTSvcAccount_password;MANDATORY:False;DEFAULTVALUE:;DESCRIPTION:;CHOICES:
$FTSvcAccount_password = Get-AnsibleParam -obj $params -name FTSvcAccount_password -failifempty $False -resultobj $result
#ATTRIBUTE:InstallSharedDir;MANDATORY:False;DEFAULTVALUE:;DESCRIPTION:;CHOICES:
$InstallSharedDir = Get-AnsibleParam -obj $params -name InstallSharedDir -failifempty $False -resultobj $result
#ATTRIBUTE:InstallSharedWOWDir;MANDATORY:False;DEFAULTVALUE:;DESCRIPTION:;CHOICES:
$InstallSharedWOWDir = Get-AnsibleParam -obj $params -name InstallSharedWOWDir -failifempty $False -resultobj $result
#ATTRIBUTE:InstallSQLDataDir;MANDATORY:False;DEFAULTVALUE:;DESCRIPTION:;CHOICES:
$InstallSQLDataDir = Get-AnsibleParam -obj $params -name InstallSQLDataDir -failifempty $False -resultobj $result
#ATTRIBUTE:InstanceDir;MANDATORY:False;DEFAULTVALUE:;DESCRIPTION:;CHOICES:
$InstanceDir = Get-AnsibleParam -obj $params -name InstanceDir -failifempty $False -resultobj $result
#ATTRIBUTE:InstanceID;MANDATORY:False;DEFAULTVALUE:;DESCRIPTION:;CHOICES:
$InstanceID = Get-AnsibleParam -obj $params -name InstanceID -failifempty $False -resultobj $result
#ATTRIBUTE:ISSvcAccount_username;MANDATORY:False;DEFAULTVALUE:;DESCRIPTION:;CHOICES:
$ISSvcAccount_username = Get-AnsibleParam -obj $params -name ISSvcAccount_username -failifempty $False -resultobj $result
#ATTRIBUTE:ISSvcAccount_password;MANDATORY:False;DEFAULTVALUE:;DESCRIPTION:;CHOICES:
$ISSvcAccount_password = Get-AnsibleParam -obj $params -name ISSvcAccount_password -failifempty $False -resultobj $result
#ATTRIBUTE:ProductKey;MANDATORY:False;DEFAULTVALUE:;DESCRIPTION:;CHOICES:
$ProductKey = Get-AnsibleParam -obj $params -name ProductKey -failifempty $False -resultobj $result
#ATTRIBUTE:PsDscRunAsCredential_username;MANDATORY:False;DEFAULTVALUE:;DESCRIPTION:;CHOICES:
$PsDscRunAsCredential_username = Get-AnsibleParam -obj $params -name PsDscRunAsCredential_username -failifempty $False -resultobj $result
#ATTRIBUTE:PsDscRunAsCredential_password;MANDATORY:False;DEFAULTVALUE:;DESCRIPTION:;CHOICES:
$PsDscRunAsCredential_password = Get-AnsibleParam -obj $params -name PsDscRunAsCredential_password -failifempty $False -resultobj $result
#ATTRIBUTE:RSSvcAccount_username;MANDATORY:False;DEFAULTVALUE:;DESCRIPTION:;CHOICES:
$RSSvcAccount_username = Get-AnsibleParam -obj $params -name RSSvcAccount_username -failifempty $False -resultobj $result
#ATTRIBUTE:RSSvcAccount_password;MANDATORY:False;DEFAULTVALUE:;DESCRIPTION:;CHOICES:
$RSSvcAccount_password = Get-AnsibleParam -obj $params -name RSSvcAccount_password -failifempty $False -resultobj $result
#ATTRIBUTE:SAPwd_username;MANDATORY:False;DEFAULTVALUE:;DESCRIPTION:;CHOICES:
$SAPwd_username = Get-AnsibleParam -obj $params -name SAPwd_username -failifempty $False -resultobj $result
#ATTRIBUTE:SAPwd_password;MANDATORY:False;DEFAULTVALUE:;DESCRIPTION:;CHOICES:
$SAPwd_password = Get-AnsibleParam -obj $params -name SAPwd_password -failifempty $False -resultobj $result
#ATTRIBUTE:SecurityMode;MANDATORY:False;DEFAULTVALUE:;DESCRIPTION:;CHOICES:
$SecurityMode = Get-AnsibleParam -obj $params -name SecurityMode -failifempty $False -resultobj $result
#ATTRIBUTE:SourceCredential_username;MANDATORY:False;DEFAULTVALUE:;DESCRIPTION:;CHOICES:
$SourceCredential_username = Get-AnsibleParam -obj $params -name SourceCredential_username -failifempty $False -resultobj $result
#ATTRIBUTE:SourceCredential_password;MANDATORY:False;DEFAULTVALUE:;DESCRIPTION:;CHOICES:
$SourceCredential_password = Get-AnsibleParam -obj $params -name SourceCredential_password -failifempty $False -resultobj $result
#ATTRIBUTE:SourcePath;MANDATORY:False;DEFAULTVALUE:;DESCRIPTION:;CHOICES:
$SourcePath = Get-AnsibleParam -obj $params -name SourcePath -failifempty $False -resultobj $result
#ATTRIBUTE:SQLBackupDir;MANDATORY:False;DEFAULTVALUE:;DESCRIPTION:;CHOICES:
$SQLBackupDir = Get-AnsibleParam -obj $params -name SQLBackupDir -failifempty $False -resultobj $result
#ATTRIBUTE:SQLCollation;MANDATORY:False;DEFAULTVALUE:;DESCRIPTION:;CHOICES:
$SQLCollation = Get-AnsibleParam -obj $params -name SQLCollation -failifempty $False -resultobj $result
#ATTRIBUTE:SQLSvcAccount_username;MANDATORY:False;DEFAULTVALUE:;DESCRIPTION:;CHOICES:
$SQLSvcAccount_username = Get-AnsibleParam -obj $params -name SQLSvcAccount_username -failifempty $False -resultobj $result
#ATTRIBUTE:SQLSvcAccount_password;MANDATORY:False;DEFAULTVALUE:;DESCRIPTION:;CHOICES:
$SQLSvcAccount_password = Get-AnsibleParam -obj $params -name SQLSvcAccount_password -failifempty $False -resultobj $result
#ATTRIBUTE:SQLSysAdminAccounts;MANDATORY:False;DEFAULTVALUE:;DESCRIPTION:;CHOICES:
$SQLSysAdminAccounts = Get-AnsibleParam -obj $params -name SQLSysAdminAccounts -failifempty $False -resultobj $result
#ATTRIBUTE:SQLTempDBDir;MANDATORY:False;DEFAULTVALUE:;DESCRIPTION:;CHOICES:
$SQLTempDBDir = Get-AnsibleParam -obj $params -name SQLTempDBDir -failifempty $False -resultobj $result
#ATTRIBUTE:SQLTempDBLogDir;MANDATORY:False;DEFAULTVALUE:;DESCRIPTION:;CHOICES:
$SQLTempDBLogDir = Get-AnsibleParam -obj $params -name SQLTempDBLogDir -failifempty $False -resultobj $result
#ATTRIBUTE:SQLUserDBDir;MANDATORY:False;DEFAULTVALUE:;DESCRIPTION:;CHOICES:
$SQLUserDBDir = Get-AnsibleParam -obj $params -name SQLUserDBDir -failifempty $False -resultobj $result
#ATTRIBUTE:SQLUserDBLogDir;MANDATORY:False;DEFAULTVALUE:;DESCRIPTION:;CHOICES:
$SQLUserDBLogDir = Get-AnsibleParam -obj $params -name SQLUserDBLogDir -failifempty $False -resultobj $result
#ATTRIBUTE:SQMReporting;MANDATORY:False;DEFAULTVALUE:;DESCRIPTION:;CHOICES:
$SQMReporting = Get-AnsibleParam -obj $params -name SQMReporting -failifempty $False -resultobj $result
#ATTRIBUTE:SuppressReboot;MANDATORY:False;DEFAULTVALUE:;DESCRIPTION:;CHOICES:
$SuppressReboot = Get-AnsibleParam -obj $params -name SuppressReboot -failifempty $False -resultobj $result
#ATTRIBUTE:UpdateEnabled;MANDATORY:False;DEFAULTVALUE:;DESCRIPTION:;CHOICES:
$UpdateEnabled = Get-AnsibleParam -obj $params -name UpdateEnabled -failifempty $False -resultobj $result
#ATTRIBUTE:UpdateSource;MANDATORY:False;DEFAULTVALUE:;DESCRIPTION:;CHOICES:
$UpdateSource = Get-AnsibleParam -obj $params -name UpdateSource -failifempty $False -resultobj $result
#ATTRIBUTE:AutoInstallModule;MANDATORY:False;DEFAULTVALUE:false;DESCRIPTION:If true, the required dsc resource/module will be auto-installed using the Powershell package manager;CHOICES:true,false
$AutoInstallModule = Get-AnsibleParam -obj $params -name AutoInstallModule -failifempty $False -resultobj $result -default false
#ATTRIBUTE:AutoConfigureLcm;MANDATORY:False;DEFAULTVALUE:false;DESCRIPTION:If true, LCM will be auto-configured for directly invoking DSC resources (which is a one-time requirement for Ansible DSC modules);CHOICES:true,false
$AutoConfigureLcm = Get-AnsibleParam -obj $params -name AutoConfigureLcm -failifempty $False -resultobj $result -default false
If ($Action)
{
    If (('AddNode','CompleteFailoverCluster','Install','InstallFailoverCluster','PrepareFailoverCluster') -contains $Action ) {
    }
    Else
    {
        Fail-Json $result "Option Action has invalid value $Action. Valid values are 'AddNode','CompleteFailoverCluster','Install','InstallFailoverCluster','PrepareFailoverCluster'"
    }
}


If ($BrowserSvcStartupType)
{
    If (('Automatic','Disabled','Manual') -contains $BrowserSvcStartupType ) {
    }
    Else
    {
        Fail-Json $result "Option BrowserSvcStartupType has invalid value $BrowserSvcStartupType. Valid values are 'Automatic','Disabled','Manual'"
    }
}


If ($AutoInstallModule)
{
    If (('true','false') -contains $AutoInstallModule ) {
    }
    Else
    {
        Fail-Json $result "Option AutoInstallModule has invalid value $AutoInstallModule. Valid values are 'true','false'"
    }
}


If ($AutoConfigureLcm)
{
    If (('true','false') -contains $AutoConfigureLcm ) {
    }
    Else
    {
        Fail-Json $result "Option AutoConfigureLcm has invalid value $AutoConfigureLcm. Valid values are 'true','false'"
    }
}


if ($SetupCredential_username)
{
$SetupCredential_securepassword = $SetupCredential_password | ConvertTo-SecureString -asPlainText -Force
$SetupCredential = New-Object System.Management.Automation.PSCredential($SetupCredential_username,$SetupCredential_securepassword)
}

if ($AgtSvcAccount_username)
{
$AgtSvcAccount_securepassword = $AgtSvcAccount_password | ConvertTo-SecureString -asPlainText -Force
$AgtSvcAccount = New-Object System.Management.Automation.PSCredential($AgtSvcAccount_username,$AgtSvcAccount_securepassword)
}

if ($ASSvcAccount_username)
{
$ASSvcAccount_securepassword = $ASSvcAccount_password | ConvertTo-SecureString -asPlainText -Force
$ASSvcAccount = New-Object System.Management.Automation.PSCredential($ASSvcAccount_username,$ASSvcAccount_securepassword)
}

if ($FTSvcAccount_username)
{
$FTSvcAccount_securepassword = $FTSvcAccount_password | ConvertTo-SecureString -asPlainText -Force
$FTSvcAccount = New-Object System.Management.Automation.PSCredential($FTSvcAccount_username,$FTSvcAccount_securepassword)
}

if ($ISSvcAccount_username)
{
$ISSvcAccount_securepassword = $ISSvcAccount_password | ConvertTo-SecureString -asPlainText -Force
$ISSvcAccount = New-Object System.Management.Automation.PSCredential($ISSvcAccount_username,$ISSvcAccount_securepassword)
}

if ($PsDscRunAsCredential_username)
{
$PsDscRunAsCredential_securepassword = $PsDscRunAsCredential_password | ConvertTo-SecureString -asPlainText -Force
$PsDscRunAsCredential = New-Object System.Management.Automation.PSCredential($PsDscRunAsCredential_username,$PsDscRunAsCredential_securepassword)
}

if ($RSSvcAccount_username)
{
$RSSvcAccount_securepassword = $RSSvcAccount_password | ConvertTo-SecureString -asPlainText -Force
$RSSvcAccount = New-Object System.Management.Automation.PSCredential($RSSvcAccount_username,$RSSvcAccount_securepassword)
}

if ($SAPwd_username)
{
$SAPwd_securepassword = $SAPwd_password | ConvertTo-SecureString -asPlainText -Force
$SAPwd = New-Object System.Management.Automation.PSCredential($SAPwd_username,$SAPwd_securepassword)
}

if ($SourceCredential_username)
{
$SourceCredential_securepassword = $SourceCredential_password | ConvertTo-SecureString -asPlainText -Force
$SourceCredential = New-Object System.Management.Automation.PSCredential($SourceCredential_username,$SourceCredential_securepassword)
}

if ($SQLSvcAccount_username)
{
$SQLSvcAccount_securepassword = $SQLSvcAccount_password | ConvertTo-SecureString -asPlainText -Force
$SQLSvcAccount = New-Object System.Management.Automation.PSCredential($SQLSvcAccount_username,$SQLSvcAccount_securepassword)
}

$DscResourceName = "xSQLServerSetup"

$DscModuleName = "xSQLServer"

#This code comes from powershell2_dscresourceverify.ps1 in the DSC-->Ansible codegen tool

#Verify powershell version
if (($psversiontable.psversion.major -ge 5) -and ($psversiontable.psversion.build -ge 10018))
{
	#Do nothing
}
Else
{
	Fail-Json $result "Local powershell version is not at the reuired version (found version $($Psversiontable.psversion.tostring()) )"
}

if ($AutoInstallModule)
{
    $AutoInstallModule = $AutoInstallModule | convertto-bool
}


$ResourceExists = Get-DscResource $dscresourcename -ErrorAction SilentlyContinue

if (!$ResourceExists)
{
    #Download the module containing the resource if that's allowed
    if ($AutoInstallModule | convertto-bool)
    {
        #USe find-package to auto-install the nuget binaries
        Find-Package something -ForceBootstrap -ErrorAction SilentlyContinue | out-null
        $res = Find-dscresource $dscresourcename
        install-module $res.modulename -force
        Set-Attr $result "AutoInstalledModule" $res.modulename
    }
    
    $ResourceExists = Get-DscResource $dscresourcename -ErrorAction SilentlyContinue
}

if (!$ResourceExists)
{
    Fail-Json $result "Unable to locate DSC module $dscmodulename and/or DSC resource $dscresourcename"
}

#Check that LCM is in the right status
$Lcm = Get-DscLocalConfigurationManager
if (($lcm.RefreshMode) -eq "Disabled")
{
    #All good
}
Else
{
    if (($autoconfigureLcm | convertto-bool) -eq $true)
    {
        $refreshmode = "Disabled"
        #Reconfigure LCM
        [DscLocalConfigurationManager()]
        Configuration Meta {
               Settings {
                   RefreshMode = $RefreshMode
               }
        }
        try
        {
            & meta
            Set-DscLocalConfigurationManager -Path .\Meta  -ErrorAction Stop -ErrorVariable lcmerror
    
        }
        Catch
        {
            Fail-json $result "Error reconfiguring LCM" 
        }
    }
    Else
    {
        Fail-json $result "DSC Local Configuration Manager is not set to disabled. Set the module option AutoConfigureLcm to True in order to auto-configure LCM" 
    }

}

#$Attributes = $params | get-member | where {$_.MemberTYpe -eq "noteproperty"}  | select -ExpandProperty Name
#$Attributes = $attributes | where {$_ -ne "autoinstallmodule"}
#$Attributes = $attributes | where {$_ -ne "AutoConfigureLcm"}
#$Attributes = $attributes | where {$_ -notlike "_ansible*"}
$Attributes = $params.GetEnumerator() | where {$_.key -ne "resource_name"} | where {$_.key -notlike "_ansible_*"} | where {$_.key -notlike "AutoInstallModule"} | where {$_.key -notlike "AutoConfigureLcm"}



if (!($Attributes))
{
    Fail-Json -obj $result -message "No attributes specified"
}

#Always return the name
set-attr -obj $result -name "resource_name" -value $dscresourcename
set-attr -obj $result -name "Attributes" -value $Attributes

$Attrib = @{}

<#
$params.Keys | foreach-object {
    $Attrib.Add($_,$params.Item($_))
    set-attr -obj $result -name $_ -value $params.Item($_)
    }
#>

$CheckMode = $False
$CheckFlag = $params.psobject.Properties | where {$_.Name -eq "_ansible_check_mode"}
if ($CheckFlag)
{
    if (($CheckFlag.Value) -eq $True)
    {
        $CheckMode = $True    
    }
    
}

#$Keys = $params.psobject.Properties | where {$_.MemberTYpe -eq "Noteproperty"} | where {$_.Name -ne "resource_name"} |where {$_.Name -ne "autoinstallmodule"} |where {$_.Name -ne "autoconfigurelcm"} | where {$_.Name -notlike "_ansible*"} |  select -ExpandProperty Name
#foreach ($key in $keys)
#{
#    $Attrib.add($key, ($params.$key))
#    set-attr -obj $result -name $key -value ($params.$key)
#}

foreach ($key in $Attributes)
{
    set-attr -obj $result -name $key.name -value $key.value
    $Attrib.Add($Key.Key,$Key.Value)
}

$Config = @{
   Name = ($dscresourcename)
   Property = @{
        }
    }


$Resource = Get-DscResource -Name $dscresourcename -ErrorAction SilentlyContinue
if (!$Resource)
{
    Fail-Json -obj $result -message "Resource $dscresourcename not found"
}

#Convert params to correct datatype and inject
#Convert params to correct datatype and inject
$attrib.Keys | foreach-object {
    $Key = $_.replace("item_name", "name")
    $prop = $resource.Properties | where {$_.Name -eq $key}
    if (!$prop)
    {
        #If its a credential specified as "credential", Ansible will support credential_username and credential_password. Need to check for that
        $prop = $resource.Properties | where {$_.Name -eq $key.Replace("_username","")}
        if ($prop)
        {
            #We need to construct a cred object. At this point keyvalue is the username, so grab the password
            $PropUserNameValue = $attrib.Item($_)
            $PropPassword = $key.Replace("_username","_password")
            $PropPasswordValue = $attrib.$PropPassword

            $cred = New-Object System.Management.Automation.PSCredential ($PropUserNameValue, ($PropPasswordValue | ConvertTo-SecureString -AsPlainText -Force))
            [System.Management.Automation.PSCredential]$KeyValue = $cred
            $config.Property.Add($key.Replace("_username",""),$KeyValue)
        }
        ElseIf ($key.Contains("_password"))
        {
            #Do nothing. We suck in the password in the handler for _username, so we can just skip it.
        }
        Else
        {
            Fail-Json -obj $result -message "Property $key in resource $dscresourcename is not a valid property"
        }
        
    }
    ElseIf ($prop.PropertyType -eq "[string]")
    {
        [String]$KeyValue = $attrib.Item($_)
        $config.Property.Add($key,$KeyValue)
    }
    ElseIf ($prop.PropertyType -eq "[string[]]")
    {
        #KeyValue is an array of strings
        [String]$TempKeyValue = $attrib.Item($_)
        [String[]]$KeyValue = $TempKeyValue.Split(",").Trim()

        $config.Property.Add($key,$KeyValue)
    }
    ElseIf ($prop.PropertyType -eq "[UInt32[]]")
    {
        #KeyValue is an array of integers
        [String]$TempKeyValue = $attrib.Item($_)
        [UInt32[]]$KeyValue = $attrib.Item($_.split(",").Trim())
        $config.Property.Add($key,$KeyValue)
    }
    ElseIf ($prop.PropertyType -eq "[bool]")
    {
        if ($attrib.Item($_) -like "true")
        {
            [bool]$KeyValue = $true
        }
        ElseIf ($attrib.Item($_) -like "false")
        {
            [bool]$KeyValue = $false
        }
        $config.Property.Add($key,$KeyValue)
    }
    ElseIf ($prop.PropertyType -eq "[int]")
    {
        [int]$KeyValue = $attrib.Item($_)
        $config.Property.Add($key,$KeyValue)
    }
    ElseIf ($prop.PropertyType -eq "[UInt32]")
    {
        [UInt32]$KeyValue = $attrib.Item($_)
        $config.Property.Add($key,$KeyValue)
    }
    ElseIf ($prop.PropertyType -eq "[CimInstance[]]")
    {
      #KeyValue is an array of CimInstance
      [CimInstance[]]$KeyVal = @()
      [String]$TempKeyValue = $attrib.Item($_)
      #Need to split on the string }, because some property values have commas in them
      [String[]]$KeyValueStr = $TempKeyValue -split("},")
      #Go through each string of properties and create a hash of them
      foreach($str in $KeyValueStr)
      {
        [string[]]$properties = $str.Split("{")[1].Replace("}","").Trim().Split([environment]::NewLine).Trim()
        $prph = @{}
        foreach($p in $properties)
        {
          $pArr = $p -split "="
          #if the value can be an int we must convert it to an int
          if([bool]($pArr[1] -as [int] -is [int]))
          {
              $prph.Add($pArr[0].Trim(),$pArr[1].Trim() -as [int])
          }
          else
          {
              $prph.Add($pArr[0].Trim(),$pArr[1].Trim())
          }
        }
        #create the new CimInstance
        $cim = New-CimInstance -ClassName $str.Split("{")[0].Trim() -Property $prph -ClientOnly
        #add the new CimInstance to the array
        $KeyVal += $cim
      }
      $config.Property.Add($key,$KeyVal)
    }
  }

try
{
    #Invoke WMF5 production preview differently than feb preview
    $TargetVersion = [version]::new("5.0.10514.6")
    if ($PSVersionTable.PSVersion.CompareTo($TargetVersion) -ge 0)
    {
        #Current hosts version is production prevoew or higher. Use modulename when invoking.
        if ($resource.ModuleName -ne $null)
        {
            $Params = @{"Modulename"=$resource.Modulename}    
        }
        else 
        {
            $Params = @{"Modulename"="PSDesiredStateConfiguration"}    
        }
        
    }
    else
    {
        $Params = @{}
    }

    $TestResult = Invoke-DscResource @Config -Method Test @params -ErrorVariable TestError -ErrorAction SilentlyContinue
    if ($TestError)
    {
       throw ($TestError[0].Exception.Message)
    }
    ElseIf (($testResult.InDesiredState) -ne $true) 
    {
        if ($CheckMode -eq $False)
        {
            $Set = Invoke-DscResource -Method Set @Config  @params -ErrorVariable SetError -ErrorAction SilentlyContinue
        }
        
        Set-Attr $result "changed" $true
        if ((get-variable | where {$_.Name -eq "seterror"}) -and ($SetError.Count -gt 0))
        {
           throw ($SetError[0].Exception.Message)
        }
    }

}
Catch
{
    Fail-Json -obj $result -message $_[0].Exception.Message
}


#set-attr -obj $result -name "property" -value $property
Exit-Json -obj $result




