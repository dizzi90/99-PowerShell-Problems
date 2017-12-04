### Problem 5: reverse a list
function Format-ReverseOrder
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