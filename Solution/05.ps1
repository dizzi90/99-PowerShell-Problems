### Problem 5: reverse a list
function Sort-ReverseOrder
{
[CmdLetBinding()]
	Param
	(
		[Parameter(Mandatory)][String[]]$List
	)
	Process
	{
		[array]::Reverse($List)
		$List
	}
}