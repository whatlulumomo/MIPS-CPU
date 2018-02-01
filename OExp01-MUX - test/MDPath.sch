<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="kintex7" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="IRWrite" />
        <signal name="reset" />
        <signal name="data2CPU(31:0)" />
        <signal name="V5" />
        <signal name="N0" />
        <signal name="clk" />
        <signal name="Inst(31:0)" />
        <signal name="Inst(25:21)" />
        <signal name="Inst(20:16)" />
        <signal name="Inst(15:11)" />
        <signal name="XLXN_19(4:0)" />
        <signal name="XLXN_22(31:0)" />
        <signal name="XLXN_23(31:0)" />
        <signal name="Inst(15:0)" />
        <signal name="MemtoReg(1:0)" />
        <signal name="RegDst(1:0)" />
        <signal name="RegWrite" />
        <signal name="Imm_32(31:0)" />
        <signal name="data_out(31:0)" />
        <signal name="XLXN_35(31:0)" />
        <signal name="ALUSrcA" />
        <signal name="ALUSrcB(1:0)" />
        <signal name="XLXN_38(31:0)" />
        <signal name="XLXN_39(31:0)" />
        <signal name="ALU_operation(2:0)" />
        <signal name="N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,V5,N0,N0" />
        <signal name="Imm_32(29:0),N0,N0" />
        <signal name="res(31:0)" />
        <signal name="ALU_out(31:0)" />
        <signal name="M_addr(31:0)" />
        <signal name="PC_Current(31:0)" />
        <signal name="overflow" />
        <signal name="zero" />
        <signal name="PC_Current(31:28),Inst(25:0),N0,N0" />
        <signal name="XLXN_78" />
        <signal name="XLXN_81(31:0)" />
        <signal name="IorD" />
        <signal name="PCSource(1:0)" />
        <signal name="XLXN_84" />
        <signal name="XLXN_85" />
        <signal name="XLXN_86" />
        <signal name="Branch" />
        <signal name="PCWriteCond" />
        <signal name="PCWrite" />
        <signal name="MIO_ready" />
        <signal name="XLXN_87" />
        <signal name="Inst(15:0),N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0" />
        <signal name="V5,V5,V5,V5,V5" />
        <port polarity="Input" name="IRWrite" />
        <port polarity="Input" name="reset" />
        <port polarity="Input" name="data2CPU(31:0)" />
        <port polarity="Input" name="clk" />
        <port polarity="Output" name="Inst(31:0)" />
        <port polarity="Input" name="MemtoReg(1:0)" />
        <port polarity="Input" name="RegDst(1:0)" />
        <port polarity="Input" name="RegWrite" />
        <port polarity="Output" name="data_out(31:0)" />
        <port polarity="Input" name="ALUSrcA" />
        <port polarity="Input" name="ALUSrcB(1:0)" />
        <port polarity="Input" name="ALU_operation(2:0)" />
        <port polarity="Output" name="M_addr(31:0)" />
        <port polarity="Output" name="PC_Current(31:0)" />
        <port polarity="Output" name="overflow" />
        <port polarity="Output" name="zero" />
        <port polarity="Input" name="IorD" />
        <port polarity="Input" name="PCSource(1:0)" />
        <port polarity="Input" name="Branch" />
        <port polarity="Input" name="PCWriteCond" />
        <port polarity="Input" name="PCWrite" />
        <port polarity="Input" name="MIO_ready" />
        <blockdef name="REG32">
            <timestamp>2017-4-4T15:18:0</timestamp>
            <rect style="fillcolor:rgb(0,255,255);fillstyle:Solid" width="88" x="32" y="-256" height="256" />
            <line x2="0" y1="-224" y2="-224" x1="32" />
            <line x2="0" y1="-160" y2="-160" x1="32" />
            <line x2="0" y1="-96" y2="-96" x1="32" />
            <line x2="0" y1="-32" y2="-32" style="linewidth:W" x1="32" />
            <line x2="120" y1="-128" y2="-128" style="linewidth:W" x1="144" />
        </blockdef>
        <blockdef name="Regs">
            <timestamp>2017-4-4T15:18:0</timestamp>
            <rect style="linewidth:W;linecolor:rgb(255,0,0);fillcolor:rgb(254,180,229);fillstyle:Solid" width="352" x="64" y="-448" height="448" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <line x2="240" y1="-496" y2="-448" x1="240" />
            <rect width="64" x="416" y="-396" height="24" />
            <line x2="480" y1="-384" y2="-384" x1="416" />
            <line x2="0" y1="-368" y2="-368" x1="64" />
            <rect width="64" x="0" y="-60" height="24" />
            <line x2="0" y1="-48" y2="-48" x1="64" />
            <rect width="64" x="416" y="-124" height="24" />
            <line x2="480" y1="-112" y2="-112" x1="416" />
            <rect width="64" x="0" y="-332" height="24" />
            <line x2="0" y1="-320" y2="-320" x1="64" />
            <rect width="64" x="0" y="-284" height="24" />
            <line x2="0" y1="-272" y2="-272" x1="64" />
            <rect width="64" x="0" y="-204" height="24" />
            <line x2="0" y1="-192" y2="-192" x1="64" />
        </blockdef>
        <blockdef name="MUX4T1_5">
            <timestamp>2017-2-27T13:0:0</timestamp>
            <rect width="24" x="4" y="-136" height="136" />
            <line x2="16" y1="-144" y2="-136" x1="16" />
            <line x2="4" y1="-112" y2="-112" style="linewidth:W" x1="0" />
            <line x2="4" y1="-80" y2="-80" style="linewidth:W" x1="0" />
            <line x2="28" y1="-64" y2="-64" style="linewidth:W" x1="32" />
            <line x2="4" y1="-48" y2="-48" style="linewidth:W" x1="0" />
        </blockdef>
        <blockdef name="MUX4T1_32">
            <timestamp>2017-2-27T12:59:56</timestamp>
            <line x2="0" y1="-80" y2="-80" style="linewidth:W" x1="12" />
            <line x2="0" y1="-48" y2="-48" style="linewidth:W" x1="12" />
            <line x2="0" y1="-16" y2="-16" style="linewidth:W" x1="12" />
            <rect width="40" x="12" y="-136" height="128" />
            <line x2="0" y1="-112" y2="-112" style="linewidth:W" x1="12" />
            <line x2="32" y1="-136" y2="-144" style="linewidth:W" x1="32" />
            <line x2="52" y1="-96" y2="-96" style="linewidth:W;linecolor:rgb(0,0,0)" x1="64" />
        </blockdef>
        <blockdef name="Ext_32">
            <timestamp>2017-2-27T12:58:8</timestamp>
            <circle style="linewidth:W;linecolor:rgb(255,0,0);linestyle:Dash" r="69" cx="185" cy="-33" />
            <line x2="124" y1="0" y2="0" style="linewidth:W" x1="96" />
            <line x2="272" y1="-64" y2="-64" style="linewidth:W" x1="248" />
            <rect style="linecolor:rgb(255,255,255)" width="128" x="120" y="-80" height="88" />
        </blockdef>
        <blockdef name="MUX2T1_32">
            <timestamp>2017-2-27T13:0:5</timestamp>
            <rect width="40" x="12" y="-100" height="100" />
            <line x2="32" y1="-112" y2="-100" x1="32" />
            <line x2="52" y1="-48" y2="-48" style="linewidth:W;linecolor:rgb(0,0,0)" x1="64" />
            <line x2="0" y1="-80" y2="-80" style="linewidth:W" x1="12" />
            <line x2="0" y1="-16" y2="-16" style="linewidth:W" x1="12" />
        </blockdef>
        <blockdef name="ALU">
            <timestamp>2017-4-6T6:28:59</timestamp>
            <rect width="320" x="64" y="-256" height="256" />
            <rect width="64" x="0" y="-236" height="24" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-140" height="24" />
            <line x2="0" y1="-128" y2="-128" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="448" y1="-224" y2="-224" x1="384" />
            <rect width="64" x="384" y="-172" height="24" />
            <line x2="448" y1="-160" y2="-160" x1="384" />
            <line x2="448" y1="-96" y2="-96" x1="384" />
            <line x2="448" y1="-32" y2="-32" x1="384" />
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
        <blockdef name="or2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="192" y1="-96" y2="-96" x1="256" />
            <arc ex="192" ey="-96" sx="112" sy="-48" r="88" cx="116" cy="-136" />
            <arc ex="48" ey="-144" sx="48" sy="-48" r="56" cx="16" cy="-96" />
            <line x2="48" y1="-144" y2="-144" x1="112" />
            <arc ex="112" ey="-144" sx="192" sy="-96" r="88" cx="116" cy="-56" />
            <line x2="48" y1="-48" y2="-48" x1="112" />
        </blockdef>
        <blockdef name="vcc">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-64" x1="64" />
            <line x2="64" y1="0" y2="-32" x1="64" />
            <line x2="32" y1="-64" y2="-64" x1="96" />
        </blockdef>
        <blockdef name="gnd">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-96" x1="64" />
            <line x2="52" y1="-48" y2="-48" x1="76" />
            <line x2="60" y1="-32" y2="-32" x1="68" />
            <line x2="40" y1="-64" y2="-64" x1="88" />
            <line x2="64" y1="-64" y2="-80" x1="64" />
            <line x2="64" y1="-128" y2="-96" x1="64" />
        </blockdef>
        <blockdef name="xor2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="60" y1="-128" y2="-128" x1="0" />
            <line x2="208" y1="-96" y2="-96" x1="256" />
            <arc ex="44" ey="-144" sx="48" sy="-48" r="56" cx="16" cy="-96" />
            <arc ex="64" ey="-144" sx="64" sy="-48" r="56" cx="32" cy="-96" />
            <line x2="64" y1="-144" y2="-144" x1="128" />
            <line x2="64" y1="-48" y2="-48" x1="128" />
            <arc ex="128" ey="-144" sx="208" sy="-96" r="88" cx="132" cy="-56" />
            <arc ex="208" ey="-96" sx="128" sy="-48" r="88" cx="132" cy="-136" />
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
        <block symbolname="REG32" name="XLXI_1">
            <blockpin signalname="data2CPU(31:0)" name="D(31:0)" />
            <blockpin signalname="IRWrite" name="CE" />
            <blockpin signalname="reset" name="rst" />
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="Inst(31:0)" name="Q(31:0)" />
        </block>
        <block symbolname="Regs" name="XLXI_2">
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="RegWrite" name="L_S" />
            <blockpin signalname="XLXN_35(31:0)" name="rdata_A(31:0)" />
            <blockpin signalname="reset" name="rst" />
            <blockpin signalname="XLXN_22(31:0)" name="Wt_data(31:0)" />
            <blockpin signalname="data_out(31:0)" name="rdata_B(31:0)" />
            <blockpin signalname="Inst(25:21)" name="R_addr_A(4:0)" />
            <blockpin signalname="Inst(20:16)" name="R_addr_B(4:0)" />
            <blockpin signalname="XLXN_19(4:0)" name="Wt_addr(4:0)" />
        </block>
        <block symbolname="REG32" name="XLXI_3">
            <blockpin signalname="data2CPU(31:0)" name="D(31:0)" />
            <blockpin signalname="V5" name="CE" />
            <blockpin signalname="N0" name="rst" />
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="XLXN_23(31:0)" name="Q(31:0)" />
        </block>
        <block symbolname="MUX4T1_5" name="XLXI_4">
            <blockpin signalname="RegDst(1:0)" name="s(1:0)" />
            <blockpin signalname="Inst(15:11)" name="I1(4:0)" />
            <blockpin signalname="Inst(20:16)" name="I0(4:0)" />
            <blockpin signalname="XLXN_19(4:0)" name="o(4:0)" />
            <blockpin signalname="V5,V5,V5,V5,V5" name="I2(4:0)" />
            <blockpin name="I3(4:0)" />
        </block>
        <block symbolname="MUX4T1_32" name="XLXI_5">
            <blockpin signalname="MemtoReg(1:0)" name="s(1:0)" />
            <blockpin signalname="ALU_out(31:0)" name="I0(31:0)" />
            <blockpin signalname="XLXN_23(31:0)" name="I1(31:0)" />
            <blockpin signalname="Inst(15:0),N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0" name="I2(31:0)" />
            <blockpin signalname="PC_Current(31:0)" name="I3(31:0)" />
            <blockpin signalname="XLXN_22(31:0)" name="o(31:0)" />
        </block>
        <block symbolname="Ext_32" name="XLXI_6">
            <blockpin signalname="Inst(15:0)" name="imm_16(15:0)" />
            <blockpin signalname="Imm_32(31:0)" name="Imm_32(31:0)" />
        </block>
        <block symbolname="MUX2T1_32" name="XLXI_7">
            <blockpin signalname="ALUSrcA" name="s" />
            <blockpin signalname="PC_Current(31:0)" name="I0(31:0)" />
            <blockpin signalname="XLXN_35(31:0)" name="I1(31:0)" />
            <blockpin signalname="XLXN_38(31:0)" name="o(31:0)" />
        </block>
        <block symbolname="MUX4T1_32" name="XLXI_8">
            <blockpin signalname="ALUSrcB(1:0)" name="s(1:0)" />
            <blockpin signalname="data_out(31:0)" name="I0(31:0)" />
            <blockpin signalname="N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,V5,N0,N0" name="I1(31:0)" />
            <blockpin signalname="Imm_32(31:0)" name="I2(31:0)" />
            <blockpin signalname="Imm_32(29:0),N0,N0" name="I3(31:0)" />
            <blockpin signalname="XLXN_39(31:0)" name="o(31:0)" />
        </block>
        <block symbolname="ALU" name="XLXI_9">
            <blockpin signalname="XLXN_38(31:0)" name="A(31:0)" />
            <blockpin signalname="XLXN_39(31:0)" name="B(31:0)" />
            <blockpin signalname="ALU_operation(2:0)" name="ALU_operation(2:0)" />
            <blockpin name="Co" />
            <blockpin signalname="res(31:0)" name="res(31:0)" />
            <blockpin signalname="overflow" name="overflew" />
            <blockpin signalname="zero" name="zero" />
        </block>
        <block symbolname="REG32" name="XLXI_10">
            <blockpin signalname="res(31:0)" name="D(31:0)" />
            <blockpin signalname="V5" name="CE" />
            <blockpin signalname="N0" name="rst" />
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="ALU_out(31:0)" name="Q(31:0)" />
        </block>
        <block symbolname="REG32" name="XLXI_11">
            <blockpin signalname="XLXN_81(31:0)" name="D(31:0)" />
            <blockpin signalname="XLXN_78" name="CE" />
            <blockpin signalname="reset" name="rst" />
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="PC_Current(31:0)" name="Q(31:0)" />
        </block>
        <block symbolname="MUX4T1_32" name="XLXI_12">
            <blockpin signalname="PCSource(1:0)" name="s(1:0)" />
            <blockpin signalname="res(31:0)" name="I0(31:0)" />
            <blockpin signalname="ALU_out(31:0)" name="I1(31:0)" />
            <blockpin signalname="PC_Current(31:28),Inst(25:0),N0,N0" name="I2(31:0)" />
            <blockpin signalname="ALU_out(31:0)" name="I3(31:0)" />
            <blockpin signalname="XLXN_81(31:0)" name="o(31:0)" />
        </block>
        <block symbolname="MUX2T1_32" name="XLXI_13">
            <blockpin signalname="IorD" name="s" />
            <blockpin signalname="PC_Current(31:0)" name="I0(31:0)" />
            <blockpin signalname="ALU_out(31:0)" name="I1(31:0)" />
            <blockpin signalname="M_addr(31:0)" name="o(31:0)" />
        </block>
        <block symbolname="and2" name="XLXI_15">
            <blockpin signalname="XLXN_86" name="I0" />
            <blockpin signalname="PCWriteCond" name="I1" />
            <blockpin signalname="XLXN_85" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_16">
            <blockpin signalname="XLXN_84" name="I0" />
            <blockpin signalname="MIO_ready" name="I1" />
            <blockpin signalname="XLXN_78" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_17">
            <blockpin signalname="XLXN_85" name="I0" />
            <blockpin signalname="PCWrite" name="I1" />
            <blockpin signalname="XLXN_84" name="O" />
        </block>
        <block symbolname="vcc" name="XLXI_18">
            <blockpin signalname="V5" name="P" />
        </block>
        <block symbolname="gnd" name="XLXI_19">
            <blockpin signalname="N0" name="G" />
        </block>
        <block symbolname="xor2" name="XLXI_20">
            <blockpin signalname="zero" name="I0" />
            <blockpin signalname="Branch" name="I1" />
            <blockpin signalname="XLXN_87" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_22">
            <blockpin signalname="XLXN_87" name="I" />
            <blockpin signalname="XLXN_86" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="480" y="1632" name="XLXI_1" orien="R0">
        </instance>
        <instance x="464" y="2064" name="XLXI_3" orien="R0">
        </instance>
        <branch name="IRWrite">
            <wire x2="480" y1="1536" y2="1536" x1="208" />
        </branch>
        <iomarker fontsize="28" x="208" y="1536" name="IRWrite" orien="R180" />
        <branch name="reset">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="208" y="1472" type="branch" />
            <wire x2="480" y1="1472" y2="1472" x1="208" />
        </branch>
        <branch name="data2CPU(31:0)">
            <wire x2="432" y1="2032" y2="2032" x1="288" />
            <wire x2="464" y1="2032" y2="2032" x1="432" />
            <wire x2="480" y1="1600" y2="1600" x1="432" />
            <wire x2="432" y1="1600" y2="2032" x1="432" />
        </branch>
        <iomarker fontsize="28" x="288" y="2032" name="data2CPU(31:0)" orien="R180" />
        <branch name="V5">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="272" y="1968" type="branch" />
            <wire x2="464" y1="1968" y2="1968" x1="272" />
        </branch>
        <branch name="N0">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="272" y="1904" type="branch" />
            <wire x2="464" y1="1904" y2="1904" x1="272" />
        </branch>
        <branch name="clk">
            <wire x2="480" y1="176" y2="176" x1="176" />
            <wire x2="480" y1="176" y2="1152" x1="480" />
            <wire x2="928" y1="1152" y2="1152" x1="480" />
            <wire x2="928" y1="1152" y2="1488" x1="928" />
            <wire x2="1376" y1="1488" y2="1488" x1="928" />
            <wire x2="2816" y1="176" y2="176" x1="480" />
            <wire x2="2816" y1="176" y2="320" x1="2816" />
            <wire x2="2816" y1="320" y2="1088" x1="2816" />
            <wire x2="2928" y1="1088" y2="1088" x1="2816" />
            <wire x2="2928" y1="320" y2="320" x1="2816" />
            <wire x2="480" y1="1152" y2="1152" x1="352" />
            <wire x2="352" y1="1152" y2="1408" x1="352" />
            <wire x2="480" y1="1408" y2="1408" x1="352" />
            <wire x2="352" y1="1408" y2="1840" x1="352" />
            <wire x2="464" y1="1840" y2="1840" x1="352" />
        </branch>
        <iomarker fontsize="28" x="176" y="176" name="clk" orien="R180" />
        <instance x="1376" y="1904" name="XLXI_2" orien="R0">
        </instance>
        <bustap x2="912" y1="1584" y2="1584" x1="816" />
        <branch name="Inst(25:21)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1162" y="1584" type="branch" />
            <wire x2="1376" y1="1584" y2="1584" x1="912" />
        </branch>
        <bustap x2="912" y1="1632" y2="1632" x1="816" />
        <branch name="Inst(20:16)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1119" y="1632" type="branch" />
            <wire x2="1120" y1="1632" y2="1632" x1="912" />
            <wire x2="1120" y1="1632" y2="1696" x1="1120" />
            <wire x2="1216" y1="1696" y2="1696" x1="1120" />
            <wire x2="1376" y1="1632" y2="1632" x1="1120" />
        </branch>
        <instance x="1040" y="1968" name="XLXI_5" orien="R0">
        </instance>
        <instance x="1216" y="1808" name="XLXI_4" orien="R0">
        </instance>
        <bustap x2="912" y1="1728" y2="1728" x1="816" />
        <branch name="Inst(15:11)">
            <wire x2="1216" y1="1728" y2="1728" x1="912" />
        </branch>
        <branch name="XLXN_19(4:0)">
            <wire x2="1312" y1="1744" y2="1744" x1="1248" />
            <wire x2="1312" y1="1712" y2="1744" x1="1312" />
            <wire x2="1376" y1="1712" y2="1712" x1="1312" />
        </branch>
        <iomarker fontsize="28" x="208" y="272" name="reset" orien="R180" />
        <branch name="XLXN_22(31:0)">
            <wire x2="1232" y1="1872" y2="1872" x1="1104" />
            <wire x2="1232" y1="1856" y2="1872" x1="1232" />
            <wire x2="1376" y1="1856" y2="1856" x1="1232" />
        </branch>
        <branch name="XLXN_23(31:0)">
            <wire x2="704" y1="1936" y2="1936" x1="608" />
            <wire x2="704" y1="1888" y2="1936" x1="704" />
            <wire x2="1040" y1="1888" y2="1888" x1="704" />
        </branch>
        <branch name="Inst(31:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="713" y="1504" type="branch" />
            <wire x2="816" y1="1504" y2="1504" x1="624" />
            <wire x2="816" y1="1504" y2="1584" x1="816" />
            <wire x2="816" y1="1584" y2="1632" x1="816" />
            <wire x2="816" y1="1632" y2="1728" x1="816" />
            <wire x2="816" y1="1728" y2="2176" x1="816" />
            <wire x2="816" y1="2176" y2="2496" x1="816" />
            <wire x2="3312" y1="2496" y2="2496" x1="816" />
        </branch>
        <instance x="1424" y="2176" name="XLXI_6" orien="R0">
        </instance>
        <branch name="Inst(15:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1197" y="2176" type="branch" />
            <wire x2="1520" y1="2176" y2="2176" x1="912" />
        </branch>
        <bustap x2="912" y1="2176" y2="2176" x1="816" />
        <branch name="MemtoReg(1:0)">
            <wire x2="1072" y1="1760" y2="1760" x1="288" />
            <wire x2="1072" y1="1760" y2="1824" x1="1072" />
        </branch>
        <iomarker fontsize="28" x="288" y="1760" name="MemtoReg(1:0)" orien="R180" />
        <branch name="RegDst(1:0)">
            <wire x2="1232" y1="1344" y2="1344" x1="272" />
            <wire x2="1232" y1="1344" y2="1664" x1="1232" />
        </branch>
        <iomarker fontsize="28" x="272" y="1344" name="RegDst(1:0)" orien="R180" />
        <branch name="RegWrite">
            <wire x2="1616" y1="1248" y2="1248" x1="256" />
            <wire x2="1616" y1="1248" y2="1408" x1="1616" />
        </branch>
        <iomarker fontsize="28" x="256" y="1248" name="RegWrite" orien="R180" />
        <branch name="Imm_32(31:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1857" y="2112" type="branch" />
            <wire x2="1920" y1="2112" y2="2112" x1="1696" />
            <wire x2="1920" y1="1840" y2="2112" x1="1920" />
            <wire x2="2128" y1="1840" y2="1840" x1="1920" />
        </branch>
        <branch name="data_out(31:0)">
            <wire x2="1872" y1="1792" y2="1792" x1="1856" />
            <wire x2="1872" y1="1776" y2="1792" x1="1872" />
            <wire x2="2064" y1="1776" y2="1776" x1="1872" />
            <wire x2="2128" y1="1776" y2="1776" x1="2064" />
            <wire x2="2064" y1="1776" y2="1792" x1="2064" />
            <wire x2="2064" y1="1792" y2="1792" x1="1984" />
            <wire x2="1984" y1="1792" y2="2224" x1="1984" />
            <wire x2="2512" y1="2224" y2="2224" x1="1984" />
            <wire x2="2752" y1="2224" y2="2224" x1="2512" />
        </branch>
        <branch name="XLXN_35(31:0)">
            <wire x2="2000" y1="1520" y2="1520" x1="1856" />
        </branch>
        <branch name="ALUSrcA">
            <wire x2="2032" y1="1120" y2="1120" x1="272" />
            <wire x2="2032" y1="1120" y2="1424" x1="2032" />
        </branch>
        <iomarker fontsize="28" x="272" y="1120" name="ALUSrcA" orien="R180" />
        <branch name="ALUSrcB(1:0)">
            <wire x2="2160" y1="1056" y2="1056" x1="272" />
            <wire x2="2160" y1="1056" y2="1744" x1="2160" />
        </branch>
        <iomarker fontsize="28" x="272" y="1056" name="ALUSrcB(1:0)" orien="R180" />
        <branch name="XLXN_38(31:0)">
            <wire x2="2080" y1="1488" y2="1488" x1="2064" />
            <wire x2="2080" y1="1488" y2="1520" x1="2080" />
            <wire x2="2336" y1="1520" y2="1520" x1="2080" />
        </branch>
        <branch name="XLXN_39(31:0)">
            <wire x2="2208" y1="1792" y2="1792" x1="2192" />
            <wire x2="2336" y1="1616" y2="1616" x1="2208" />
            <wire x2="2208" y1="1616" y2="1792" x1="2208" />
        </branch>
        <branch name="ALU_operation(2:0)">
            <wire x2="2272" y1="976" y2="976" x1="336" />
            <wire x2="2272" y1="976" y2="1712" x1="2272" />
            <wire x2="2336" y1="1712" y2="1712" x1="2272" />
        </branch>
        <iomarker fontsize="28" x="336" y="976" name="ALU_operation(2:0)" orien="R180" />
        <iomarker fontsize="28" x="3312" y="2496" name="Inst(31:0)" orien="R0" />
        <branch name="N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,V5,N0,N0">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2096" y="1824" type="branch" />
            <wire x2="2112" y1="1824" y2="1824" x1="2096" />
            <wire x2="2128" y1="1808" y2="1808" x1="2112" />
            <wire x2="2112" y1="1808" y2="1824" x1="2112" />
        </branch>
        <branch name="Imm_32(29:0),N0,N0">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2064" y="1904" type="branch" />
            <wire x2="2128" y1="1904" y2="1904" x1="2064" />
            <wire x2="2128" y1="1872" y2="1904" x1="2128" />
        </branch>
        <instance x="2928" y="544" name="XLXI_11" orien="R0">
        </instance>
        <instance x="2000" y="1536" name="XLXI_7" orien="R0">
        </instance>
        <instance x="2128" y="1888" name="XLXI_8" orien="R0">
        </instance>
        <instance x="2336" y="1744" name="XLXI_9" orien="R0">
        </instance>
        <instance x="2928" y="1312" name="XLXI_10" orien="R0">
        </instance>
        <branch name="res(31:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2825" y="1280" type="branch" />
            <wire x2="2704" y1="624" y2="624" x1="2128" />
            <wire x2="2704" y1="624" y2="1280" x1="2704" />
            <wire x2="2832" y1="1280" y2="1280" x1="2704" />
            <wire x2="2848" y1="1280" y2="1280" x1="2832" />
            <wire x2="2848" y1="1280" y2="1584" x1="2848" />
            <wire x2="2928" y1="1280" y2="1280" x1="2848" />
            <wire x2="2128" y1="624" y2="720" x1="2128" />
            <wire x2="2240" y1="720" y2="720" x1="2128" />
            <wire x2="2848" y1="1584" y2="1584" x1="2784" />
        </branch>
        <instance x="2240" y="832" name="XLXI_12" orien="R0">
        </instance>
        <branch name="ALU_out(31:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1875" y="896" type="branch" />
            <wire x2="1008" y1="896" y2="1856" x1="1008" />
            <wire x2="1040" y1="1856" y2="1856" x1="1008" />
            <wire x2="1872" y1="896" y2="896" x1="1008" />
            <wire x2="2080" y1="896" y2="896" x1="1872" />
            <wire x2="3136" y1="896" y2="896" x1="2080" />
            <wire x2="3136" y1="896" y2="1184" x1="3136" />
            <wire x2="3216" y1="1184" y2="1184" x1="3136" />
            <wire x2="2240" y1="752" y2="752" x1="2080" />
            <wire x2="2080" y1="752" y2="816" x1="2080" />
            <wire x2="2080" y1="816" y2="896" x1="2080" />
            <wire x2="2240" y1="816" y2="816" x1="2080" />
            <wire x2="3136" y1="1184" y2="1184" x1="3072" />
        </branch>
        <instance x="3216" y="1200" name="XLXI_13" orien="R0">
        </instance>
        <branch name="M_addr(31:0)">
            <wire x2="3328" y1="1152" y2="1152" x1="3280" />
        </branch>
        <iomarker fontsize="28" x="3328" y="1152" name="M_addr(31:0)" orien="R0" />
        <iomarker fontsize="28" x="3264" y="416" name="PC_Current(31:0)" orien="R0" />
        <branch name="V5">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2848" y="1216" type="branch" />
            <wire x2="2928" y1="1216" y2="1216" x1="2848" />
        </branch>
        <branch name="N0">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2848" y="1152" type="branch" />
            <wire x2="2928" y1="1152" y2="1152" x1="2848" />
        </branch>
        <branch name="overflow">
            <wire x2="3008" y1="1648" y2="1648" x1="2784" />
        </branch>
        <iomarker fontsize="28" x="3008" y="1648" name="overflow" orien="R0" />
        <branch name="zero">
            <wire x2="704" y1="608" y2="608" x1="560" />
            <wire x2="560" y1="608" y2="1024" x1="560" />
            <wire x2="2528" y1="1024" y2="1024" x1="560" />
            <wire x2="2528" y1="1024" y2="1040" x1="2528" />
            <wire x2="2544" y1="1040" y2="1040" x1="2528" />
            <wire x2="2544" y1="1040" y2="1344" x1="2544" />
            <wire x2="2912" y1="1344" y2="1344" x1="2544" />
            <wire x2="2912" y1="1344" y2="1712" x1="2912" />
            <wire x2="2976" y1="1712" y2="1712" x1="2912" />
            <wire x2="2912" y1="1712" y2="1712" x1="2784" />
        </branch>
        <iomarker fontsize="28" x="2976" y="1712" name="zero" orien="R0" />
        <branch name="PC_Current(31:28),Inst(25:0),N0,N0">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1888" y="784" type="branch" />
            <wire x2="2240" y1="784" y2="784" x1="1888" />
        </branch>
        <branch name="XLXN_78">
            <wire x2="2768" y1="448" y2="448" x1="2416" />
            <wire x2="2928" y1="448" y2="448" x1="2768" />
        </branch>
        <branch name="XLXN_81(31:0)">
            <wire x2="2608" y1="736" y2="736" x1="2304" />
            <wire x2="2608" y1="512" y2="736" x1="2608" />
            <wire x2="2928" y1="512" y2="512" x1="2608" />
        </branch>
        <branch name="IorD">
            <wire x2="3248" y1="848" y2="848" x1="176" />
            <wire x2="3248" y1="848" y2="1088" x1="3248" />
        </branch>
        <iomarker fontsize="28" x="176" y="848" name="IorD" orien="R180" />
        <branch name="PCSource(1:0)">
            <wire x2="2272" y1="656" y2="656" x1="224" />
            <wire x2="2272" y1="656" y2="688" x1="2272" />
        </branch>
        <iomarker fontsize="28" x="224" y="656" name="PCSource(1:0)" orien="R180" />
        <instance x="2160" y="544" name="XLXI_16" orien="R0" />
        <instance x="1664" y="608" name="XLXI_17" orien="R0" />
        <branch name="XLXN_84">
            <wire x2="2032" y1="512" y2="512" x1="1920" />
            <wire x2="2032" y1="480" y2="512" x1="2032" />
            <wire x2="2160" y1="480" y2="480" x1="2032" />
        </branch>
        <instance x="1248" y="640" name="XLXI_15" orien="R0" />
        <branch name="XLXN_85">
            <wire x2="1648" y1="544" y2="544" x1="1504" />
            <wire x2="1664" y1="544" y2="544" x1="1648" />
        </branch>
        <branch name="XLXN_86">
            <wire x2="1248" y1="576" y2="576" x1="1232" />
        </branch>
        <branch name="Branch">
            <wire x2="688" y1="576" y2="576" x1="240" />
            <wire x2="704" y1="544" y2="544" x1="688" />
            <wire x2="688" y1="544" y2="576" x1="688" />
        </branch>
        <iomarker fontsize="28" x="240" y="576" name="Branch" orien="R180" />
        <branch name="PCWriteCond">
            <wire x2="1232" y1="512" y2="512" x1="336" />
            <wire x2="1248" y1="512" y2="512" x1="1232" />
        </branch>
        <branch name="reset">
            <wire x2="1088" y1="272" y2="272" x1="208" />
            <wire x2="1088" y1="272" y2="1536" x1="1088" />
            <wire x2="1376" y1="1536" y2="1536" x1="1088" />
            <wire x2="1552" y1="272" y2="272" x1="1088" />
            <wire x2="1568" y1="272" y2="272" x1="1552" />
            <wire x2="2784" y1="272" y2="272" x1="1568" />
            <wire x2="2784" y1="272" y2="384" x1="2784" />
            <wire x2="2928" y1="384" y2="384" x1="2784" />
        </branch>
        <iomarker fontsize="28" x="336" y="512" name="PCWriteCond" orien="R180" />
        <branch name="PCWrite">
            <wire x2="992" y1="432" y2="432" x1="336" />
            <wire x2="992" y1="432" y2="480" x1="992" />
            <wire x2="1664" y1="480" y2="480" x1="992" />
        </branch>
        <iomarker fontsize="28" x="336" y="432" name="PCWrite" orien="R180" />
        <branch name="MIO_ready">
            <wire x2="352" y1="368" y2="368" x1="320" />
            <wire x2="352" y1="368" y2="416" x1="352" />
            <wire x2="2160" y1="416" y2="416" x1="352" />
        </branch>
        <iomarker fontsize="28" x="320" y="368" name="MIO_ready" orien="R180" />
        <iomarker fontsize="28" x="2752" y="2224" name="data_out(31:0)" orien="R0" />
        <instance x="2368" y="2048" name="XLXI_18" orien="R0" />
        <instance x="2688" y="2096" name="XLXI_19" orien="R0" />
        <branch name="V5">
            <attrtext style="alignment:SOFT-VLEFT;fontsize:28;fontname:Arial" attrname="Name" x="2480" y="2048" type="branch" />
            <wire x2="2432" y1="2048" y2="2064" x1="2432" />
            <wire x2="2480" y1="2064" y2="2064" x1="2432" />
            <wire x2="2480" y1="2048" y2="2064" x1="2480" />
        </branch>
        <branch name="N0">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2752" y="1952" type="branch" />
            <wire x2="2752" y1="1952" y2="1968" x1="2752" />
            <wire x2="2784" y1="1952" y2="1952" x1="2752" />
            <wire x2="2784" y1="1952" y2="1968" x1="2784" />
        </branch>
        <instance x="704" y="672" name="XLXI_20" orien="R0" />
        <branch name="XLXN_87">
            <wire x2="976" y1="576" y2="576" x1="960" />
            <wire x2="992" y1="576" y2="576" x1="976" />
            <wire x2="1008" y1="576" y2="576" x1="992" />
        </branch>
        <instance x="1008" y="608" name="XLXI_22" orien="R0" />
        <branch name="PC_Current(31:0)">
            <wire x2="928" y1="1952" y2="2352" x1="928" />
            <wire x2="928" y1="2352" y2="2368" x1="928" />
            <wire x2="1952" y1="2368" y2="2368" x1="928" />
            <wire x2="3184" y1="2368" y2="2368" x1="1952" />
            <wire x2="1040" y1="1952" y2="1952" x1="928" />
            <wire x2="2000" y1="1456" y2="1456" x1="1952" />
            <wire x2="1952" y1="1456" y2="2368" x1="1952" />
            <wire x2="3184" y1="416" y2="416" x1="3072" />
            <wire x2="3264" y1="416" y2="416" x1="3184" />
            <wire x2="3184" y1="416" y2="1120" x1="3184" />
            <wire x2="3216" y1="1120" y2="1120" x1="3184" />
            <wire x2="3184" y1="1120" y2="2368" x1="3184" />
        </branch>
        <branch name="Inst(15:0),N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="896" y="1920" type="branch" />
            <wire x2="1040" y1="1920" y2="1920" x1="896" />
        </branch>
        <branch name="V5,V5,V5,V5,V5">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1152" y="1760" type="branch" />
            <wire x2="1216" y1="1760" y2="1760" x1="1152" />
        </branch>
    </sheet>
</drawing>