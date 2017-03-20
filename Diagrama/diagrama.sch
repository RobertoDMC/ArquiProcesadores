<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="clk_RAM" />
        <signal name="reset" />
        <port polarity="Output" name="clk_RAM" />
        <port polarity="Output" name="reset" />
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <rect width="640" x="452" y="532" height="504" />
        <text style="fontsize:44;fontname:Arial" x="712" y="780">CU</text>
        <text style="alignment:CENTER;fontsize:44;fontname:Arial" x="1760" y="220">CONTROL REGISTERS</text>
        <rect width="656" x="1416" y="68" height="328" />
        <rect width="516" x="2656" y="460" height="940" />
        <text style="fontsize:44;fontname:Arial" x="2872" y="912">RAM</text>
        <rect width="632" x="1352" y="1796" height="416" />
        <rect width="260" x="1352" y="1580" height="76" />
        <rect width="240" x="1748" y="1572" height="92" />
        <text style="fontsize:44;fontname:Arial" x="1608" y="2004">ALU</text>
        <text style="fontsize:44;fontname:Arial" x="1456" y="1620">RA</text>
        <text style="fontsize:44;fontname:Arial" x="1860" y="1620">RB</text>
        <rect width="372" x="1480" y="2356" height="88" />
        <text style="fontsize:44;fontname:Arial" x="1632" y="2400">RC</text>
        <branch name="clk_RAM">
            <wire x2="2656" y1="1024" y2="1024" x1="1088" />
        </branch>
        <iomarker fontsize="28" x="2656" y="1024" name="clk_RAM" orien="R0" />
        <iomarker fontsize="28" x="1088" y="1024" name="clk_RAM" orien="R180" />
        <branch name="reset">
            <wire x2="1200" y1="976" y2="976" x1="1088" />
            <wire x2="1296" y1="976" y2="976" x1="1200" />
            <wire x2="1376" y1="976" y2="976" x1="1296" />
            <wire x2="1376" y1="976" y2="1584" x1="1376" />
            <wire x2="1776" y1="976" y2="976" x1="1376" />
            <wire x2="2656" y1="976" y2="976" x1="1776" />
            <wire x2="1776" y1="976" y2="1568" x1="1776" />
            <wire x2="1200" y1="976" y2="2368" x1="1200" />
            <wire x2="1488" y1="2368" y2="2368" x1="1200" />
            <wire x2="1296" y1="352" y2="976" x1="1296" />
            <wire x2="1408" y1="352" y2="352" x1="1296" />
        </branch>
        <iomarker fontsize="28" x="1088" y="976" name="reset" orien="R180" />
        <iomarker fontsize="28" x="2656" y="976" name="reset" orien="R0" />
    </sheet>
</drawing>