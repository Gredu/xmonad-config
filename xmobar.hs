-- xmobar config used by Vic Fryzel
-- Author: Vic Fryzel
-- http://github.com/vicfryzel/xmonad-config

-- This is setup for dual 1920x1080 monitors, with the right monitor as primary
Config {
    font = "xft:Fixed-8",
    bgColor = "#1D1F21",
    fgColor = "#c5c8c6",
    position = Static { xpos = 1680, ypos = 0, width = 1680, height = 16 },
    lowerOnStart = True,
    commands = [
        Run Weather "EFHF" ["-t","<tempC>° <skyCondition>","-L","64","-H","77","-n","#CEFFAC","-h","#FFB6B0","-l","#96CBFE"] 36000,
        Run MultiCpu ["-t","cpu: <total0> <total1> <total2>","-L","30","-H","60","-h","#FFB6B0","-l","#CEFFAC","-n","#FFFFCC","-w","3"] 10,
        Run Memory ["-t","mem: <usedratio>%","-H","8192","-L","4096","-h","#FFB6B0","-l","#CEFFAC","-n","#FFFFCC"] 10,
        Run Swap ["-t","swap: <usedratio>%","-H","1024","-L","512","-h","#FFB6B0","-l","#CEFFAC","-n","#FFFFCC"] 10,
        Run Network "enp2s0" ["-t","net: <rx>, <tx>","-H","200","-L","10","-h","#FFB6B0","-l","#CEFFAC","-n","#FFFFCC"] 10,
        Run Date "%a %b %_d %l:%M" "date" 10,
        Run DiskU [("/", "<used>/<size>"), ("/home/greatman", "<usedbar>")]
            ["-L", "20", "-H", "50", "-m", "1", "-p", "3"]
            20,
        Run StdinReader
    ],
    sepChar = "%",
    alignSep = "}{",
    -- template = "%StdinReader% }{ %multicpu%   %memory%   %swap%   %DiskU%   %enp2s0%   <fc=#FFFFCC>%date%</fc>   %EFHF%"
    template = "%StdinReader% }{ %multicpu%   %memory%   %swap%   %enp2s0%   <fc=#FFFFCC>%date%</fc>   %EFHF%"
}
