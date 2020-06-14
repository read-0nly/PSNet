$trashFormat = @{}
$trashFore = @{}
$trashFore["Black"] = [char]27+"[30m" ; 
$trashFore["Red"] = [char]27+"[31m" ; 
$trashFore["Green"] = [char]27+"[32m" ; 
$trashFore["Yellow"] = [char]27+"[33m" ; 
$trashFore["Blue"] = [char]27+"[34m" ; 
$trashFore["Magenta"] = [char]27+"[35m" ; 
$trashFore["Cyan"] = [char]27+"[36m" ; 
$trashFore["White"] = [char]27+"[37m" ; 
$trashFore["Extended"] = [char]27+"[38m" ; 
$trashFore["Reset"] = [char]27+"[39m" ; 
$trashFore["Black+"] = [char]27+"[90m" ; 
$trashFore["Red+"] = [char]27+"[91m" ; 
$trashFore["Green+"] = [char]27+"[92m" ; 
$trashFore["Yellow+"] = [char]27+"[93m" ; 
$trashFore["Blue+"] = [char]27+"[94m" ; 
$trashFore["Magenta+"] = [char]27+"[95m" ; 
$trashFore["Cyan+"] = [char]27+"[96m" ; 
$trashFore["White+"] = [char]27+"[97m" ; 
$trashBack = @{}
$trashBack["Black"] = [char]27+"[40m" ;
$trashBack["Red"] = [char]27+"[41m" ;
$trashBack["Green"] = [char]27+"[42m" ;
$trashBack["Yellow"] = [char]27+"[43m" ;
$trashBack["Blue"] = [char]27+"[44m" ;
$trashBack["Magenta"] = [char]27+"[45m" ;
$trashBack["Cyan"] = [char]27+"[46m" ;
$trashBack["White"] = [char]27+"[47m" ;
$trashBack["Extended"] = [char]27+"[48m" ;
$trashBack["Reset"] = [char]27+"[49m" ;
$trashBack["Black+"] = [char]27+"[100m" ;
$trashBack["Red+"] = [char]27+"[101m" ;
$trashBack["Green+"] = [char]27+"[102m" ;
$trashBack["Yellow+"] = [char]27+"[103m" ;
$trashBack["Blue+"] = [char]27+"[104m" ;
$trashBack["Magenta+"] = [char]27+"[105m" ;
$trashBack["Cyan+"] = [char]27+"[106m" ;
$trashBack["White+"] = [char]27+"[107m" ; 
$trashStyle = @{}
$trashStyle["Bold"] = [char]27+"[1m";
$trashStyle["NoBold"] = [char]27+"[22m";
$trashStyle["Underline"] = [char]27+"[4m";
$trashStyle["NoUnderline"]=[char]27+"[24m";
$trashStyle["Negative"] = [char]27+"[7m";
$trashStyle["Positive"] = [char]27+"[27m";

$trashFormat["Fore"]=$trashFore
$trashFormat["Back"]=$trashBack
$trashFormat["Style"]$trashStyle
$trashFormat["ResetAll"] = [char]27+"[0m";
$Format=[pscustomobject]$trashFormat

<#This doesn't work when loaded through iwr - as far as I can tell there is literally no difference between the result of iwr and cat -raw

$Format = [pscustomobject]@{ `
    "Fore" = @{ "Black" = [char]27+"[30m" ; `
        "Red" = [char]27+"[31m" ; `
        "Green" = [char]27+"[32m" ; `
        "Yellow" = [char]27+"[33m" ; `
        "Blue" = [char]27+"[34m" ; `
        "Magenta" = [char]27+"[35m" ; `
        "Cyan" = [char]27+"[36m" ; `
        "White" = [char]27+"[37m" ; `
        "Extended" = [char]27+"[38m" ; `
        "Reset" = [char]27+"[39m" ; `
        "Black+" = [char]27+"[90m" ; `
        "Red+" = [char]27+"[91m" ; `
        "Green+" = [char]27+"[92m" ; `
        "Yellow+" = [char]27+"[93m" ; `
        "Blue+" = [char]27+"[94m" ; `
        "Magenta+" = [char]27+"[95m" ; `
        "Cyan+" = [char]27+"[96m" ; `
        "White+" = [char]27+"[97m" ;     
    }; 
    "Back" = @{ "Black" = [char]27+"[40m" ;
        "Red" = [char]27+"[41m" ;
        "Green" = [char]27+"[42m" ;
        "Yellow" = [char]27+"[43m" ;
        "Blue" = [char]27+"[44m" ;
        "Magenta" = [char]27+"[45m" ;
        "Cyan" = [char]27+"[46m" ;
        "White" = [char]27+"[47m" ;
        "Extended" = [char]27+"[48m" ;
        "Reset" = [char]27+"[49m" ;
        "Black+" = [char]27+"[100m" ;
        "Red+" = [char]27+"[101m" ;
        "Green+" = [char]27+"[102m" ;
        "Yellow+" = [char]27+"[103m" ;
        "Blue+" = [char]27+"[104m" ;
        "Magenta+" = [char]27+"[105m" ;
        "Cyan+" = [char]27+"[106m" ;
        "White+" = [char]27+"[107m" ;    
    
    }
    "Style" = @{ "Bold" = [char]27+"[1m";
        "NoBold" = [char]27+"[22m";
        "Underline" = [char]27+"[4m";
        "NoUnderline"=[char]27+"[24m";
        "Negative" = [char]27+"[7m";
        "Positive" = [char]27+"[27m";
    }
    "ResetAll" = [char]27+"[0m";
}
#>