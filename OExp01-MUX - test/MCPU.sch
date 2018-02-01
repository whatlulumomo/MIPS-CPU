<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="kintex7" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_1" />
        <signal name="XLXN_2" />
        <signal name="XLXN_3" />
        <signal name="XLXN_4" />
        <signal name="XLXN_5" />
        <signal name="XLXN_6" />
        <signal name="XLXN_7" />
        <signal name="XLXN_8(1:0)" />
        <signal name="XLXN_9(1:0)" />
        <signal name="XLXN_10(1:0)" />
        <signal name="XLXN_11(1:0)" />
        <signal name="XLXN_12(2:0)" />
        <signal name="CPU_MIO" />
        <signal name="PC_out(31:0)" />
        <signal name="inst_out(31:0)" />
        <signal name="Data_out(31:0)" />
        <signal name="Addr_out(31:0)" />
        <signal name="XLXN_18" />
        <signal name="MIO_ready" />
        <signal name="clk" />
        <signal name="reset" />
        <signal name="XLXN_25" />
        <signal name="Data_in(31:0)" />
        <signal name="state(4:0)" />
        <signal name="XLXN_28" />
        <signal name="XLXN_29" />
        <signal name="XLXN_30" />
        <signal name="mem_w" />
        <signal name="INT" />
        <port polarity="Output" name="CPU_MIO" />
        <port polarity="Output" name="PC_out(31:0)" />
        <port polarity="Output" name="inst_out(31:0)" />
        <port polarity="Output" name="Data_out(31:0)" />
        <port polarity="Output" name="Addr_out(31:0)" />
        <port polarity="Input" name="MIO_ready" />
        <port polarity="Input" name="clk" />
        <port polarity="Input" name="reset" />
        <port polarity="Input" name="Data_in(31:0)" />
        <port polarity="Output" name="state(4:0)" />
        <port polarity="Output" name="mem_w" />
        <port polarity="Input" name="INT" />
        <blockdef name="MCtrl">
            <timestamp>2017-5-1T12:43:0</timestamp>
            <rect style="fillcolor:rgb(255,170,255);fillstyle:Solid" width="352" x="64" y="-1024" height="1024" />
            <line x2="0" y1="-608" y2="-608" x1="64" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-32" y2="-32" style="linewidth:W" x1="64" />
            <line x2="480" y1="-992" y2="-992" x1="416" />
            <line x2="480" y1="-928" y2="-928" x1="416" />
            <line x2="480" y1="-864" y2="-864" x1="416" />
            <line x2="480" y1="-800" y2="-800" x1="416" />
            <line x2="480" y1="-736" y2="-736" x1="416" />
            <line x2="480" y1="-672" y2="-672" x1="416" />
            <line x2="480" y1="-608" y2="-608" x1="416" />
            <line x2="480" y1="-544" y2="-544" x1="416" />
            <line x2="480" y1="-480" y2="-480" x1="416" />
            <line x2="480" y1="-416" y2="-416" x1="416" />
            <line x2="480" y1="-352" y2="-352" style="linewidth:W" x1="416" />
            <line x2="480" y1="-288" y2="-288" style="linewidth:W" x1="416" />
            <line x2="480" y1="-224" y2="-224" style="linewidth:W" x1="416" />
            <line x2="480" y1="-160" y2="-160" style="linewidth:W" x1="416" />
            <line x2="480" y1="-96" y2="-96" style="linewidth:W" x1="416" />
            <line x2="480" y1="-32" y2="-32" style="linewidth:W" x1="416" />
            <line x2="0" y1="-752" y2="-752" x1="64" />
            <line x2="0" y1="-960" y2="-960" x1="64" />
        </blockdef>
        <blockdef name="MDPath">
            <timestamp>2017-5-1T12:41:0</timestamp>
            <rect style="fillcolor:rgb(0,255,255);fillstyle:Solid" width="400" x="64" y="-1024" height="1024" />
            <line x2="0" y1="-992" y2="-992" x1="64" />
            <line x2="0" y1="-928" y2="-928" x1="64" />
            <line x2="0" y1="-864" y2="-864" x1="64" />
            <line x2="0" y1="-800" y2="-800" x1="64" />
            <line x2="0" y1="-736" y2="-736" x1="64" />
            <line x2="0" y1="-672" y2="-672" x1="64" />
            <line x2="0" y1="-608" y2="-608" x1="64" />
            <line x2="0" y1="-544" y2="-544" x1="64" />
            <line x2="0" y1="-480" y2="-480" x1="64" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <line x2="0" y1="-352" y2="-352" style="linewidth:W" x1="64" />
            <line x2="0" y1="-288" y2="-288" style="linewidth:W" x1="64" />
            <line x2="0" y1="-224" y2="-224" style="linewidth:W" x1="64" />
            <line x2="0" y1="-160" y2="-160" style="linewidth:W" x1="64" />
            <line x2="0" y1="-96" y2="-96" style="linewidth:W" x1="64" />
            <line x2="0" y1="-32" y2="-32" style="linewidth:W" x1="64" />
            <line x2="528" y1="-992" y2="-992" x1="464" />
            <line x2="528" y1="-800" y2="-800" x1="464" />
            <line x2="528" y1="-608" y2="-608" style="linewidth:W" x1="464" />
            <line x2="528" y1="-416" y2="-416" style="linewidth:W" x1="464" />
            <line x2="528" y1="-224" y2="-224" style="linewidth:W" x1="464" />
            <line x2="528" y1="-32" y2="-32" style="linewidth:W" x1="464" />
        </blockdef>
        <blockdef name="inv">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="160" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="-64" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="0" x1="128" />
            <line x2="64" y1="0" y2="-64" x1="64" />
            <circle r="16" cx="144" cy="-32" />
        </blockdef>
        <blockdef name="and2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="192" y1="-96" y2="-96" x1="256" />
            <arc ex="144" ey="-144" sx="144" sy="-48" r="48" cx="144" cy="-96" />
            <line x2="64" y1="-48" y2="-48" x1="144" />
            <line x2="144" y1="-144" y2="-144" x1="64" />
            <line x2="64" y1="-48" y2="-144" x1="64" />
        </blockdef>
        <block symbolname="MCtrl" name="XLXI_1">
            <blockpin signalname="XLXN_25" name="zero" />
            <blockpin signalname="XLXN_18" name="overflow" />
            <blockpin signalname="MIO_ready" name="MIO_ready" />
            <blockpin signalname="inst_out(31:0)" name="Inst_in(31:0)" />
            <blockpin signalname="XLXN_28" name="MemRead" />
            <blockpin signalname="XLXN_29" name="MemWrite" />
            <blockpin signalname="CPU_MIO" name="CPU_MIO" />
            <blockpin signalname="XLXN_1" name="IorD" />
            <blockpin signalname="XLXN_2" name="IRWrite" />
            <blockpin signalname="XLXN_3" name="RegWrite" />
            <blockpin signalname="XLXN_4" name="ALUSrcA" />
            <blockpin signalname="XLXN_5" name="PCWrite" />
            <blockpin signalname="XLXN_6" name="PCWriteCond" />
            <blockpin signalname="XLXN_7" name="Branch" />
            <blockpin signalname="XLXN_8(1:0)" name="RegDst(1:0)" />
            <blockpin signalname="XLXN_9(1:0)" name="MemtoReg(1:0)" />
            <blockpin signalname="XLXN_10(1:0)" name="ALUSrcB(1:0)" />
            <blockpin signalname="XLXN_11(1:0)" name="PCSource(1:0)" />
            <blockpin signalname="XLXN_12(2:0)" name="ALU_operation(2:0)" />
            <blockpin signalname="state(4:0)" name="state_out(4:0)" />
            <blockpin signalname="reset" name="reset" />
            <blockpin signalname="clk" name="clk" />
        </block>
        <block symbolname="MDPath" name="XLXI_3">
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="reset" name="reset" />
            <blockpin signalname="MIO_ready" name="MIO_ready" />
            <blockpin signalname="XLXN_1" name="IorD" />
            <blockpin signalname="XLXN_2" name="IRWrite" />
            <blockpin signalname="XLXN_3" name="RegWrite" />
            <blockpin signalname="XLXN_4" name="ALUSrcA" />
            <blockpin signalname="XLXN_5" name="PCWrite" />
            <blockpin signalname="XLXN_6" name="PCWriteCond" />
            <blockpin signalname="XLXN_7" name="Branch" />
            <blockpin signalname="XLXN_8(1:0)" name="RegDst(1:0)" />
            <blockpin signalname="XLXN_9(1:0)" name="MemtoReg(1:0)" />
            <blockpin signalname="XLXN_10(1:0)" name="ALUSrcB(1:0)" />
            <blockpin signalname="XLXN_11(1:0)" name="PCSource(1:0)" />
            <blockpin signalname="XLXN_12(2:0)" name="ALU_operation(2:0)" />
            <blockpin signalname="Data_in(31:0)" name="data2CPU(31:0)" />
            <blockpin signalname="XLXN_25" name="zero" />
            <blockpin signalname="XLXN_18" name="overflow" />
            <blockpin signalname="PC_out(31:0)" name="PC_Current(31:0)" />
            <blockpin signalname="inst_out(31:0)" name="Inst(31:0)" />
            <blockpin signalname="Data_out(31:0)" name="data_out(31:0)" />
            <blockpin signalname="Addr_out(31:0)" name="M_addr(31:0)" />
        </block>
        <block symbolname="inv" name="XLXI_4">
            <blockpin signalname="XLXN_28" name="I" />
            <blockpin signalname="XLXN_30" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_5">
            <blockpin signalname="XLXN_29" name="I0" />
            <blockpin signalname="XLXN_30" name="I1" />
            <blockpin signalname="mem_w" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="864" y="2288" name="XLXI_1" orien="R0">
        </instance>
        <instance x="1760" y="2288" name="XLXI_3" orien="R0">
        </instance>
        <branch name="XLXN_1">
            <wire x2="1760" y1="1488" y2="1488" x1="1344" />
        </branch>
        <branch name="XLXN_2">
            <wire x2="1760" y1="1552" y2="1552" x1="1344" />
        </branch>
        <branch name="XLXN_3">
            <wire x2="1760" y1="1616" y2="1616" x1="1344" />
        </branch>
        <branch name="XLXN_4">
            <wire x2="1760" y1="1680" y2="1680" x1="1344" />
        </branch>
        <branch name="XLXN_5">
            <wire x2="1760" y1="1744" y2="1744" x1="1344" />
        </branch>
        <branch name="XLXN_6">
            <wire x2="1760" y1="1808" y2="1808" x1="1344" />
        </branch>
        <branch name="XLXN_7">
            <wire x2="1760" y1="1872" y2="1872" x1="1344" />
        </branch>
        <branch name="XLXN_8(1:0)">
            <wire x2="1760" y1="1936" y2="1936" x1="1344" />
        </branch>
        <branch name="XLXN_9(1:0)">
            <wire x2="1760" y1="2000" y2="2000" x1="1344" />
        </branch>
        <branch name="XLXN_10(1:0)">
            <wire x2="1760" y1="2064" y2="2064" x1="1344" />
        </branch>
        <branch name="XLXN_11(1:0)">
            <wire x2="1760" y1="2128" y2="2128" x1="1344" />
        </branch>
        <branch name="XLXN_12(2:0)">
            <wire x2="1760" y1="2192" y2="2192" x1="1344" />
        </branch>
        <branch name="CPU_MIO">
            <wire x2="1440" y1="1424" y2="1424" x1="1344" />
            <wire x2="1440" y1="1424" y2="2384" x1="1440" />
            <wire x2="2832" y1="2384" y2="2384" x1="1440" />
        </branch>
        <branch name="PC_out(31:0)">
            <wire x2="2832" y1="1680" y2="1680" x1="2288" />
        </branch>
        <branch name="inst_out(31:0)">
            <wire x2="816" y1="2256" y2="2432" x1="816" />
            <wire x2="2368" y1="2432" y2="2432" x1="816" />
            <wire x2="864" y1="2256" y2="2256" x1="816" />
            <wire x2="2368" y1="1872" y2="1872" x1="2288" />
            <wire x2="2832" y1="1872" y2="1872" x1="2368" />
            <wire x2="2368" y1="1872" y2="2432" x1="2368" />
        </branch>
        <branch name="Data_out(31:0)">
            <wire x2="2832" y1="2064" y2="2064" x1="2288" />
        </branch>
        <branch name="Addr_out(31:0)">
            <wire x2="2832" y1="2256" y2="2256" x1="2288" />
        </branch>
        <branch name="XLXN_18">
            <wire x2="704" y1="1872" y2="2512" x1="704" />
            <wire x2="2464" y1="2512" y2="2512" x1="704" />
            <wire x2="864" y1="1872" y2="1872" x1="704" />
            <wire x2="2464" y1="1488" y2="1488" x1="2288" />
            <wire x2="2464" y1="1488" y2="2512" x1="2464" />
        </branch>
        <branch name="MIO_ready">
            <wire x2="640" y1="1216" y2="1216" x1="480" />
            <wire x2="1568" y1="1216" y2="1216" x1="640" />
            <wire x2="1568" y1="1216" y2="1424" x1="1568" />
            <wire x2="1760" y1="1424" y2="1424" x1="1568" />
            <wire x2="640" y1="1216" y2="2064" x1="640" />
            <wire x2="864" y1="2064" y2="2064" x1="640" />
        </branch>
        <branch name="clk">
            <wire x2="848" y1="1072" y2="1072" x1="480" />
            <wire x2="848" y1="1072" y2="1328" x1="848" />
            <wire x2="864" y1="1328" y2="1328" x1="848" />
            <wire x2="1648" y1="1072" y2="1072" x1="848" />
            <wire x2="1648" y1="1072" y2="1296" x1="1648" />
            <wire x2="1760" y1="1296" y2="1296" x1="1648" />
        </branch>
        <branch name="reset">
            <wire x2="768" y1="1168" y2="1168" x1="480" />
            <wire x2="1600" y1="1168" y2="1168" x1="768" />
            <wire x2="1600" y1="1168" y2="1360" x1="1600" />
            <wire x2="1760" y1="1360" y2="1360" x1="1600" />
            <wire x2="768" y1="1168" y2="1536" x1="768" />
            <wire x2="864" y1="1536" y2="1536" x1="768" />
        </branch>
        <branch name="XLXN_25">
            <wire x2="720" y1="1232" y2="1680" x1="720" />
            <wire x2="864" y1="1680" y2="1680" x1="720" />
            <wire x2="2320" y1="1232" y2="1232" x1="720" />
            <wire x2="2320" y1="1232" y2="1296" x1="2320" />
            <wire x2="2320" y1="1296" y2="1296" x1="2288" />
        </branch>
        <branch name="Data_in(31:0)">
            <wire x2="1680" y1="2576" y2="2576" x1="496" />
            <wire x2="1760" y1="2256" y2="2256" x1="1680" />
            <wire x2="1680" y1="2256" y2="2576" x1="1680" />
        </branch>
        <branch name="state(4:0)">
            <wire x2="1504" y1="2256" y2="2256" x1="1344" />
            <wire x2="1504" y1="2256" y2="2480" x1="1504" />
            <wire x2="2832" y1="2480" y2="2480" x1="1504" />
        </branch>
        <branch name="XLXN_28">
            <wire x2="1408" y1="1296" y2="1296" x1="1344" />
            <wire x2="1408" y1="928" y2="1296" x1="1408" />
            <wire x2="1840" y1="928" y2="928" x1="1408" />
        </branch>
        <instance x="1840" y="960" name="XLXI_4" orien="R0" />
        <branch name="XLXN_29">
            <wire x2="1472" y1="1360" y2="1360" x1="1344" />
            <wire x2="1472" y1="1008" y2="1360" x1="1472" />
            <wire x2="2384" y1="1008" y2="1008" x1="1472" />
            <wire x2="2384" y1="1008" y2="1024" x1="2384" />
            <wire x2="2384" y1="1024" y2="1072" x1="2384" />
            <wire x2="2384" y1="1072" y2="1152" x1="2384" />
            <wire x2="2384" y1="1152" y2="1168" x1="2384" />
            <wire x2="2496" y1="1168" y2="1168" x1="2384" />
        </branch>
        <branch name="XLXN_30">
            <wire x2="2432" y1="928" y2="928" x1="2064" />
            <wire x2="2432" y1="928" y2="1104" x1="2432" />
            <wire x2="2496" y1="1104" y2="1104" x1="2432" />
        </branch>
        <instance x="2496" y="1232" name="XLXI_5" orien="R0" />
        <branch name="mem_w">
            <wire x2="2832" y1="1136" y2="1136" x1="2752" />
        </branch>
        <branch name="INT">
            <wire x2="704" y1="928" y2="928" x1="480" />
        </branch>
        <iomarker fontsize="28" x="480" y="1216" name="MIO_ready" orien="R180" />
        <iomarker fontsize="28" x="480" y="1072" name="clk" orien="R180" />
        <iomarker fontsize="28" x="480" y="1168" name="reset" orien="R180" />
        <iomarker fontsize="28" x="480" y="928" name="INT" orien="R180" />
        <iomarker fontsize="28" x="496" y="2576" name="Data_in(31:0)" orien="R180" />
        <iomarker fontsize="28" x="2832" y="1680" name="PC_out(31:0)" orien="R0" />
        <iomarker fontsize="28" x="2832" y="1872" name="inst_out(31:0)" orien="R0" />
        <iomarker fontsize="28" x="2832" y="1136" name="mem_w" orien="R0" />
        <iomarker fontsize="28" x="2832" y="2384" name="CPU_MIO" orien="R0" />
        <iomarker fontsize="28" x="2832" y="2064" name="Data_out(31:0)" orien="R0" />
        <iomarker fontsize="28" x="2832" y="2256" name="Addr_out(31:0)" orien="R0" />
        <iomarker fontsize="28" x="2832" y="2480" name="state(4:0)" orien="R0" />
    </sheet>
</drawing>