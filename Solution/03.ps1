### Problem 3: find the K'th element of a list
function Get-ElementOfList
{
	[CmdLetBinding()]
	Param
	(
		[Parameter(Mandatory)][String[]]$List,
		[Parameter(Mandatory)][Int]$Number
	)
	Process
	{
		$List[$Number-1]
	}
}