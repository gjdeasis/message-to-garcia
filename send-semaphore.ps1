<#
.SYNOPSIS
	Translates the given message to semaphore from the sender’s perspective.
	This file is part of the Message to Garcia Project to help Girl Scouts studying for the Gathering of All Mariners (GAM) competition.
.PARAMETER text
	Specifies the text to translate
.EXAMPLE
	PS> ./send-semaphore "Hello World"
#>

param([string]$text = "")

function SemaphoreA { param([int]$Row)
	switch($Row) {
	1 { return "   " }
	2 { return " |\" }
	}
}

function SemaphoreB { param([int]$Row)
	switch($Row) {
	1 { return "  _" }
	2 { return " | " }
	}
}

function SemaphoreC { param([int]$Row)
	switch($Row) {
	1 { return "  /" }
	2 { return " | " }
	}
}

function SemaphoreD { param([int]$Row)
	switch($Row) {
	1 { return " | " }
	2 { return " | " }
	}
}

function SemaphoreE { param([int]$Row)
	switch($Row) {
	1 { return "\  " }
	2 { return " | " }
	}
}

function SemaphoreF { param([int]$Row)
	switch($Row) {
	1 { return "_  " }
	2 { return " | " }
	}
}

function SemaphoreG { param([int]$Row)
	switch($Row) {
	1 { return "   " }
	2 { return "/| " }
	}
}

function SemaphoreH { param([int]$Row)
	switch($Row) {
	1 { return "  _" }
	2 { return "  \" }
	}
}

function SemaphoreI { param([int]$Row)
	switch($Row) {
	1 { return "  /" }
	2 { return "  \" }
	}
}

function SemaphoreJ { param([int]$Row)
	switch($Row) {
	1 { return " | " }
	2 { return "  -" }
	}
}

function SemaphoreK { param([int]$Row)
	switch($Row) {
	1 { return " | " }
	2 { return "  \" }
	}
}

function SemaphoreL { param([int]$Row)
	switch($Row) {
	1 { return "\  " }
	2 { return "  \" }
	}
}

function SemaphoreM { param([int]$Row)
	switch($Row) {
	1 { return "_  " }
	2 { return " \ " }
	}
}

function SemaphoreN { param([int]$Row)
	switch($Row) {
	1 { return "   " }
	2 { return "/ \" }
	}
}

function SemaphoreO { param([int]$Row)
	switch($Row) {
	1 { return "  /" }
	2 { return "  -" }
	}
}

function SemaphoreP { param([int]$Row)
	switch($Row) {
	1 { return " | " }
	2 { return "  -" }
	}
}

function SemaphoreQ { param([int]$Row)
	switch($Row) {
	1 { return "\ _" }
	2 { return "   " }
	}
}

function SemaphoreR { param([int]$Row)
	switch($Row) {
	1 { return "_ _" }
	2 { return "   " }
	}
}

function SemaphoreS { param([int]$Row)
	switch($Row) {
	1 { return "  _" }
	2 { return "/  " }
	}
}

function SemaphoreT { param([int]$Row)
	switch($Row) {
	1 { return " |/" }
	2 { return "   " }
	}
}

function SemaphoreU { param([int]$Row)
	switch($Row) {
	1 { return "\ /" }
	2 { return "   " }
	}
}

function SemaphoreV { param([int]$Row)
	switch($Row) {
	1 { return " | " }
	2 { return "/  " }
	}
}

function SemaphoreW { param([int]$Row)
	switch($Row) {
	1 { return "\  " }
	2 { return "-  " }
	}
}

function SemaphoreX { param([int]$Row)
	switch($Row) {
	1 { return "\  " }
	2 { return "/  " }
	}
}

function SemaphoreY { param([int]$Row)
	switch($Row) {
	1 { return "_ /" }
	2 { return "   " }
	}
}

function SemaphoreZ { param([int]$Row)
	switch($Row) {
	1 { return "_  " }
	2 { return "/  " }
	}
}

function SemaphoreSpace { param([int]$Row)
	switch($Row) {
	1 { return "      " }
	2 { return "  ||  " }
	}
}


function SemaphoreChar { param([string]$Char, [int]$Row)
	switch($Char) {
	'A' { return SemaphoreA $Row }
	'B' { return SemaphoreB $Row }
	'C' { return SemaphoreC $Row }
	'D' { return SemaphoreD $Row }
	'E' { return SemaphoreE $Row }
	'F' { return SemaphoreF $Row }
	'G' { return SemaphoreG $Row }
	'H' { return SemaphoreH $Row }
	'I' { return SemaphoreI $Row }
	'J' { return SemaphoreJ $Row }
	'K' { return SemaphoreK $Row }
	'L' { return SemaphoreL $Row }
	'M' { return SemaphoreM $Row }
	'N' { return SemaphoreN $Row }
	'O' { return SemaphoreO $Row }
	'P' { return SemaphoreP $Row }
	'Q' { return SemaphoreQ $Row }
	'R' { return SemaphoreR $Row }
	'S' { return SemaphoreS $Row }
	'T' { return SemaphoreT $Row }
	'U' { return SemaphoreU $Row }
	'V' { return SemaphoreV $Row }
	'W' { return SemaphoreW $Row }
	'X' { return SemaphoreX $Row }
	'Y' { return SemaphoreY $Row }
	'Z' { return SemaphoreZ $Row }
	}
	return SemaphoreSpace $Row
}

try {
	if ($text -eq "" ) { $text = read-host "Enter text to write" }

	[char[]]$ArrayOfChars = $text.ToUpper()
	write-output ""
	for ($Row = 1; $Row -lt 3; $Row++) {
		$Line = ""
		foreach($Char in $ArrayOfChars) {
			$Line += SemaphoreChar $Char $Row
			$Line += "  "
		}
		write-output $Line
	}
	write-output ""
	exit 0 # success
} catch {
	"⚠️ Error in line $($_.InvocationInfo.ScriptLineNumber): $($Error[0])"
	exit 1
}