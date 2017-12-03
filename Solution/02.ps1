### Problem 2: find the last but one element of a list
function Get-PenultimateElementOfList
{
	[CmdLetBinding()]
	Param
	(
		[Parameter(Mandatory)][String[]]$List
	)
	Process
	{
		$List[-2]
	}
}
