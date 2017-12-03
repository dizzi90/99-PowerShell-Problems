### Problem 4: find the number of elements of a list
function Get-LengthOfList
{
	[CmdLetBinding()]
	Param
	(
		[Parameter(Mandatory)][String[]]$List
	)
	Process
	{
		$List.Count
	}
}