# File saved with Nlview 7.0r6  2020-01-29 bk=1.5227 VDI=41 GEI=36 GUI=JA:10.0 non-TLS-threadsafe
# 
# non-default properties - (restore without -noprops)
property attrcolor #000000
property attrfontsize 8
property autobundle 1
property backgroundcolor #ffffff
property boxcolor0 #000000
property boxcolor1 #000000
property boxcolor2 #000000
property boxinstcolor #000000
property boxpincolor #000000
property buscolor #008000
property closeenough 5
property createnetattrdsp 2048
property decorate 1
property elidetext 40
property fillcolor1 #ffffcc
property fillcolor2 #dfebf8
property fillcolor3 #f0f0f0
property gatecellname 2
property instattrmax 30
property instdrag 15
property instorder 1
property marksize 12
property maxfontsize 36
property maxzoom 15
property netcolor #19b400
property objecthighlight0 #ff00ff
property objecthighlight1 #ffff00
property objecthighlight2 #00ff00
property objecthighlight3 #ff6666
property objecthighlight4 #0000ff
property objecthighlight5 #ffc800
property objecthighlight7 #00ffff
property objecthighlight8 #ff00ff
property objecthighlight9 #ccccff
property objecthighlight10 #0ead00
property objecthighlight11 #cefc00
property objecthighlight12 #9e2dbe
property objecthighlight13 #ba6a29
property objecthighlight14 #fc0188
property objecthighlight15 #02f990
property objecthighlight16 #f1b0fb
property objecthighlight17 #fec004
property objecthighlight18 #149bff
property objecthighlight19 #eb591b
property overlapcolor #19b400
property pbuscolor #000000
property pbusnamecolor #000000
property pinattrmax 20
property pinorder 2
property pinpermute 0
property portcolor #000000
property portnamecolor #000000
property ripindexfontsize 8
property rippercolor #000000
property rubberbandcolor #000000
property rubberbandfontsize 36
property selectattr 0
property selectionappearance 2
property selectioncolor #0000ff
property sheetheight 44
property sheetwidth 68
property showmarks 1
property shownetname 0
property showpagenumbers 1
property showripindex 4
property timelimit 1
#
module new top_demo work:top_demo:NOFILE -nosplit
load symbol RTL_ADD14 work RTL(+) pin I1 input.left pinBus I0 input.left [16:0] pinBus O output.right [16:0] fillcolor 1
load symbol RTL_MUX753 work MUX pinBus I0 input.left [16:0] pinBus I1 input.left [16:0] pinBus O output.right [16:0] pinBus S input.bot [16:0] fillcolor 1
load symbol clk_div work:clk_div:NOFILE HIERBOX pin clk input.left pin clk_en output.right pin rst input.left boxcolor 1 fillcolor 2 minwidth 13%
load symbol segment_driver work:segment_driver:NOFILE HIERBOX pin clk input.left pin rst input.left pinBus decimals input.left [3:0] pinBus digit0 input.left [3:0] pinBus digit1 input.left [3:0] pinBus digit2 input.left [3:0] pinBus digit3 input.left [3:0] pinBus digit_anodes output.right [3:0] pinBus segment_cathodes output.right [7:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol game work:game:NOFILE HIERBOX pin clk input.left pin lfsr_load input.left pin reset input.left pin start input.left pinBus grid_evolve output.right [63:0] pinBus seed input.left [63:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol RTL_ROM17 work GEN pin O output.right pinBus A input.left [16:0] fillcolor 1
load symbol hdmi_top work:hdmi_top:NOFILE HIERBOX pin CLK_125MHZ input.left pin HDMI_CEC input.left pin HDMI_CLK output.right pin HDMI_CLK_N output.right pin HDMI_HPD input.left pin HDMI_SCL inout.left pin HDMI_SDA inout.right pinBus HDMI_TX output.right [2:0] pinBus HDMI_TX_N output.right [2:0] pinBus n2 input.left [63:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol RTL_REG_SYNC__BREG_1 work[16:0]swws GEN pin C input.clk.left pinBus D input.left [16:0] pinBus Q output.right [16:0] pin RST input.top fillcolor 1 sandwich 3 prop @bundle 17
load port hdmi_cec inout -pg 1 -lvl 6 -x 1920 -y 20
load port hdmi_clk_n output -pg 1 -lvl 6 -x 1920 -y 90
load port hdmi_clk_p output -pg 1 -lvl 6 -x 1920 -y 60
load port hdmi_hpd input -pg 1 -lvl 0 -x 0 -y 120
load port hdmi_scl inout -pg 1 -lvl 6 -x 1920 -y 210
load port hdmi_sda inout -pg 1 -lvl 6 -x 1920 -y 120
load port rst input -pg 1 -lvl 0 -x 0 -y 20
load port sseg_ca output -pg 1 -lvl 6 -x 1920 -y 410
load port sseg_cb output -pg 1 -lvl 6 -x 1920 -y 440
load port sseg_cc output -pg 1 -lvl 6 -x 1920 -y 470
load port sseg_cd output -pg 1 -lvl 6 -x 1920 -y 500
load port sseg_ce output -pg 1 -lvl 6 -x 1920 -y 530
load port sseg_cf output -pg 1 -lvl 6 -x 1920 -y 560
load port sseg_cg output -pg 1 -lvl 6 -x 1920 -y 590
load port sseg_dp output -pg 1 -lvl 6 -x 1920 -y 620
load port sysclk_125mhz input -pg 1 -lvl 0 -x 0 -y 270
load portBus btn input [3:0] -attr @name btn[3:0] -pg 1 -lvl 0 -x 0 -y 300
load portBus hdmi_d_n output [2:0] -attr @name hdmi_d_n[2:0] -pg 1 -lvl 6 -x 1920 -y 180
load portBus hdmi_d_p output [2:0] -attr @name hdmi_d_p[2:0] -pg 1 -lvl 6 -x 1920 -y 150
load portBus led output [7:0] -attr @name led[7:0] -pg 1 -lvl 6 -x 1920 -y 240
load portBus sseg_an output [3:0] -attr @name sseg_an[3:0] -pg 1 -lvl 6 -x 1920 -y 380
load portBus sw input [7:0] -attr @name sw[7:0] -pg 1 -lvl 0 -x 0 -y 460
load inst NEXT_COUNT0_i RTL_ADD14 work -attr @cell(#000000) RTL_ADD -pinBusAttr I0 @name I0[16:0] -pinBusAttr O @name O[16:0] -pg 1 -lvl 1 -x 100 -y 190
load inst NEXT_COUNT_i RTL_MUX753 work -attr @cell(#000000) RTL_MUX -pinBusAttr I0 @name I0[16:0] -pinBusAttr I0 @attr S=17'b11000011010100000 -pinBusAttr I1 @name I1[16:0] -pinBusAttr I1 @attr S=default -pinBusAttr O @name O[16:0] -pinBusAttr S @name S[16:0] -pg 1 -lvl 2 -x 470 -y 180
load inst divider clk_div work:clk_div:NOFILE -autohide -attr @cell(#000000) clk_div -pg 1 -lvl 3 -x 700 -y 390
load inst driver segment_driver work:segment_driver:NOFILE -autohide -attr @cell(#000000) segment_driver -pinBusAttr decimals @name decimals[3:0] -pinBusAttr digit0 @name digit0[3:0] -pinBusAttr digit1 @name digit1[3:0] -pinBusAttr digit1 @attr V=B\"0111\" -pinBusAttr digit2 @name digit2[3:0] -pinBusAttr digit3 @name digit3[3:0] -pinBusAttr digit_anodes @name digit_anodes[3:0] -pinBusAttr segment_cathodes @name segment_cathodes[7:0] -pg 1 -lvl 5 -x 1660 -y 330
load inst dut game work:game:NOFILE -autohide -attr @cell(#000000) game -pinBusAttr grid_evolve @name grid_evolve[63:0] -pinBusAttr seed @name seed[63:0] -pinBusAttr seed @attr V=X\"0412642400343C28\" -pg 1 -lvl 4 -x 1240 -y 190
load inst smol_clk_i RTL_ROM17 work -attr @cell(#000000) RTL_ROM -pinBusAttr A @name A[16:0] -pg 1 -lvl 4 -x 1240 -y 410
load inst test hdmi_top work:hdmi_top:NOFILE -autohide -attr @cell(#000000) hdmi_top -pinBusAttr HDMI_TX @name HDMI_TX[2:0] -pinBusAttr HDMI_TX_N @name HDMI_TX_N[2:0] -pinBusAttr n2 @name n2[63:0] -pg 1 -lvl 5 -x 1660 -y 70
load inst CURRENT_COUNT_reg[16:0] RTL_REG_SYNC__BREG_1 work[16:0]swws -attr @cell(#000000) RTL_REG_SYNC -pg 1 -lvl 3 -x 700 -y 280
load net <const0> -ground -pin NEXT_COUNT_i I0[16] -pin NEXT_COUNT_i I0[15] -pin NEXT_COUNT_i I0[14] -pin NEXT_COUNT_i I0[13] -pin NEXT_COUNT_i I0[12] -pin NEXT_COUNT_i I0[11] -pin NEXT_COUNT_i I0[10] -pin NEXT_COUNT_i I0[9] -pin NEXT_COUNT_i I0[8] -pin NEXT_COUNT_i I0[7] -pin NEXT_COUNT_i I0[6] -pin NEXT_COUNT_i I0[5] -pin NEXT_COUNT_i I0[4] -pin NEXT_COUNT_i I0[3] -pin NEXT_COUNT_i I0[2] -pin NEXT_COUNT_i I0[1] -pin NEXT_COUNT_i I0[0] -pin driver decimals[3] -pin driver digit1[3] -pin dut seed[63] -pin dut seed[62] -pin dut seed[61] -pin dut seed[60] -pin dut seed[59] -pin dut seed[57] -pin dut seed[56] -pin dut seed[55] -pin dut seed[54] -pin dut seed[53] -pin dut seed[51] -pin dut seed[50] -pin dut seed[48] -pin dut seed[47] -pin dut seed[44] -pin dut seed[43] -pin dut seed[41] -pin dut seed[40] -pin dut seed[39] -pin dut seed[38] -pin dut seed[36] -pin dut seed[35] -pin dut seed[33] -pin dut seed[32] -pin dut seed[31] -pin dut seed[30] -pin dut seed[29] -pin dut seed[28] -pin dut seed[27] -pin dut seed[26] -pin dut seed[25] -pin dut seed[24] -pin dut seed[23] -pin dut seed[22] -pin dut seed[19] -pin dut seed[17] -pin dut seed[16] -pin dut seed[15] -pin dut seed[14] -pin dut seed[9] -pin dut seed[8] -pin dut seed[7] -pin dut seed[6] -pin dut seed[4] -pin dut seed[2] -pin dut seed[1] -pin dut seed[0]
load net <const1> -power -pin NEXT_COUNT0_i I1 -pin driver digit1[2] -pin driver digit1[1] -pin driver digit1[0] -pin driver digit3[3] -pin driver digit3[2] -pin driver digit3[1] -pin driver digit3[0] -pin dut seed[58] -pin dut seed[52] -pin dut seed[49] -pin dut seed[46] -pin dut seed[45] -pin dut seed[42] -pin dut seed[37] -pin dut seed[34] -pin dut seed[21] -pin dut seed[20] -pin dut seed[18] -pin dut seed[13] -pin dut seed[12] -pin dut seed[11] -pin dut seed[10] -pin dut seed[5] -pin dut seed[3]
load net CURRENT_COUNT[0] -attr @rip(#000000) 0 -pin CURRENT_COUNT_reg[16:0] Q[0] -pin NEXT_COUNT0_i I0[0] -pin NEXT_COUNT_i S[0] -pin smol_clk_i A[0]
load net CURRENT_COUNT[10] -attr @rip(#000000) 10 -pin CURRENT_COUNT_reg[16:0] Q[10] -pin NEXT_COUNT0_i I0[10] -pin NEXT_COUNT_i S[10] -pin smol_clk_i A[10]
load net CURRENT_COUNT[11] -attr @rip(#000000) 11 -pin CURRENT_COUNT_reg[16:0] Q[11] -pin NEXT_COUNT0_i I0[11] -pin NEXT_COUNT_i S[11] -pin smol_clk_i A[11]
load net CURRENT_COUNT[12] -attr @rip(#000000) 12 -pin CURRENT_COUNT_reg[16:0] Q[12] -pin NEXT_COUNT0_i I0[12] -pin NEXT_COUNT_i S[12] -pin smol_clk_i A[12]
load net CURRENT_COUNT[13] -attr @rip(#000000) 13 -pin CURRENT_COUNT_reg[16:0] Q[13] -pin NEXT_COUNT0_i I0[13] -pin NEXT_COUNT_i S[13] -pin smol_clk_i A[13]
load net CURRENT_COUNT[14] -attr @rip(#000000) 14 -pin CURRENT_COUNT_reg[16:0] Q[14] -pin NEXT_COUNT0_i I0[14] -pin NEXT_COUNT_i S[14] -pin smol_clk_i A[14]
load net CURRENT_COUNT[15] -attr @rip(#000000) 15 -pin CURRENT_COUNT_reg[16:0] Q[15] -pin NEXT_COUNT0_i I0[15] -pin NEXT_COUNT_i S[15] -pin smol_clk_i A[15]
load net CURRENT_COUNT[16] -attr @rip(#000000) 16 -pin CURRENT_COUNT_reg[16:0] Q[16] -pin NEXT_COUNT0_i I0[16] -pin NEXT_COUNT_i S[16] -pin smol_clk_i A[16]
load net CURRENT_COUNT[1] -attr @rip(#000000) 1 -pin CURRENT_COUNT_reg[16:0] Q[1] -pin NEXT_COUNT0_i I0[1] -pin NEXT_COUNT_i S[1] -pin smol_clk_i A[1]
load net CURRENT_COUNT[2] -attr @rip(#000000) 2 -pin CURRENT_COUNT_reg[16:0] Q[2] -pin NEXT_COUNT0_i I0[2] -pin NEXT_COUNT_i S[2] -pin smol_clk_i A[2]
load net CURRENT_COUNT[3] -attr @rip(#000000) 3 -pin CURRENT_COUNT_reg[16:0] Q[3] -pin NEXT_COUNT0_i I0[3] -pin NEXT_COUNT_i S[3] -pin smol_clk_i A[3]
load net CURRENT_COUNT[4] -attr @rip(#000000) 4 -pin CURRENT_COUNT_reg[16:0] Q[4] -pin NEXT_COUNT0_i I0[4] -pin NEXT_COUNT_i S[4] -pin smol_clk_i A[4]
load net CURRENT_COUNT[5] -attr @rip(#000000) 5 -pin CURRENT_COUNT_reg[16:0] Q[5] -pin NEXT_COUNT0_i I0[5] -pin NEXT_COUNT_i S[5] -pin smol_clk_i A[5]
load net CURRENT_COUNT[6] -attr @rip(#000000) 6 -pin CURRENT_COUNT_reg[16:0] Q[6] -pin NEXT_COUNT0_i I0[6] -pin NEXT_COUNT_i S[6] -pin smol_clk_i A[6]
load net CURRENT_COUNT[7] -attr @rip(#000000) 7 -pin CURRENT_COUNT_reg[16:0] Q[7] -pin NEXT_COUNT0_i I0[7] -pin NEXT_COUNT_i S[7] -pin smol_clk_i A[7]
load net CURRENT_COUNT[8] -attr @rip(#000000) 8 -pin CURRENT_COUNT_reg[16:0] Q[8] -pin NEXT_COUNT0_i I0[8] -pin NEXT_COUNT_i S[8] -pin smol_clk_i A[8]
load net CURRENT_COUNT[9] -attr @rip(#000000) 9 -pin CURRENT_COUNT_reg[16:0] Q[9] -pin NEXT_COUNT0_i I0[9] -pin NEXT_COUNT_i S[9] -pin smol_clk_i A[9]
load net NEXT_COUNT0[0] -attr @rip(#000000) O[0] -pin NEXT_COUNT0_i O[0] -pin NEXT_COUNT_i I1[0]
load net NEXT_COUNT0[10] -attr @rip(#000000) O[10] -pin NEXT_COUNT0_i O[10] -pin NEXT_COUNT_i I1[10]
load net NEXT_COUNT0[11] -attr @rip(#000000) O[11] -pin NEXT_COUNT0_i O[11] -pin NEXT_COUNT_i I1[11]
load net NEXT_COUNT0[12] -attr @rip(#000000) O[12] -pin NEXT_COUNT0_i O[12] -pin NEXT_COUNT_i I1[12]
load net NEXT_COUNT0[13] -attr @rip(#000000) O[13] -pin NEXT_COUNT0_i O[13] -pin NEXT_COUNT_i I1[13]
load net NEXT_COUNT0[14] -attr @rip(#000000) O[14] -pin NEXT_COUNT0_i O[14] -pin NEXT_COUNT_i I1[14]
load net NEXT_COUNT0[15] -attr @rip(#000000) O[15] -pin NEXT_COUNT0_i O[15] -pin NEXT_COUNT_i I1[15]
load net NEXT_COUNT0[16] -attr @rip(#000000) O[16] -pin NEXT_COUNT0_i O[16] -pin NEXT_COUNT_i I1[16]
load net NEXT_COUNT0[1] -attr @rip(#000000) O[1] -pin NEXT_COUNT0_i O[1] -pin NEXT_COUNT_i I1[1]
load net NEXT_COUNT0[2] -attr @rip(#000000) O[2] -pin NEXT_COUNT0_i O[2] -pin NEXT_COUNT_i I1[2]
load net NEXT_COUNT0[3] -attr @rip(#000000) O[3] -pin NEXT_COUNT0_i O[3] -pin NEXT_COUNT_i I1[3]
load net NEXT_COUNT0[4] -attr @rip(#000000) O[4] -pin NEXT_COUNT0_i O[4] -pin NEXT_COUNT_i I1[4]
load net NEXT_COUNT0[5] -attr @rip(#000000) O[5] -pin NEXT_COUNT0_i O[5] -pin NEXT_COUNT_i I1[5]
load net NEXT_COUNT0[6] -attr @rip(#000000) O[6] -pin NEXT_COUNT0_i O[6] -pin NEXT_COUNT_i I1[6]
load net NEXT_COUNT0[7] -attr @rip(#000000) O[7] -pin NEXT_COUNT0_i O[7] -pin NEXT_COUNT_i I1[7]
load net NEXT_COUNT0[8] -attr @rip(#000000) O[8] -pin NEXT_COUNT0_i O[8] -pin NEXT_COUNT_i I1[8]
load net NEXT_COUNT0[9] -attr @rip(#000000) O[9] -pin NEXT_COUNT0_i O[9] -pin NEXT_COUNT_i I1[9]
load net NEXT_COUNT[0] -attr @rip(#000000) O[0] -pin CURRENT_COUNT_reg[16:0] D[0] -pin NEXT_COUNT_i O[0]
load net NEXT_COUNT[10] -attr @rip(#000000) O[10] -pin CURRENT_COUNT_reg[16:0] D[10] -pin NEXT_COUNT_i O[10]
load net NEXT_COUNT[11] -attr @rip(#000000) O[11] -pin CURRENT_COUNT_reg[16:0] D[11] -pin NEXT_COUNT_i O[11]
load net NEXT_COUNT[12] -attr @rip(#000000) O[12] -pin CURRENT_COUNT_reg[16:0] D[12] -pin NEXT_COUNT_i O[12]
load net NEXT_COUNT[13] -attr @rip(#000000) O[13] -pin CURRENT_COUNT_reg[16:0] D[13] -pin NEXT_COUNT_i O[13]
load net NEXT_COUNT[14] -attr @rip(#000000) O[14] -pin CURRENT_COUNT_reg[16:0] D[14] -pin NEXT_COUNT_i O[14]
load net NEXT_COUNT[15] -attr @rip(#000000) O[15] -pin CURRENT_COUNT_reg[16:0] D[15] -pin NEXT_COUNT_i O[15]
load net NEXT_COUNT[16] -attr @rip(#000000) O[16] -pin CURRENT_COUNT_reg[16:0] D[16] -pin NEXT_COUNT_i O[16]
load net NEXT_COUNT[1] -attr @rip(#000000) O[1] -pin CURRENT_COUNT_reg[16:0] D[1] -pin NEXT_COUNT_i O[1]
load net NEXT_COUNT[2] -attr @rip(#000000) O[2] -pin CURRENT_COUNT_reg[16:0] D[2] -pin NEXT_COUNT_i O[2]
load net NEXT_COUNT[3] -attr @rip(#000000) O[3] -pin CURRENT_COUNT_reg[16:0] D[3] -pin NEXT_COUNT_i O[3]
load net NEXT_COUNT[4] -attr @rip(#000000) O[4] -pin CURRENT_COUNT_reg[16:0] D[4] -pin NEXT_COUNT_i O[4]
load net NEXT_COUNT[5] -attr @rip(#000000) O[5] -pin CURRENT_COUNT_reg[16:0] D[5] -pin NEXT_COUNT_i O[5]
load net NEXT_COUNT[6] -attr @rip(#000000) O[6] -pin CURRENT_COUNT_reg[16:0] D[6] -pin NEXT_COUNT_i O[6]
load net NEXT_COUNT[7] -attr @rip(#000000) O[7] -pin CURRENT_COUNT_reg[16:0] D[7] -pin NEXT_COUNT_i O[7]
load net NEXT_COUNT[8] -attr @rip(#000000) O[8] -pin CURRENT_COUNT_reg[16:0] D[8] -pin NEXT_COUNT_i O[8]
load net NEXT_COUNT[9] -attr @rip(#000000) O[9] -pin CURRENT_COUNT_reg[16:0] D[9] -pin NEXT_COUNT_i O[9]
load net btn[0] -attr @rip(#000000) btn[0] -port btn[0] -pin driver decimals[0] -pin dut lfsr_load
load net btn[1] -attr @rip(#000000) btn[1] -port btn[1] -pin divider rst -pin driver decimals[1] -pin dut reset
load net btn[2] -attr @rip(#000000) btn[2] -port btn[2] -pin driver decimals[2]
load net btn[3] -attr @rip(#000000) btn[3] -pin CURRENT_COUNT_reg[16:0] RST -port btn[3] -pin driver rst
load net clk_en -pin divider clk_en -pin dut clk
netloc clk_en 1 3 1 970 200n
load net grid_evolve[0] -attr @rip(#000000) grid_evolve[0] -pin dut grid_evolve[0] -pin test n2[0]
load net grid_evolve[10] -attr @rip(#000000) grid_evolve[10] -pin dut grid_evolve[10] -pin test n2[10]
load net grid_evolve[11] -attr @rip(#000000) grid_evolve[11] -pin dut grid_evolve[11] -pin test n2[11]
load net grid_evolve[12] -attr @rip(#000000) grid_evolve[12] -pin dut grid_evolve[12] -pin test n2[12]
load net grid_evolve[13] -attr @rip(#000000) grid_evolve[13] -pin dut grid_evolve[13] -pin test n2[13]
load net grid_evolve[14] -attr @rip(#000000) grid_evolve[14] -pin dut grid_evolve[14] -pin test n2[14]
load net grid_evolve[15] -attr @rip(#000000) grid_evolve[15] -pin dut grid_evolve[15] -pin test n2[15]
load net grid_evolve[16] -attr @rip(#000000) grid_evolve[16] -pin dut grid_evolve[16] -pin test n2[16]
load net grid_evolve[17] -attr @rip(#000000) grid_evolve[17] -pin dut grid_evolve[17] -pin test n2[17]
load net grid_evolve[18] -attr @rip(#000000) grid_evolve[18] -pin dut grid_evolve[18] -pin test n2[18]
load net grid_evolve[19] -attr @rip(#000000) grid_evolve[19] -pin dut grid_evolve[19] -pin test n2[19]
load net grid_evolve[1] -attr @rip(#000000) grid_evolve[1] -pin dut grid_evolve[1] -pin test n2[1]
load net grid_evolve[20] -attr @rip(#000000) grid_evolve[20] -pin dut grid_evolve[20] -pin test n2[20]
load net grid_evolve[21] -attr @rip(#000000) grid_evolve[21] -pin dut grid_evolve[21] -pin test n2[21]
load net grid_evolve[22] -attr @rip(#000000) grid_evolve[22] -pin dut grid_evolve[22] -pin test n2[22]
load net grid_evolve[23] -attr @rip(#000000) grid_evolve[23] -pin dut grid_evolve[23] -pin test n2[23]
load net grid_evolve[24] -attr @rip(#000000) grid_evolve[24] -pin dut grid_evolve[24] -pin test n2[24]
load net grid_evolve[25] -attr @rip(#000000) grid_evolve[25] -pin dut grid_evolve[25] -pin test n2[25]
load net grid_evolve[26] -attr @rip(#000000) grid_evolve[26] -pin dut grid_evolve[26] -pin test n2[26]
load net grid_evolve[27] -attr @rip(#000000) grid_evolve[27] -pin dut grid_evolve[27] -pin test n2[27]
load net grid_evolve[28] -attr @rip(#000000) grid_evolve[28] -pin dut grid_evolve[28] -pin test n2[28]
load net grid_evolve[29] -attr @rip(#000000) grid_evolve[29] -pin dut grid_evolve[29] -pin test n2[29]
load net grid_evolve[2] -attr @rip(#000000) grid_evolve[2] -pin dut grid_evolve[2] -pin test n2[2]
load net grid_evolve[30] -attr @rip(#000000) grid_evolve[30] -pin dut grid_evolve[30] -pin test n2[30]
load net grid_evolve[31] -attr @rip(#000000) grid_evolve[31] -pin dut grid_evolve[31] -pin test n2[31]
load net grid_evolve[32] -attr @rip(#000000) grid_evolve[32] -pin dut grid_evolve[32] -pin test n2[32]
load net grid_evolve[33] -attr @rip(#000000) grid_evolve[33] -pin dut grid_evolve[33] -pin test n2[33]
load net grid_evolve[34] -attr @rip(#000000) grid_evolve[34] -pin dut grid_evolve[34] -pin test n2[34]
load net grid_evolve[35] -attr @rip(#000000) grid_evolve[35] -pin dut grid_evolve[35] -pin test n2[35]
load net grid_evolve[36] -attr @rip(#000000) grid_evolve[36] -pin dut grid_evolve[36] -pin test n2[36]
load net grid_evolve[37] -attr @rip(#000000) grid_evolve[37] -pin dut grid_evolve[37] -pin test n2[37]
load net grid_evolve[38] -attr @rip(#000000) grid_evolve[38] -pin dut grid_evolve[38] -pin test n2[38]
load net grid_evolve[39] -attr @rip(#000000) grid_evolve[39] -pin dut grid_evolve[39] -pin test n2[39]
load net grid_evolve[3] -attr @rip(#000000) grid_evolve[3] -pin dut grid_evolve[3] -pin test n2[3]
load net grid_evolve[40] -attr @rip(#000000) grid_evolve[40] -pin dut grid_evolve[40] -pin test n2[40]
load net grid_evolve[41] -attr @rip(#000000) grid_evolve[41] -pin dut grid_evolve[41] -pin test n2[41]
load net grid_evolve[42] -attr @rip(#000000) grid_evolve[42] -pin dut grid_evolve[42] -pin test n2[42]
load net grid_evolve[43] -attr @rip(#000000) grid_evolve[43] -pin dut grid_evolve[43] -pin test n2[43]
load net grid_evolve[44] -attr @rip(#000000) grid_evolve[44] -pin dut grid_evolve[44] -pin test n2[44]
load net grid_evolve[45] -attr @rip(#000000) grid_evolve[45] -pin dut grid_evolve[45] -pin test n2[45]
load net grid_evolve[46] -attr @rip(#000000) grid_evolve[46] -pin dut grid_evolve[46] -pin test n2[46]
load net grid_evolve[47] -attr @rip(#000000) grid_evolve[47] -pin dut grid_evolve[47] -pin test n2[47]
load net grid_evolve[48] -attr @rip(#000000) grid_evolve[48] -pin dut grid_evolve[48] -pin test n2[48]
load net grid_evolve[49] -attr @rip(#000000) grid_evolve[49] -pin dut grid_evolve[49] -pin test n2[49]
load net grid_evolve[4] -attr @rip(#000000) grid_evolve[4] -pin dut grid_evolve[4] -pin test n2[4]
load net grid_evolve[50] -attr @rip(#000000) grid_evolve[50] -pin dut grid_evolve[50] -pin test n2[50]
load net grid_evolve[51] -attr @rip(#000000) grid_evolve[51] -pin dut grid_evolve[51] -pin test n2[51]
load net grid_evolve[52] -attr @rip(#000000) grid_evolve[52] -pin dut grid_evolve[52] -pin test n2[52]
load net grid_evolve[53] -attr @rip(#000000) grid_evolve[53] -pin dut grid_evolve[53] -pin test n2[53]
load net grid_evolve[54] -attr @rip(#000000) grid_evolve[54] -pin dut grid_evolve[54] -pin test n2[54]
load net grid_evolve[55] -attr @rip(#000000) grid_evolve[55] -pin dut grid_evolve[55] -pin test n2[55]
load net grid_evolve[56] -attr @rip(#000000) grid_evolve[56] -pin dut grid_evolve[56] -pin test n2[56]
load net grid_evolve[57] -attr @rip(#000000) grid_evolve[57] -pin dut grid_evolve[57] -pin test n2[57]
load net grid_evolve[58] -attr @rip(#000000) grid_evolve[58] -pin dut grid_evolve[58] -pin test n2[58]
load net grid_evolve[59] -attr @rip(#000000) grid_evolve[59] -pin dut grid_evolve[59] -pin test n2[59]
load net grid_evolve[5] -attr @rip(#000000) grid_evolve[5] -pin dut grid_evolve[5] -pin test n2[5]
load net grid_evolve[60] -attr @rip(#000000) grid_evolve[60] -pin dut grid_evolve[60] -pin test n2[60]
load net grid_evolve[61] -attr @rip(#000000) grid_evolve[61] -pin dut grid_evolve[61] -pin test n2[61]
load net grid_evolve[62] -attr @rip(#000000) grid_evolve[62] -pin dut grid_evolve[62] -pin test n2[62]
load net grid_evolve[63] -attr @rip(#000000) grid_evolve[63] -pin dut grid_evolve[63] -pin test n2[63]
load net grid_evolve[6] -attr @rip(#000000) grid_evolve[6] -pin dut grid_evolve[6] -pin test n2[6]
load net grid_evolve[7] -attr @rip(#000000) grid_evolve[7] -pin dut grid_evolve[7] -pin test n2[7]
load net grid_evolve[8] -attr @rip(#000000) grid_evolve[8] -pin dut grid_evolve[8] -pin test n2[8]
load net grid_evolve[9] -attr @rip(#000000) grid_evolve[9] -pin dut grid_evolve[9] -pin test n2[9]
load net hdmi_cec -port hdmi_cec -pin test HDMI_CEC
netloc hdmi_cec 1 4 2 1490 20 NJ
load net hdmi_clk_n -port hdmi_clk_n -pin test HDMI_CLK_N
netloc hdmi_clk_n 1 5 1 1900J 90n
load net hdmi_clk_p -port hdmi_clk_p -pin test HDMI_CLK
netloc hdmi_clk_p 1 5 1 1880J 60n
load net hdmi_d_n[0] -attr @rip(#000000) HDMI_TX_N[0] -port hdmi_d_n[0] -pin test HDMI_TX_N[0]
load net hdmi_d_n[1] -attr @rip(#000000) HDMI_TX_N[1] -port hdmi_d_n[1] -pin test HDMI_TX_N[1]
load net hdmi_d_n[2] -attr @rip(#000000) HDMI_TX_N[2] -port hdmi_d_n[2] -pin test HDMI_TX_N[2]
load net hdmi_d_p[0] -attr @rip(#000000) HDMI_TX[0] -port hdmi_d_p[0] -pin test HDMI_TX[0]
load net hdmi_d_p[1] -attr @rip(#000000) HDMI_TX[1] -port hdmi_d_p[1] -pin test HDMI_TX[1]
load net hdmi_d_p[2] -attr @rip(#000000) HDMI_TX[2] -port hdmi_d_p[2] -pin test HDMI_TX[2]
load net hdmi_hpd -port hdmi_hpd -pin test HDMI_HPD
netloc hdmi_hpd 1 0 5 NJ 120 NJ 120 NJ 120 NJ 120 NJ
load net hdmi_scl -port hdmi_scl -pin test HDMI_SCL
netloc hdmi_scl 1 4 2 1490 210 NJ
load net hdmi_sda -port hdmi_sda -pin test HDMI_SDA
netloc hdmi_sda 1 5 1 NJ 120
load net smol_clk -pin driver clk -pin smol_clk_i O
netloc smol_clk 1 4 1 1470 340n
load net sseg_an[0] -attr @rip(#000000) digit_anodes[0] -pin driver digit_anodes[0] -port sseg_an[0]
load net sseg_an[1] -attr @rip(#000000) digit_anodes[1] -pin driver digit_anodes[1] -port sseg_an[1]
load net sseg_an[2] -attr @rip(#000000) digit_anodes[2] -pin driver digit_anodes[2] -port sseg_an[2]
load net sseg_an[3] -attr @rip(#000000) digit_anodes[3] -pin driver digit_anodes[3] -port sseg_an[3]
load net sseg_ca -attr @rip(#000000) segment_cathodes[0] -pin driver segment_cathodes[0] -port sseg_ca
load net sseg_cb -attr @rip(#000000) segment_cathodes[1] -pin driver segment_cathodes[1] -port sseg_cb
load net sseg_cc -attr @rip(#000000) segment_cathodes[2] -pin driver segment_cathodes[2] -port sseg_cc
load net sseg_cd -attr @rip(#000000) segment_cathodes[3] -pin driver segment_cathodes[3] -port sseg_cd
load net sseg_ce -attr @rip(#000000) segment_cathodes[4] -pin driver segment_cathodes[4] -port sseg_ce
load net sseg_cf -attr @rip(#000000) segment_cathodes[5] -pin driver segment_cathodes[5] -port sseg_cf
load net sseg_cg -attr @rip(#000000) segment_cathodes[6] -pin driver segment_cathodes[6] -port sseg_cg
load net sseg_dp -attr @rip(#000000) segment_cathodes[7] -pin driver segment_cathodes[7] -port sseg_dp
load net sw[0] -attr @rip(#000000) sw[0] -pin driver digit0[0] -pin dut start -port sw[0]
load net sw[1] -attr @rip(#000000) sw[1] -pin driver digit0[1] -port sw[1]
load net sw[2] -attr @rip(#000000) sw[2] -pin driver digit0[2] -port sw[2]
load net sw[3] -attr @rip(#000000) sw[3] -pin driver digit0[3] -port sw[3]
load net sw[4] -attr @rip(#000000) sw[4] -pin driver digit2[0] -port sw[4]
load net sw[5] -attr @rip(#000000) sw[5] -pin driver digit2[1] -port sw[5]
load net sw[6] -attr @rip(#000000) sw[6] -pin driver digit2[2] -port sw[6]
load net sw[7] -attr @rip(#000000) sw[7] -pin driver digit2[3] -port sw[7]
load net sysclk_125mhz -pin CURRENT_COUNT_reg[16:0] C -pin divider clk -port sysclk_125mhz -pin test CLK_125MHZ
netloc sysclk_125mhz 1 0 5 NJ 270 NJ 270 650 80 NJ 80 NJ
load netBundle @btn 4 btn[3] btn[2] btn[1] btn[0] -autobundled
netbloc @btn 1 0 5 NJ 300 NJ 300 610 220N 990 360 1450
load netBundle @sw 8 sw[7] sw[6] sw[5] sw[4] sw[3] sw[2] sw[1] sw[0] -autobundled
netbloc @sw 1 0 5 NJ 460 NJ 460 NJ 460 1010 340 1430
load netBundle @hdmi_d_n 3 hdmi_d_n[2] hdmi_d_n[1] hdmi_d_n[0] -autobundled
netbloc @hdmi_d_n 1 5 1 1880J 160n
load netBundle @hdmi_d_p 3 hdmi_d_p[2] hdmi_d_p[1] hdmi_d_p[0] -autobundled
netbloc @hdmi_d_p 1 5 1 1900J 140n
load netBundle @sseg_an 4 sseg_an[3] sseg_an[2] sseg_an[1] sseg_an[0] -autobundled
netbloc @sseg_an 1 5 1 NJ 380
load netBundle @NEXT_COUNT0 17 NEXT_COUNT0[16] NEXT_COUNT0[15] NEXT_COUNT0[14] NEXT_COUNT0[13] NEXT_COUNT0[12] NEXT_COUNT0[11] NEXT_COUNT0[10] NEXT_COUNT0[9] NEXT_COUNT0[8] NEXT_COUNT0[7] NEXT_COUNT0[6] NEXT_COUNT0[5] NEXT_COUNT0[4] NEXT_COUNT0[3] NEXT_COUNT0[2] NEXT_COUNT0[1] NEXT_COUNT0[0] -autobundled
netbloc @NEXT_COUNT0 1 1 1 NJ 190
load netBundle @NEXT_COUNT 17 NEXT_COUNT[16] NEXT_COUNT[15] NEXT_COUNT[14] NEXT_COUNT[13] NEXT_COUNT[12] NEXT_COUNT[11] NEXT_COUNT[10] NEXT_COUNT[9] NEXT_COUNT[8] NEXT_COUNT[7] NEXT_COUNT[6] NEXT_COUNT[5] NEXT_COUNT[4] NEXT_COUNT[3] NEXT_COUNT[2] NEXT_COUNT[1] NEXT_COUNT[0] -autobundled
netbloc @NEXT_COUNT 1 2 1 630 180n
load netBundle @sseg_dp,sseg_cg,sseg_cf 8 sseg_dp sseg_cg sseg_cf sseg_ce sseg_cd sseg_cc sseg_cb sseg_ca -autobundled
netbloc @sseg_dp,sseg_cg,sseg_cf 1 5 1 1900 400n
load netBundle @grid_evolve 64 grid_evolve[63] grid_evolve[62] grid_evolve[61] grid_evolve[60] grid_evolve[59] grid_evolve[58] grid_evolve[57] grid_evolve[56] grid_evolve[55] grid_evolve[54] grid_evolve[53] grid_evolve[52] grid_evolve[51] grid_evolve[50] grid_evolve[49] grid_evolve[48] grid_evolve[47] grid_evolve[46] grid_evolve[45] grid_evolve[44] grid_evolve[43] grid_evolve[42] grid_evolve[41] grid_evolve[40] grid_evolve[39] grid_evolve[38] grid_evolve[37] grid_evolve[36] grid_evolve[35] grid_evolve[34] grid_evolve[33] grid_evolve[32] grid_evolve[31] grid_evolve[30] grid_evolve[29] grid_evolve[28] grid_evolve[27] grid_evolve[26] grid_evolve[25] grid_evolve[24] grid_evolve[23] grid_evolve[22] grid_evolve[21] grid_evolve[20] grid_evolve[19] grid_evolve[18] grid_evolve[17] grid_evolve[16] grid_evolve[15] grid_evolve[14] grid_evolve[13] grid_evolve[12] grid_evolve[11] grid_evolve[10] grid_evolve[9] grid_evolve[8] grid_evolve[7] grid_evolve[6] grid_evolve[5] grid_evolve[4] grid_evolve[3] grid_evolve[2] grid_evolve[1] grid_evolve[0] -autobundled
netbloc @grid_evolve 1 4 1 1430 160n
load netBundle @CURRENT_COUNT 17 CURRENT_COUNT[16] CURRENT_COUNT[15] CURRENT_COUNT[14] CURRENT_COUNT[13] CURRENT_COUNT[12] CURRENT_COUNT[11] CURRENT_COUNT[10] CURRENT_COUNT[9] CURRENT_COUNT[8] CURRENT_COUNT[7] CURRENT_COUNT[6] CURRENT_COUNT[5] CURRENT_COUNT[4] CURRENT_COUNT[3] CURRENT_COUNT[2] CURRENT_COUNT[1] CURRENT_COUNT[0] -autobundled
netbloc @CURRENT_COUNT 1 0 4 20 240 NJ 240N 590J 200 950
levelinfo -pg 1 0 100 470 700 1240 1660 1920
pagesize -pg 1 -db -bbox -sgen -150 0 2060 640
show
fullfit
#
# initialize ictrl to current module top_demo work:top_demo:NOFILE
ictrl init topinfo |
