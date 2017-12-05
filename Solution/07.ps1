### Problem 7 flatten a nested list
function Optimize-NestedToFlat
{
[CmdLetBinding()]
	Param
	(
		[Parameter()]	[String[]]	$List
	)
	Process
	{
		foreach ($Element in $List)
		{
			if ($Element.GetType().BaseType -eq [System.Array])
			{
				foreach ($SubElement in $Element)
				{
					$SubElement
				}
			}
			else
			{
				$Element
			}
		}
	}
}