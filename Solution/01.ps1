# Problem 1: find the last element of a list
function Get-LastElementOfList
{
[CmdLetBinding()]
	Param
	(
		[Parameter(Mandatory)][String[]]$List
	)
	Process
	{
		$List[-1]
	}
}
