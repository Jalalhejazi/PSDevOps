﻿@{
    ModuleVersion = '0.3.2'
    RootModule = 'PSDevOps.psm1'
    Description = 'PowerShell Tools for DevOps'
    Guid = 'e6b56c5f-41ac-4ba4-8b88-2c063f683176'
    PrivateData = @{
        PSData = @{
            Tags = 'ADO', 'AzureDevOps', 'PSDevOps', 'DevOps'
            ProjectURI = 'https://github.com/StartAutomating/PSDevOps'
            LicenseURI = 'https://github.com/StartAutomating/PSDevOps/blob/master/LICENSE'
            ReleaseNotes = @'
0.3.2
---
* Pester workarounds - Steps/InstallPester and Steps/RunPester now accept a PesterMaxVersion (defaulting to 4.99.99)
* Convert-BuildStep handles blank parameter defaults correctly
* Get-ADOBuild can get yaml definitions directly, e.g Get-ADOBuild -DefinitionID 123 -DefinitionYaml
0.3.1
---
* Bugfixes and Improvements to Convert/Import/Expand-BuildStep:
1. Enforcing pluralization of certain fields within Azure DevOps
2. Handling [string[]], [int[]], [float[]], or [ScriptBlock] parameters
* Allowing lists of primitives to not be indented in YAML.
0.3.0
---
* Added Convert/Import/Expand-BuildStep
* Allowing build steps to be defined in functions
* Automagically importing build step parameters
0.2.9
---
* Get/New/Remove-ADORepository
* Get/New/Remove-ADOServiceEndpoint
* Get-ADOAgentPool
** Improvements to New-ADOPipeline to avoid unexpected singletons 
0.2.8
---
* Get/New/Update-ADOBuild
* Improving New-ADOPipeline:
** Unknown -InputObject properties will no longer be pluralized
** Added 'Pool' to list of known singletons
0.2.7
---
* New Cmdlet: Set-ADOArtifactFeed
* Improvements to New/Get/Remove-ADOArtifactFeed (better pipelining, renaming -FullyQualifiedID to -FeedID)
0.2.6
---
* New Cmdlets:
** New/Get/Remove-ADOArtifactFeed
** New/Remove-ADOProject
** New-GitHubAction
0.2.5
---
* Improving Get-ADOWorkItem:
** -Title allows getting work items by title
** -NoDetail allows for queries to only return IDs
** Passing -Field will skip formatting
** WorkItemsBatch will be used for query results.
** Passing an old -ApiVersion will not use workItemsBatch
** Formatting improved
* Adding Get-ADOWorkProcess
* Fixing issues with -ADOField commands when not provided a -Project
0.2.4
---
* Adding Adding -CanSortBy, -IsQueryable, and -ReadOnly to New-ADOField.
* Adding parameter help to New-ADOField
0.2.3
---
* Adding New/Remove-ADOField
* Adding help to Get-ADOField
* Adding formatting for fields
0.2.2
---
* Adding New/Set/Remove-ADOWorkItem
* Adding Get-ADOField
* New Parameter: Get-ADOWorkItem -WorkItemType
* New Parameter: New-ADOPipeline -Option
* Initial formatting
* Switching Parts to use latest VMImage

0.2.1 :
* Added Get-ADOWorkItem
---
0.2   :
---
* Added Invoke-ADORestAPI
0.1    :
---
Initial Commit
'@
        }
        Colors = @{
            Build = @{
                Succeeded = '#00ff00'
                Failed = '#ff0000'
            }
        }
    }
    FormatsToProcess = 'PSDevOps.format.ps1xml'
    TypesToProcess = 'PSDevOps.types.ps1xml'
    Author = 'James Brundage'
    Copyright = '2019 Start-Automating'
    PowerShellVersion ='3.0'
}