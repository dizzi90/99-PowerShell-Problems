### Problem 6: find out whether a list is a palindrome

function Confirm-Palindrome
{
	[CmdLetBinding()]
	Param
	(
		[Parameter()][Object[]]$List
	)
	Process
	{
		$ReversedList = $List.Clone()
		[array]::Reverse($ReversedList)
		$parameter = @{
			SyncWindow       = 0
			ReferenceObject  = $List
			DifferenceObject = $ReversedList
		}
		if (Compare-Object @parameter)
		{
			$false
		}
		else
		{
			$true
		}
	}
}

