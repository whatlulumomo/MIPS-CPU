<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="kintex7" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="RSTN" />
        <signal name="clk_100mhz" />
        <signal name="CR" />
        <signal name="XLXN_4(4:0)" />
        <signal name="RDY" />
        <signal name="Pulse(3:0)" />
        <signal name="BTN_OK(3:0)" />
        <signal name="BTN_OK(2:0)" />
        <signal name="SW_OK(15:0)" />
        <signal name="SW_OK(7:5),SW_OK(15),SW_OK(0)" />
        <signal name="readn" />
        <signal name="K_COL(3:0)" />
        <signal name="K_ROW(4:0)" />
        <signal name="SW(15:0)" />
        <signal name="rst" />
        <signal name="Div(20)" />
        <signal name="SW_OK(0)" />
        <signal name="Div(25)" />
        <signal name="SEGEN" />
        <signal name="SEGDT" />
        <signal name="SEGCLR" />
        <signal name="SEGCLK" />
        <signal name="LE_out(7:0)" />
        <signal name="point_out(7:0)" />
        <signal name="Disp_num(31:0)" />
        <signal name="Div(31:0)" />
        <signal name="Clk_CPU" />
        <signal name="SW_OK(7:5)" />
        <signal name="N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0" />
        <signal name="Div(31:0),Div(31:0)" />
        <signal name="Counter_out(31:0)" />
        <signal name="blink(7:0)" />
        <signal name="SW_OK(2)" />
        <signal name="N0" />
        <signal name="CPU2IO(31:0)" />
        <signal name="LEDCLK" />
        <signal name="LEDDT" />
        <signal name="LEDEN" />
        <signal name="LEDCLR" />
        <signal name="V5" />
        <signal name="Buzzer" />
        <signal name="XLXN_60" />
        <signal name="XLXN_66(1:0)" />
        <signal name="XLXN_68" />
        <signal name="Div(6)" />
        <signal name="Div(9)" />
        <signal name="Div(11)" />
        <signal name="XLXN_82" />
        <signal name="XLXN_83" />
        <signal name="XLXN_84(15:0)" />
        <signal name="XLXN_86(31:0)" />
        <signal name="XLXN_88(9:0)" />
        <signal name="XLXN_90(31:0)" />
        <signal name="XLXN_91" />
        <signal name="Addr_out(31:0)" />
        <signal name="Data_in(31:0)" />
        <signal name="Data_out(31:0)" />
        <signal name="inst(31:0)" />
        <signal name="XLXN_97" />
        <signal name="PC(31:0)" />
        <signal name="N0,N0,PC(31:2)" />
        <signal name="Ai(31:0)" />
        <signal name="Bi(31:0)" />
        <signal name="XLXN_107" />
        <signal name="XLXN_108(0:0)" />
        <signal name="GPIOF0" />
        <signal name="State(4:0)" />
        <port polarity="Input" name="RSTN" />
        <port polarity="Input" name="clk_100mhz" />
        <port polarity="Output" name="CR" />
        <port polarity="Output" name="RDY" />
        <port polarity="Output" name="readn" />
        <port polarity="Input" name="K_COL(3:0)" />
        <port polarity="Output" name="K_ROW(4:0)" />
        <port polarity="Input" name="SW(15:0)" />
        <port polarity="Output" name="SEGEN" />
        <port polarity="Output" name="SEGDT" />
        <port polarity="Output" name="SEGCLR" />
        <port polarity="Output" name="SEGCLK" />
        <port polarity="Output" name="LEDCLK" />
        <port polarity="Output" name="LEDDT" />
        <port polarity="Output" name="LEDEN" />
        <port polarity="Output" name="LEDCLR" />
        <port polarity="Output" name="Buzzer" />
        <blockdef name="SAnti_jitter">
            <timestamp>2017-2-28T6:36:45</timestamp>
            <rect style="linewidth:W;linecolor:rgb(0,0,255);fillcolor:rgb(170,255,255);fillstyle:Solid" width="300" x="64" y="-248" height="256" />
            <line x2="32" y1="-64" y2="-64" style="linewidth:W" x1="64" />
            <line x2="32" y1="-32" y2="-32" x1="64" />
            <line x2="32" y1="-160" y2="-160" style="linewidth:W" x1="64" />
            <line x2="32" y1="-112" y2="-112" style="linewidth:W" x1="64" />
            <line x2="32" y1="-224" y2="-224" x1="64" />
            <line x2="32" y1="-192" y2="-192" x1="64" />
            <line x2="400" y1="-192" y2="-192" style="linewidth:W" x1="368" />
            <line x2="364" y1="-160" y2="-160" x1="400" />
            <line x2="364" y1="-224" y2="-224" x1="400" />
            <line x2="364" y1="-16" y2="-16" x1="400" />
            <line x2="400" y1="-48" y2="-48" style="linewidth:W" x1="368" />
            <line x2="400" y1="-128" y2="-128" style="linewidth:W" x1="368" />
            <line x2="400" y1="-96" y2="-96" style="linewidth:W" x1="368" />
        </blockdef>
        <blockdef name="SEnter_2_32">
            <timestamp>2017-2-27T12:58:51</timestamp>
            <line x2="288" y1="-240" y2="-240" x1="320" />
            <line x2="320" y1="-192" y2="-192" style="linewidth:W" x1="288" />
            <line x2="320" y1="-128" y2="-128" style="linewidth:W" x1="288" />
            <line x2="320" y1="-64" y2="-64" style="linewidth:W" x1="288" />
            <rect style="linewidth:W;linecolor:rgb(0,0,255);fillcolor:rgb(170,255,255);fillstyle:Solid" width="256" x="32" y="-272" height="272" />
            <line x2="0" y1="-208" y2="-208" style="linewidth:W" x1="32" />
            <line x2="0" y1="-176" y2="-176" x1="32" />
            <line x2="0" y1="-240" y2="-240" x1="32" />
            <line x2="0" y1="-64" y2="-64" style="linewidth:W" x1="32" />
            <line x2="0" y1="-112" y2="-112" style="linewidth:W" x1="32" />
        </blockdef>
        <blockdef name="clk_div">
            <timestamp>2017-2-27T12:58:4</timestamp>
            <rect style="linewidth:W;linecolor:rgb(0,0,255);fillcolor:rgb(142,240,255);fillstyle:Solid" width="256" x="32" y="-140" height="140" />
            <line x2="0" y1="-80" y2="-80" x1="32" />
            <line x2="0" y1="-112" y2="-112" x1="32" />
            <line x2="0" y1="-32" y2="-32" x1="32" />
            <line x2="320" y1="-112" y2="-112" style="linewidth:W" x1="288" />
            <line x2="320" y1="-32" y2="-32" x1="288" />
        </blockdef>
        <blockdef name="Multi_8CH32">
            <timestamp>2017-2-27T13:0:15</timestamp>
            <line x2="0" y1="-528" y2="-528" style="linewidth:W" x1="32" />
            <line x2="0" y1="-464" y2="-464" style="linewidth:W" x1="32" />
            <line x2="0" y1="-672" y2="-672" x1="32" />
            <line x2="0" y1="-624" y2="-624" x1="32" />
            <line x2="0" y1="-576" y2="-576" x1="32" />
            <line x2="0" y1="-416" y2="-416" style="linewidth:W" x1="32" />
            <line x2="0" y1="-368" y2="-368" style="linewidth:W" x1="32" />
            <line x2="0" y1="-320" y2="-320" style="linewidth:W" x1="32" />
            <line x2="0" y1="-272" y2="-272" style="linewidth:W" x1="32" />
            <line x2="0" y1="-224" y2="-224" style="linewidth:W" x1="32" />
            <line x2="0" y1="-176" y2="-176" style="linewidth:W" x1="32" />
            <line x2="0" y1="-128" y2="-128" style="linewidth:W" x1="32" />
            <line x2="0" y1="-80" y2="-80" style="linewidth:W" x1="32" />
            <line x2="0" y1="-32" y2="-32" style="linewidth:W" x1="32" />
            <line x2="352" y1="-576" y2="-576" style="linewidth:W" x1="384" />
            <line x2="352" y1="-528" y2="-528" style="linewidth:W" x1="384" />
            <line x2="352" y1="-624" y2="-624" style="linewidth:W" x1="384" />
            <rect style="fillcolor:rgb(179,164,255);fillstyle:Solid" width="320" x="32" y="-696" height="696" />
        </blockdef>
        <blockdef name="RAM_B">
            <timestamp>2017-2-27T12:59:24</timestamp>
            <rect style="fillcolor:rgb(255,170,255);fillstyle:Solid" width="512" x="32" y="32" height="316" />
            <line x2="32" y1="80" y2="80" style="linewidth:W" x1="0" />
            <line x2="32" y1="272" y2="272" x1="0" />
            <line x2="32" y1="144" y2="144" style="linewidth:W" x1="0" />
            <line x2="32" y1="224" y2="224" style="linewidth:W" x1="0" />
            <line x2="544" y1="144" y2="144" style="linewidth:W" x1="576" />
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
        <blockdef name="buf">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="128" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="0" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="-64" x1="128" />
            <line x2="64" y1="-64" y2="0" x1="64" />
        </blockdef>
        <blockdef name="GPIO">
            <timestamp>2017-2-28T11:24:31</timestamp>
            <line x2="32" y1="-224" y2="-224" x1="64" />
            <line x2="32" y1="-32" y2="-32" style="linewidth:W" x1="64" />
            <line x2="464" y1="-224" y2="-224" style="linewidth:W" x1="448" />
            <line x2="32" y1="-176" y2="-176" x1="64" />
            <line x2="32" y1="-128" y2="-128" x1="64" />
            <line x2="32" y1="-80" y2="-80" x1="64" />
            <line x2="464" y1="-192" y2="-192" style="linewidth:W" x1="448" />
            <line x2="464" y1="-160" y2="-160" style="linewidth:W" x1="448" />
            <line x2="448" y1="-128" y2="-128" x1="464" />
            <line x2="464" y1="-96" y2="-96" x1="448" />
            <line x2="448" y1="-32" y2="-32" x1="464" />
            <line x2="464" y1="-64" y2="-64" x1="448" />
            <rect style="fillcolor:rgb(149,160,255);fillstyle:Solid" width="384" x="64" y="-260" height="256" />
        </blockdef>
        <blockdef name="Display">
            <timestamp>2017-2-28T11:40:8</timestamp>
            <line x2="0" y1="-48" y2="-48" style="linewidth:W" x1="32" />
            <line x2="368" y1="-160" y2="-160" x1="384" />
            <line x2="368" y1="-224" y2="-224" x1="384" />
            <line x2="368" y1="-96" y2="-96" x1="384" />
            <line x2="0" y1="-80" y2="-80" style="linewidth:W" x1="32" />
            <line x2="0" y1="-112" y2="-112" style="linewidth:W" x1="32" />
            <rect style="linecolor:rgb(0,0,0);fillcolor:rgb(174,185,255);fillstyle:Solid" width="336" x="32" y="-372" height="360" />
            <line x2="0" y1="-224" y2="-224" x1="32" />
            <line x2="0" y1="-160" y2="-160" x1="32" />
            <line x2="368" y1="-288" y2="-288" x1="384" />
            <line x2="0" y1="-336" y2="-336" x1="32" />
            <line x2="0" y1="-304" y2="-304" x1="32" />
            <line x2="0" y1="-272" y2="-272" x1="32" />
        </blockdef>
        <blockdef name="MIO_BUS">
            <timestamp>2017-3-13T11:57:24</timestamp>
            <rect style="fillcolor:rgb(255,255,127);fillstyle:Solid" width="432" x="64" y="-832" height="832" />
            <line x2="32" y1="-800" y2="-800" x1="64" />
            <line x2="32" y1="-736" y2="-736" x1="64" />
            <line x2="32" y1="-544" y2="-544" x1="64" />
            <line x2="32" y1="-480" y2="-480" style="linewidth:W" x1="64" />
            <line x2="32" y1="-416" y2="-416" style="linewidth:W" x1="64" />
            <line x2="32" y1="-352" y2="-352" style="linewidth:W" x1="64" />
            <line x2="32" y1="-64" y2="-64" style="linewidth:W" x1="64" />
            <line x2="32" y1="-112" y2="-112" style="linewidth:W" x1="64" />
            <line x2="32" y1="-160" y2="-160" x1="64" />
            <line x2="32" y1="-208" y2="-208" style="linewidth:W" x1="64" />
            <line x2="528" y1="-192" y2="-192" style="linewidth:W" x1="496" />
            <line x2="496" y1="-160" y2="-160" x1="528" />
            <line x2="496" y1="-128" y2="-128" x1="528" />
            <line x2="496" y1="-96" y2="-96" x1="528" />
            <line x2="528" y1="-64" y2="-64" x1="496" />
            <line x2="32" y1="-672" y2="-672" style="linewidth:W" x1="64" />
            <line x2="32" y1="-624" y2="-624" style="linewidth:W" x1="64" />
            <line x2="528" y1="-368" y2="-368" style="linewidth:W" x1="496" />
            <line x2="528" y1="-768" y2="-768" style="linewidth:W" x1="496" />
            <line x2="528" y1="-720" y2="-720" x1="496" />
            <line x2="528" y1="-672" y2="-672" x1="496" />
        </blockdef>
        <blockdef name="Counter">
            <timestamp>2017-3-13T11:57:15</timestamp>
            <rect style="fillcolor:rgb(180,180,180);fillstyle:Solid" width="384" x="64" y="-512" height="512" />
            <line x2="0" y1="-480" y2="-480" x1="64" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="512" y1="-480" y2="-480" x1="448" />
            <line x2="512" y1="-336" y2="-336" x1="448" />
            <line x2="512" y1="-192" y2="-192" x1="448" />
            <rect width="64" x="448" y="-60" height="24" />
            <line x2="512" y1="-48" y2="-48" x1="448" />
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
        <blockdef name="MCPU">
            <timestamp>2017-5-1T12:41:0</timestamp>
            <line x2="-48" y1="-512" y2="-512" x1="-16" />
            <line x2="-48" y1="-464" y2="-464" x1="-16" />
            <line x2="-48" y1="-384" y2="-384" style="linewidth:W" x1="-16" />
            <line x2="-48" y1="-224" y2="-224" style="linecolor:rgb(255,0,0)" x1="-16" />
            <rect style="linewidth:W;linecolor:rgb(0,0,255);fillcolor:rgb(255,170,255);fillstyle:Solid" width="384" x="-16" y="-580" height="564" />
            <line x2="400" y1="-432" y2="-432" style="linewidth:W" x1="368" />
            <line x2="400" y1="-496" y2="-496" x1="368" />
            <line x2="400" y1="-368" y2="-368" style="linewidth:W" x1="368" />
            <line x2="400" y1="-304" y2="-304" style="linewidth:W" x1="368" />
            <line x2="-16" y1="-112" y2="-112" style="linewidth:W" x1="-48" />
            <line x2="400" y1="-64" y2="-64" x1="368" />
            <line x2="368" y1="-112" y2="-112" x1="400" />
            <line x2="368" y1="-160" y2="-160" style="linewidth:W" x1="400" />
        </blockdef>
        <block symbolname="SAnti_jitter" name="XLXI_2">
            <blockpin signalname="SW(15:0)" name="SW(15:0)" />
            <blockpin signalname="readn" name="readn" />
            <blockpin signalname="K_COL(3:0)" name="Key_y(3:0)" />
            <blockpin signalname="K_ROW(4:0)" name="Key_x(4:0)" />
            <blockpin signalname="RSTN" name="RSTN" />
            <blockpin signalname="clk_100mhz" name="clk" />
            <blockpin signalname="XLXN_4(4:0)" name="Key_out(4:0)" />
            <blockpin signalname="RDY" name="Key_ready" />
            <blockpin signalname="CR" name="CR" />
            <blockpin signalname="rst" name="rst" />
            <blockpin signalname="SW_OK(15:0)" name="SW_OK(15:0)" />
            <blockpin signalname="Pulse(3:0)" name="pulse_out(3:0)" />
            <blockpin signalname="BTN_OK(3:0)" name="BTN_OK(3:0)" />
        </block>
        <block symbolname="SEnter_2_32" name="XLXI_4">
            <blockpin signalname="readn" name="readn" />
            <blockpin signalname="Ai(31:0)" name="Ai(31:0)" />
            <blockpin signalname="Bi(31:0)" name="Bi(31:0)" />
            <blockpin signalname="blink(7:0)" name="blink(7:0)" />
            <blockpin signalname="XLXN_4(4:0)" name="Din(4:0)" />
            <blockpin signalname="RDY" name="D_ready" />
            <blockpin signalname="clk_100mhz" name="clk" />
            <blockpin signalname="SW_OK(7:5),SW_OK(15),SW_OK(0)" name="Ctrl(4:0)" />
            <blockpin signalname="BTN_OK(2:0)" name="BTN(2:0)" />
        </block>
        <block symbolname="clk_div" name="XLXI_5">
            <blockpin signalname="rst" name="rst" />
            <blockpin signalname="clk_100mhz" name="clk" />
            <blockpin signalname="SW_OK(2)" name="SW2" />
            <blockpin signalname="Div(31:0)" name="clkdiv(31:0)" />
            <blockpin signalname="Clk_CPU" name="Clk_CPU" />
        </block>
        <block symbolname="vcc" name="XLXI_13">
            <blockpin signalname="V5" name="P" />
        </block>
        <block symbolname="gnd" name="XLXI_14">
            <blockpin signalname="N0" name="G" />
        </block>
        <block symbolname="GPIO" name="XLXI_17">
            <blockpin signalname="XLXN_107" name="clk" />
            <blockpin signalname="CPU2IO(31:0)" name="P_Data(31:0)" />
            <blockpin signalname="rst" name="rst" />
            <blockpin signalname="GPIOF0" name="EN" />
            <blockpin signalname="Div(20)" name="Start" />
            <blockpin signalname="LEDCLK" name="led_clk" />
            <blockpin name="GPIOf0(13:0)" />
            <blockpin signalname="XLXN_84(15:0)" name="LED_out(15:0)" />
            <blockpin signalname="XLXN_66(1:0)" name="counter_set(1:0)" />
            <blockpin signalname="LEDCLR" name="led_clrn" />
            <blockpin signalname="LEDEN" name="LED_PEN" />
            <blockpin signalname="LEDDT" name="led_sout" />
        </block>
        <block symbolname="Display" name="XLXI_22">
            <blockpin signalname="LE_out(7:0)" name="LES(7:0)" />
            <blockpin signalname="SEGEN" name="SEG_PEN" />
            <blockpin signalname="SEGDT" name="seg_sout" />
            <blockpin signalname="SEGCLR" name="seg_clrn" />
            <blockpin signalname="point_out(7:0)" name="point(7:0)" />
            <blockpin signalname="Disp_num(31:0)" name="Hexs(31:0)" />
            <blockpin signalname="SW_OK(0)" name="Text" />
            <blockpin signalname="Div(25)" name="flash" />
            <blockpin signalname="SEGCLK" name="seg_clk" />
            <blockpin signalname="clk_100mhz" name="clk" />
            <blockpin signalname="rst" name="rst" />
            <blockpin signalname="Div(20)" name="Start" />
        </block>
        <block symbolname="Multi_8CH32" name="XLXI_23">
            <blockpin signalname="SW_OK(7:5)" name="Test(2:0)" />
            <blockpin signalname="Div(31:0),Div(31:0)" name="point_in(63:0)" />
            <blockpin signalname="XLXN_60" name="EN" />
            <blockpin signalname="XLXN_107" name="clk" />
            <blockpin signalname="rst" name="rst" />
            <blockpin signalname="N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0" name="LES(63:0)" />
            <blockpin signalname="CPU2IO(31:0)" name="Data0(31:0)" />
            <blockpin signalname="N0,N0,PC(31:2)" name="data1(31:0)" />
            <blockpin signalname="inst(31:0)" name="data2(31:0)" />
            <blockpin signalname="Counter_out(31:0)" name="data3(31:0)" />
            <blockpin signalname="Addr_out(31:0)" name="data4(31:0)" />
            <blockpin signalname="Data_out(31:0)" name="data5(31:0)" />
            <blockpin signalname="Data_in(31:0)" name="data6(31:0)" />
            <blockpin signalname="PC(31:0)" name="data7(31:0)" />
            <blockpin signalname="point_out(7:0)" name="point_out(7:0)" />
            <blockpin signalname="LE_out(7:0)" name="LE_out(7:0)" />
            <blockpin signalname="Disp_num(31:0)" name="Disp_num(31:0)" />
        </block>
        <block symbolname="MIO_BUS" name="XLXI_24">
            <blockpin signalname="rst" name="rst" />
            <blockpin signalname="clk_100mhz" name="clk" />
            <blockpin signalname="XLXN_91" name="mem_w" />
            <blockpin signalname="Addr_out(31:0)" name="addr_bus(31:0)" />
            <blockpin signalname="Data_in(31:0)" name="Cpu_data4bus(31:0)" />
            <blockpin signalname="Data_out(31:0)" name="Cpu_data2bus(31:0)" />
            <blockpin signalname="XLXN_86(31:0)" name="ram_data_out(31:0)" />
            <blockpin signalname="XLXN_88(9:0)" name="ram_addr(9:0)" />
            <blockpin signalname="XLXN_108(0:0)" name="data_ram_we" />
            <blockpin signalname="XLXN_90(31:0)" name="ram_data_in(31:0)" />
            <blockpin signalname="Counter_out(31:0)" name="counter_out(31:0)" />
            <blockpin signalname="XLXN_83" name="counter2_out" />
            <blockpin signalname="XLXN_82" name="counter1_out" />
            <blockpin signalname="XLXN_97" name="counter0_out" />
            <blockpin signalname="XLXN_68" name="counter_we" />
            <blockpin signalname="BTN_OK(3:0)" name="BTN(3:0)" />
            <blockpin signalname="SW_OK(15:0)" name="SW(15:0)" />
            <blockpin signalname="XLXN_84(15:0)" name="led_out(15:0)" />
            <blockpin signalname="CPU2IO(31:0)" name="Peripheral_in(31:0)" />
            <blockpin signalname="XLXN_60" name="GPIOe0000000_we" />
            <blockpin signalname="GPIOF0" name="GPIOf0000000_we" />
        </block>
        <block symbolname="buf" name="XLXI_16">
            <blockpin signalname="V5" name="I" />
            <blockpin signalname="Buzzer" name="O" />
        </block>
        <block symbolname="Counter" name="XLXI_26">
            <blockpin signalname="XLXN_107" name="clk" />
            <blockpin signalname="rst" name="rst" />
            <blockpin signalname="Div(6)" name="clk0" />
            <blockpin signalname="Div(9)" name="clk1" />
            <blockpin signalname="Div(11)" name="clk2" />
            <blockpin signalname="XLXN_68" name="counter_we" />
            <blockpin signalname="CPU2IO(31:0)" name="counter_val(31:0)" />
            <blockpin signalname="XLXN_66(1:0)" name="counter_ch(1:0)" />
            <blockpin signalname="XLXN_97" name="counter0_OUT" />
            <blockpin signalname="XLXN_82" name="counter1_OUT" />
            <blockpin signalname="XLXN_83" name="counter2_OUT" />
            <blockpin signalname="Counter_out(31:0)" name="counter_out(31:0)" />
        </block>
        <block symbolname="inv" name="XLXI_27">
            <blockpin signalname="Clk_CPU" name="I" />
            <blockpin signalname="XLXN_107" name="O" />
        </block>
        <block symbolname="RAM_B" name="XLXI_10">
            <blockpin signalname="XLXN_88(9:0)" name="addra(9:0)" />
            <blockpin signalname="clk_100mhz" name="clka" />
            <blockpin signalname="XLXN_108(0:0)" name="wea(0:0)" />
            <blockpin signalname="XLXN_90(31:0)" name="dina(31:0)" />
            <blockpin signalname="XLXN_86(31:0)" name="douta(31:0)" />
        </block>
        <block symbolname="MCPU" name="XLXI_29">
            <blockpin signalname="Clk_CPU" name="clk" />
            <blockpin signalname="rst" name="reset" />
            <blockpin signalname="inst(31:0)" name="inst_out(31:0)" />
            <blockpin signalname="XLXN_97" name="INT" />
            <blockpin signalname="Addr_out(31:0)" name="Addr_out(31:0)" />
            <blockpin signalname="XLXN_91" name="mem_w" />
            <blockpin signalname="Data_out(31:0)" name="Data_out(31:0)" />
            <blockpin signalname="Data_in(31:0)" name="Data_in(31:0)" />
            <blockpin signalname="PC(31:0)" name="PC_out(31:0)" />
            <blockpin signalname="V5" name="MIO_ready" />
            <blockpin name="CPU_MIO" />
            <blockpin signalname="State(4:0)" name="state(4:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="7040" height="5440">
        <instance x="1728" y="848" name="XLXI_2" orien="R0">
        </instance>
        <instance x="2672" y="864" name="XLXI_4" orien="R0">
        </instance>
        <branch name="RSTN">
            <wire x2="1760" y1="624" y2="624" x1="768" />
        </branch>
        <branch name="CR">
            <wire x2="2208" y1="624" y2="624" x1="2128" />
        </branch>
        <branch name="XLXN_4(4:0)">
            <wire x2="2672" y1="656" y2="656" x1="2128" />
        </branch>
        <branch name="RDY">
            <wire x2="2592" y1="688" y2="688" x1="2128" />
            <wire x2="2672" y1="688" y2="688" x1="2592" />
            <wire x2="2592" y1="560" y2="688" x1="2592" />
            <wire x2="2992" y1="560" y2="560" x1="2592" />
        </branch>
        <branch name="Pulse(3:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2208" y="720" type="branch" />
            <wire x2="2208" y1="720" y2="720" x1="2128" />
        </branch>
        <branch name="BTN_OK(3:0)">
            <wire x2="2240" y1="752" y2="752" x1="2128" />
            <wire x2="2352" y1="752" y2="752" x1="2240" />
            <wire x2="2240" y1="752" y2="1984" x1="2240" />
            <wire x2="2848" y1="1984" y2="1984" x1="2240" />
        </branch>
        <bustap x2="2448" y1="752" y2="752" x1="2352" />
        <branch name="BTN_OK(2:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2560" y="752" type="branch" />
            <wire x2="2560" y1="752" y2="752" x1="2448" />
            <wire x2="2672" y1="752" y2="752" x1="2560" />
        </branch>
        <branch name="SW_OK(15:0)">
            <wire x2="2272" y1="800" y2="800" x1="2128" />
            <wire x2="2272" y1="800" y2="1728" x1="2272" />
            <wire x2="2304" y1="1728" y2="1728" x1="2272" />
            <wire x2="2272" y1="1728" y2="2032" x1="2272" />
            <wire x2="2848" y1="2032" y2="2032" x1="2272" />
            <wire x2="2352" y1="800" y2="800" x1="2272" />
        </branch>
        <bustap x2="2448" y1="800" y2="800" x1="2352" />
        <branch name="SW_OK(7:5),SW_OK(15),SW_OK(0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2560" y="800" type="branch" />
            <wire x2="2560" y1="800" y2="800" x1="2448" />
            <wire x2="2672" y1="800" y2="800" x1="2560" />
        </branch>
        <instance x="1760" y="1120" name="XLXI_5" orien="R0">
        </instance>
        <branch name="readn">
            <wire x2="1760" y1="816" y2="816" x1="1744" />
            <wire x2="1744" y1="816" y2="896" x1="1744" />
            <wire x2="3120" y1="896" y2="896" x1="1744" />
            <wire x2="3120" y1="624" y2="624" x1="2992" />
            <wire x2="3120" y1="624" y2="896" x1="3120" />
            <wire x2="3168" y1="624" y2="624" x1="3120" />
        </branch>
        <iomarker fontsize="28" x="2208" y="624" name="CR" orien="R0" />
        <iomarker fontsize="28" x="2992" y="560" name="RDY" orien="R0" />
        <iomarker fontsize="28" x="3168" y="624" name="readn" orien="R0" />
        <branch name="K_COL(3:0)">
            <wire x2="1760" y1="688" y2="688" x1="832" />
        </branch>
        <branch name="K_ROW(4:0)">
            <wire x2="1760" y1="736" y2="736" x1="864" />
        </branch>
        <branch name="SW(15:0)">
            <wire x2="1760" y1="784" y2="784" x1="816" />
        </branch>
        <iomarker fontsize="28" x="768" y="624" name="RSTN" orien="R180" />
        <iomarker fontsize="28" x="704" y="1088" name="clk_100mhz" orien="R180" />
        <iomarker fontsize="28" x="832" y="688" name="K_COL(3:0)" orien="R180" />
        <iomarker fontsize="28" x="864" y="736" name="K_ROW(4:0)" orien="R180" />
        <iomarker fontsize="28" x="816" y="784" name="SW(15:0)" orien="R180" />
        <branch name="rst">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="3680" y="624" type="branch" />
            <wire x2="3744" y1="624" y2="624" x1="3680" />
        </branch>
        <branch name="Div(20)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="3680" y="656" type="branch" />
            <wire x2="3744" y1="656" y2="656" x1="3680" />
        </branch>
        <branch name="SW_OK(0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="3680" y="704" type="branch" />
            <wire x2="3744" y1="704" y2="704" x1="3680" />
        </branch>
        <branch name="Div(25)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="3680" y="768" type="branch" />
            <wire x2="3744" y1="768" y2="768" x1="3680" />
        </branch>
        <branch name="SEGEN">
            <wire x2="4160" y1="768" y2="768" x1="4128" />
        </branch>
        <iomarker fontsize="28" x="4160" y="768" name="SEGEN" orien="R0" />
        <branch name="SEGDT">
            <wire x2="4160" y1="704" y2="704" x1="4128" />
        </branch>
        <iomarker fontsize="28" x="4160" y="704" name="SEGDT" orien="R0" />
        <branch name="SEGCLR">
            <wire x2="4160" y1="832" y2="832" x1="4128" />
        </branch>
        <iomarker fontsize="28" x="4160" y="832" name="SEGCLR" orien="R0" />
        <branch name="SEGCLK">
            <wire x2="4160" y1="640" y2="640" x1="4128" />
        </branch>
        <iomarker fontsize="28" x="4160" y="640" name="SEGCLK" orien="R0" />
        <branch name="LE_out(7:0)">
            <wire x2="3680" y1="880" y2="1168" x1="3680" />
            <wire x2="4720" y1="1168" y2="1168" x1="3680" />
            <wire x2="4720" y1="1168" y2="1728" x1="4720" />
            <wire x2="3744" y1="880" y2="880" x1="3680" />
            <wire x2="4720" y1="1728" y2="1728" x1="4464" />
        </branch>
        <branch name="point_out(7:0)">
            <wire x2="3744" y1="848" y2="848" x1="3632" />
            <wire x2="3632" y1="848" y2="1248" x1="3632" />
            <wire x2="4672" y1="1248" y2="1248" x1="3632" />
            <wire x2="4672" y1="1248" y2="1680" x1="4672" />
            <wire x2="4672" y1="1680" y2="1680" x1="4464" />
        </branch>
        <branch name="Disp_num(31:0)">
            <wire x2="3744" y1="816" y2="816" x1="3568" />
            <wire x2="3568" y1="816" y2="1344" x1="3568" />
            <wire x2="4624" y1="1344" y2="1344" x1="3568" />
            <wire x2="4624" y1="1344" y2="1632" x1="4624" />
            <wire x2="4624" y1="1632" y2="1632" x1="4464" />
        </branch>
        <branch name="Div(31:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2128" y="1008" type="branch" />
            <wire x2="2112" y1="1008" y2="1008" x1="2080" />
            <wire x2="2128" y1="1008" y2="1008" x1="2112" />
            <wire x2="2112" y1="1008" y2="1776" x1="2112" />
            <wire x2="2432" y1="1776" y2="1776" x1="2112" />
            <wire x2="2432" y1="1776" y2="3120" x1="2432" />
            <wire x2="2432" y1="3120" y2="3184" x1="2432" />
            <wire x2="2432" y1="3184" y2="3248" x1="2432" />
        </branch>
        <branch name="Clk_CPU">
            <wire x2="2176" y1="1888" y2="1888" x1="1376" />
            <wire x2="1376" y1="1888" y2="2096" x1="1376" />
            <wire x2="1456" y1="2096" y2="2096" x1="1376" />
            <wire x2="2176" y1="1088" y2="1088" x1="2080" />
            <wire x2="2736" y1="1088" y2="1088" x1="2176" />
            <wire x2="2176" y1="1088" y2="1888" x1="2176" />
        </branch>
        <bustap x2="2400" y1="1728" y2="1728" x1="2304" />
        <branch name="SW_OK(7:5)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="3072" y="1552" type="branch" />
            <wire x2="2400" y1="1552" y2="1728" x1="2400" />
            <wire x2="3072" y1="1552" y2="1552" x1="2400" />
            <wire x2="3568" y1="1552" y2="1552" x1="3072" />
            <wire x2="3568" y1="1552" y2="1728" x1="3568" />
            <wire x2="4080" y1="1728" y2="1728" x1="3568" />
        </branch>
        <branch name="N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="3952" y="1840" type="branch" />
            <wire x2="4080" y1="1840" y2="1840" x1="3952" />
        </branch>
        <branch name="Div(31:0),Div(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="3968" y="1792" type="branch" />
            <wire x2="4080" y1="1792" y2="1792" x1="3968" />
        </branch>
        <branch name="inst(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="3776" y="1984" type="branch" />
            <wire x2="4080" y1="1984" y2="1984" x1="3776" />
        </branch>
        <branch name="Counter_out(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="3776" y="2032" type="branch" />
            <wire x2="4080" y1="2032" y2="2032" x1="3776" />
        </branch>
        <branch name="Addr_out(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="3776" y="2080" type="branch" />
            <wire x2="4080" y1="2080" y2="2080" x1="3776" />
        </branch>
        <branch name="Data_out(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="3776" y="2128" type="branch" />
            <wire x2="4080" y1="2128" y2="2128" x1="3776" />
        </branch>
        <branch name="blink(7:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="3008" y="800" type="branch" />
            <wire x2="3008" y1="800" y2="800" x1="2992" />
        </branch>
        <branch name="SW_OK(2)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1744" y="1088" type="branch" />
            <wire x2="1760" y1="1088" y2="1088" x1="1744" />
        </branch>
        <instance x="4736" y="1872" name="XLXI_13" orien="R0" />
        <branch name="V5">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="4864" y="1920" type="branch" />
            <wire x2="4800" y1="1872" y2="1920" x1="4800" />
            <wire x2="4864" y1="1920" y2="1920" x1="4800" />
        </branch>
        <instance x="4640" y="2224" name="XLXI_14" orien="R0" />
        <branch name="N0">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="4752" y="2032" type="branch" />
            <wire x2="4704" y1="2032" y2="2096" x1="4704" />
            <wire x2="4752" y1="2032" y2="2032" x1="4704" />
        </branch>
        <branch name="Div(20)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="3936" y="2928" type="branch" />
            <wire x2="4000" y1="2928" y2="2928" x1="3936" />
        </branch>
        <branch name="CPU2IO(31:0)">
            <wire x2="2720" y1="3376" y2="3744" x1="2720" />
            <wire x2="3600" y1="3744" y2="3744" x1="2720" />
            <wire x2="2848" y1="3376" y2="3376" x1="2720" />
            <wire x2="3600" y1="1888" y2="1888" x1="3344" />
            <wire x2="4080" y1="1888" y2="1888" x1="3600" />
            <wire x2="3600" y1="1888" y2="2960" x1="3600" />
            <wire x2="3600" y1="2960" y2="3744" x1="3600" />
            <wire x2="3936" y1="2960" y2="2960" x1="3600" />
            <wire x2="3936" y1="2960" y2="2976" x1="3936" />
            <wire x2="4000" y1="2976" y2="2976" x1="3936" />
        </branch>
        <branch name="LEDCLK">
            <wire x2="4528" y1="2880" y2="2880" x1="4432" />
        </branch>
        <branch name="LEDDT">
            <wire x2="4528" y1="2912" y2="2912" x1="4432" />
        </branch>
        <branch name="LEDEN">
            <wire x2="4528" y1="2944" y2="2944" x1="4432" />
        </branch>
        <branch name="LEDCLR">
            <wire x2="4528" y1="2976" y2="2976" x1="4432" />
        </branch>
        <iomarker fontsize="28" x="4528" y="2880" name="LEDCLK" orien="R0" />
        <iomarker fontsize="28" x="4528" y="2912" name="LEDDT" orien="R0" />
        <iomarker fontsize="28" x="4528" y="2944" name="LEDEN" orien="R0" />
        <iomarker fontsize="28" x="4528" y="2976" name="LEDCLR" orien="R0" />
        <instance x="3968" y="3008" name="XLXI_17" orien="R0">
        </instance>
        <instance x="3744" y="928" name="XLXI_22" orien="R0">
        </instance>
        <instance x="4080" y="2256" name="XLXI_23" orien="R0">
        </instance>
        <instance x="2816" y="2656" name="XLXI_24" orien="R0">
        </instance>
        <instance x="1936" y="3888" name="XLXI_16" orien="R0" />
        <branch name="V5">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1904" y="3856" type="branch" />
            <wire x2="1936" y1="3856" y2="3856" x1="1904" />
        </branch>
        <branch name="Buzzer">
            <wire x2="2208" y1="3856" y2="3856" x1="2160" />
        </branch>
        <iomarker fontsize="28" x="2208" y="3856" name="Buzzer" orien="R0" />
        <instance x="2848" y="3472" name="XLXI_26" orien="R0">
        </instance>
        <branch name="XLXN_60">
            <wire x2="3712" y1="1936" y2="1936" x1="3344" />
            <wire x2="3712" y1="1680" y2="1936" x1="3712" />
            <wire x2="4080" y1="1680" y2="1680" x1="3712" />
        </branch>
        <instance x="2736" y="1120" name="XLXI_27" orien="R0" />
        <branch name="XLXN_66(1:0)">
            <wire x2="2784" y1="3440" y2="3680" x1="2784" />
            <wire x2="3520" y1="3680" y2="3680" x1="2784" />
            <wire x2="2848" y1="3440" y2="3440" x1="2784" />
            <wire x2="4480" y1="2704" y2="2704" x1="3520" />
            <wire x2="4480" y1="2704" y2="2784" x1="4480" />
            <wire x2="3520" y1="2704" y2="3680" x1="3520" />
            <wire x2="4480" y1="2784" y2="2784" x1="4432" />
        </branch>
        <branch name="XLXN_68">
            <wire x2="2656" y1="2720" y2="2720" x1="2336" />
            <wire x2="3344" y1="2720" y2="2720" x1="2656" />
            <wire x2="3360" y1="2720" y2="2720" x1="3344" />
            <wire x2="2336" y1="2720" y2="3296" x1="2336" />
            <wire x2="2336" y1="3296" y2="3312" x1="2336" />
            <wire x2="2848" y1="3312" y2="3312" x1="2336" />
            <wire x2="3360" y1="2592" y2="2592" x1="3344" />
            <wire x2="3360" y1="2592" y2="2720" x1="3360" />
        </branch>
        <instance x="1184" y="3264" name="XLXI_10" orien="R0">
        </instance>
        <bustap x2="2528" y1="3120" y2="3120" x1="2432" />
        <branch name="Div(6)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2688" y="3120" type="branch" />
            <wire x2="2688" y1="3120" y2="3120" x1="2528" />
            <wire x2="2848" y1="3120" y2="3120" x1="2688" />
        </branch>
        <bustap x2="2528" y1="3184" y2="3184" x1="2432" />
        <branch name="Div(9)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2688" y="3184" type="branch" />
            <wire x2="2688" y1="3184" y2="3184" x1="2528" />
            <wire x2="2848" y1="3184" y2="3184" x1="2688" />
        </branch>
        <bustap x2="2528" y1="3248" y2="3248" x1="2432" />
        <branch name="Div(11)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2688" y="3248" type="branch" />
            <wire x2="2688" y1="3248" y2="3248" x1="2528" />
            <wire x2="2848" y1="3248" y2="3248" x1="2688" />
        </branch>
        <branch name="Counter_out(31:0)">
            <wire x2="3488" y1="2464" y2="2464" x1="3344" />
            <wire x2="3488" y1="2464" y2="3424" x1="3488" />
            <wire x2="3488" y1="3424" y2="3424" x1="3360" />
        </branch>
        <branch name="XLXN_82">
            <wire x2="3392" y1="2528" y2="2528" x1="3344" />
            <wire x2="3392" y1="2528" y2="3136" x1="3392" />
            <wire x2="3392" y1="3136" y2="3136" x1="3360" />
        </branch>
        <branch name="XLXN_83">
            <wire x2="3440" y1="2496" y2="2496" x1="3344" />
            <wire x2="3440" y1="2496" y2="3280" x1="3440" />
            <wire x2="3440" y1="3280" y2="3280" x1="3360" />
        </branch>
        <branch name="XLXN_84(15:0)">
            <wire x2="4576" y1="2288" y2="2288" x1="3344" />
            <wire x2="4576" y1="2288" y2="2816" x1="4576" />
            <wire x2="4576" y1="2816" y2="2816" x1="4432" />
        </branch>
        <branch name="rst">
            <wire x2="1680" y1="1440" y2="1440" x1="1296" />
            <wire x2="2496" y1="1440" y2="1440" x1="1680" />
            <wire x2="2720" y1="1440" y2="1440" x1="2496" />
            <wire x2="2736" y1="1440" y2="1440" x1="2720" />
            <wire x2="3712" y1="1440" y2="1440" x1="2736" />
            <wire x2="3712" y1="1440" y2="1632" x1="3712" />
            <wire x2="3904" y1="1632" y2="1632" x1="3712" />
            <wire x2="4080" y1="1632" y2="1632" x1="3904" />
            <wire x2="3904" y1="1632" y2="2832" x1="3904" />
            <wire x2="3936" y1="2832" y2="2832" x1="3904" />
            <wire x2="4000" y1="2832" y2="2832" x1="3936" />
            <wire x2="2496" y1="1440" y2="1920" x1="2496" />
            <wire x2="2496" y1="1920" y2="3056" x1="2496" />
            <wire x2="2848" y1="3056" y2="3056" x1="2496" />
            <wire x2="2848" y1="1920" y2="1920" x1="2496" />
            <wire x2="1296" y1="1440" y2="2144" x1="1296" />
            <wire x2="1456" y1="2144" y2="2144" x1="1296" />
            <wire x2="1680" y1="944" y2="1040" x1="1680" />
            <wire x2="1760" y1="1040" y2="1040" x1="1680" />
            <wire x2="1680" y1="1040" y2="1440" x1="1680" />
            <wire x2="2208" y1="944" y2="944" x1="1680" />
            <wire x2="2208" y1="832" y2="832" x1="2128" />
            <wire x2="2208" y1="832" y2="944" x1="2208" />
        </branch>
        <branch name="XLXN_86(31:0)">
            <wire x2="2288" y1="3408" y2="3408" x1="1760" />
            <wire x2="2848" y1="2592" y2="2592" x1="2288" />
            <wire x2="2288" y1="2592" y2="2608" x1="2288" />
            <wire x2="2288" y1="2608" y2="3408" x1="2288" />
        </branch>
        <branch name="XLXN_88(9:0)">
            <wire x2="2240" y1="3200" y2="3200" x1="1088" />
            <wire x2="1088" y1="3200" y2="3344" x1="1088" />
            <wire x2="1184" y1="3344" y2="3344" x1="1088" />
            <wire x2="2832" y1="2544" y2="2544" x1="2240" />
            <wire x2="2848" y1="2544" y2="2544" x1="2832" />
            <wire x2="2240" y1="2544" y2="3200" x1="2240" />
        </branch>
        <branch name="XLXN_90(31:0)">
            <wire x2="912" y1="3040" y2="3488" x1="912" />
            <wire x2="1184" y1="3488" y2="3488" x1="912" />
            <wire x2="2112" y1="3040" y2="3040" x1="912" />
            <wire x2="2112" y1="2448" y2="3040" x1="2112" />
            <wire x2="2848" y1="2448" y2="2448" x1="2112" />
        </branch>
        <branch name="clk_100mhz">
            <wire x2="752" y1="1088" y2="1088" x1="704" />
            <wire x2="752" y1="1088" y2="2848" x1="752" />
            <wire x2="752" y1="2848" y2="3536" x1="752" />
            <wire x2="1024" y1="3536" y2="3536" x1="752" />
            <wire x2="1184" y1="3536" y2="3536" x1="1024" />
            <wire x2="1248" y1="1088" y2="1088" x1="752" />
            <wire x2="1248" y1="1088" y2="1216" x1="1248" />
            <wire x2="1600" y1="1216" y2="1216" x1="1248" />
            <wire x2="2784" y1="1216" y2="1216" x1="1600" />
            <wire x2="2784" y1="1216" y2="1856" x1="2784" />
            <wire x2="2848" y1="1856" y2="1856" x1="2784" />
            <wire x2="1600" y1="1008" y2="1216" x1="1600" />
            <wire x2="1648" y1="1008" y2="1008" x1="1600" />
            <wire x2="1760" y1="1008" y2="1008" x1="1648" />
            <wire x2="1648" y1="656" y2="1008" x1="1648" />
            <wire x2="1696" y1="656" y2="656" x1="1648" />
            <wire x2="1760" y1="656" y2="656" x1="1696" />
            <wire x2="1696" y1="528" y2="656" x1="1696" />
            <wire x2="2656" y1="528" y2="528" x1="1696" />
            <wire x2="2656" y1="528" y2="624" x1="2656" />
            <wire x2="2672" y1="624" y2="624" x1="2656" />
            <wire x2="2656" y1="496" y2="528" x1="2656" />
            <wire x2="3168" y1="496" y2="496" x1="2656" />
            <wire x2="3168" y1="496" y2="528" x1="3168" />
            <wire x2="3408" y1="528" y2="528" x1="3168" />
            <wire x2="3408" y1="528" y2="592" x1="3408" />
            <wire x2="3744" y1="592" y2="592" x1="3408" />
        </branch>
        <branch name="XLXN_91">
            <wire x2="2848" y1="2112" y2="2112" x1="1904" />
        </branch>
        <branch name="Addr_out(31:0)">
            <wire x2="2848" y1="2176" y2="2176" x1="1904" />
        </branch>
        <branch name="Data_in(31:0)">
            <wire x2="2848" y1="2240" y2="2240" x1="1904" />
        </branch>
        <branch name="Data_out(31:0)">
            <wire x2="2848" y1="2304" y2="2304" x1="1904" />
        </branch>
        <branch name="XLXN_97">
            <wire x2="1296" y1="2384" y2="2640" x1="1296" />
            <wire x2="2336" y1="2640" y2="2640" x1="1296" />
            <wire x2="2336" y1="2640" y2="2672" x1="2336" />
            <wire x2="3376" y1="2672" y2="2672" x1="2336" />
            <wire x2="3376" y1="2672" y2="2992" x1="3376" />
            <wire x2="1456" y1="2384" y2="2384" x1="1296" />
            <wire x2="3376" y1="2560" y2="2560" x1="3344" />
            <wire x2="3376" y1="2560" y2="2672" x1="3376" />
            <wire x2="3376" y1="2992" y2="2992" x1="3360" />
        </branch>
        <branch name="N0,N0,PC(31:2)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="3872" y="1936" type="branch" />
            <wire x2="4080" y1="1936" y2="1936" x1="3872" />
        </branch>
        <branch name="Data_in(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="3872" y="2176" type="branch" />
            <wire x2="4064" y1="2176" y2="2176" x1="3872" />
            <wire x2="4080" y1="2176" y2="2176" x1="4064" />
        </branch>
        <branch name="PC(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="3872" y="2224" type="branch" />
            <wire x2="4080" y1="2224" y2="2224" x1="3872" />
        </branch>
        <branch name="Ai(31:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="3072" y="672" type="branch" />
            <wire x2="3072" y1="672" y2="672" x1="2992" />
        </branch>
        <branch name="Bi(31:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="3072" y="736" type="branch" />
            <wire x2="3072" y1="736" y2="736" x1="2992" />
        </branch>
        <branch name="XLXN_107">
            <wire x2="2816" y1="2784" y2="2992" x1="2816" />
            <wire x2="2848" y1="2992" y2="2992" x1="2816" />
            <wire x2="3984" y1="2784" y2="2784" x1="2816" />
            <wire x2="4000" y1="2784" y2="2784" x1="3984" />
            <wire x2="3520" y1="1088" y2="1088" x1="2960" />
            <wire x2="3520" y1="1088" y2="1584" x1="3520" />
            <wire x2="3984" y1="1584" y2="1584" x1="3520" />
            <wire x2="4000" y1="1584" y2="1584" x1="3984" />
            <wire x2="4080" y1="1584" y2="1584" x1="4000" />
            <wire x2="3984" y1="1584" y2="2784" x1="3984" />
        </branch>
        <branch name="XLXN_108(0:0)">
            <wire x2="1040" y1="3136" y2="3408" x1="1040" />
            <wire x2="1184" y1="3408" y2="3408" x1="1040" />
            <wire x2="2192" y1="3136" y2="3136" x1="1040" />
            <wire x2="2192" y1="2496" y2="3136" x1="2192" />
            <wire x2="2848" y1="2496" y2="2496" x1="2192" />
        </branch>
        <branch name="GPIOF0">
            <wire x2="3424" y1="1984" y2="1984" x1="3344" />
            <wire x2="3520" y1="1984" y2="1984" x1="3424" />
            <wire x2="3520" y1="1984" y2="2416" x1="3520" />
            <wire x2="3744" y1="2416" y2="2416" x1="3520" />
            <wire x2="3744" y1="2416" y2="2880" x1="3744" />
            <wire x2="4000" y1="2880" y2="2880" x1="3744" />
        </branch>
        <branch name="PC(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="896" y="2496" type="branch" />
            <wire x2="928" y1="2496" y2="2496" x1="896" />
            <wire x2="1456" y1="2496" y2="2496" x1="928" />
        </branch>
        <branch name="inst(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1312" y="2224" type="branch" />
            <wire x2="1360" y1="2224" y2="2224" x1="1312" />
            <wire x2="1456" y1="2224" y2="2224" x1="1360" />
        </branch>
        <instance x="1504" y="2608" name="XLXI_29" orien="R0">
        </instance>
        <branch name="V5">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1936" y="2544" type="branch" />
            <wire x2="1936" y1="2544" y2="2544" x1="1904" />
        </branch>
        <branch name="State(4:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2048" y="2368" type="branch" />
            <wire x2="1952" y1="2448" y2="2448" x1="1904" />
            <wire x2="1952" y1="2368" y2="2448" x1="1952" />
            <wire x2="2048" y1="2368" y2="2368" x1="1952" />
        </branch>
    </sheet>
</drawing>