debImport "testfixture.v" "RFILE.v"
debLoadSimResult \
           /home/DICS/M10912039/CIC/CIC_2018_grad/finial/B_ICC2018_grad_cell-based_final/RFILE.fsdb
wvCreateWindow
verdiDockWidgetMaximize -dock windowDock_nWave_2
wvRestoreSignal -win $_nWave2 \
           "/home/DICS/M10912039/CIC/CIC_2018_grad/finial/B_ICC2018_grad_cell-based_final/signal.rc" \
           -overWriteAutoAlias on
wvScrollUp -win $_nWave2 17
wvScrollUp -win $_nWave2 28
schCreateWindow -hierFSM -win $_nSchema1 -mode all
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 25
wvScrollUp -win $_nWave2 3
wvScrollUp -win $_nWave2 5
wvScrollDown -win $_nWave2 30
wvGetSignalOpen -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 7)}
wvSetPosition -win $_nWave2 {("G1" 7)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/test/u_RFILE/clk} \
{/test/u_RFILE/rst} \
{/test/u_RFILE/cs_p\[3:0\]} \
{/test/u_RFILE/ns_p\[3:0\]} \
{/test/u_RFILE/d_a\[31:0\]} \
{/test/u_RFILE/d_b\[31:0\]} \
{/test/u_RFILE/d_c\[31:0\]} \
{/test/u_RFILE/done} \
{/test/u_RFILE/cs\[1:0\]} \
{/test/u_RFILE/ns\[1:0\]} \
{/test/u_RFILE/rssiA\[19:0\]} \
{/test/u_RFILE/rssiB\[19:0\]} \
{/test/u_RFILE/rssiC\[19:0\]} \
{/test/u_RFILE/A_x\[7:0\]} \
{/test/u_RFILE/A_y\[7:0\]} \
{/test/u_RFILE/B_x\[7:0\]} \
{/test/u_RFILE/B_y\[7:0\]} \
{/test/u_RFILE/C_x\[7:0\]} \
{/test/u_RFILE/C_y\[7:0\]} \
{/test/u_RFILE/C_0\[16:0\]} \
{/test/u_RFILE/C_1\[16:0\]} \
{/test/u_RFILE/X_0\[16:0\]} \
{/test/u_RFILE/X_1\[16:0\]} \
{/test/u_RFILE/Y_0\[16:0\]} \
{/test/u_RFILE/Y_1\[16:0\]} \
{/test/u_RFILE/delt\[32:0\]} \
{/test/u_RFILE/delt_x\[32:0\]} \
{/test/u_RFILE/delt_y\[32:0\]} \
{/test/u_RFILE/xt\[7:0\]} \
{/test/u_RFILE/yt\[7:0\]} \
{/test/u_RFILE/clk} \
{/test/u_RFILE/rst} \
{/test/u_RFILE/cs\[1:0\]} \
{/test/u_RFILE/ns\[1:0\]} \
{/test/u_RFILE/rssiA\[19:0\]} \
{/test/u_RFILE/rssiB\[19:0\]} \
{/test/u_RFILE/rssiC\[19:0\]} \
{/test/u_RFILE/A_x\[7:0\]} \
{/test/u_RFILE/A_y\[7:0\]} \
{/test/u_RFILE/B_x\[7:0\]} \
{/test/u_RFILE/B_y\[7:0\]} \
{/test/u_RFILE/C_x\[7:0\]} \
{/test/u_RFILE/C_y\[7:0\]} \
{/test/u_RFILE/C_0\[16:0\]} \
{/test/u_RFILE/C_1\[16:0\]} \
{/test/u_RFILE/X_0\[16:0\]} \
{/test/u_RFILE/X_1\[16:0\]} \
{/test/u_RFILE/Y_0\[16:0\]} \
{/test/u_RFILE/Y_1\[16:0\]} \
{/test/u_RFILE/delt\[32:0\]} \
{/test/u_RFILE/delt_x\[32:0\]} \
{/test/u_RFILE/delt_y\[32:0\]} \
{/test/u_RFILE/xt\[7:0\]} \
{/test/u_RFILE/yt\[7:0\]} \
{/test/u_RFILE/clk} \
{/test/u_RFILE/rst} \
{/test/u_RFILE/cs\[1:0\]} \
{/test/u_RFILE/ns\[1:0\]} \
{/test/u_RFILE/rssiA\[19:0\]} \
{/test/u_RFILE/rssiB\[19:0\]} \
{/test/u_RFILE/rssiC\[19:0\]} \
{/test/u_RFILE/A_x\[7:0\]} \
{/test/u_RFILE/A_y\[7:0\]} \
{/test/u_RFILE/B_x\[7:0\]} \
{/test/u_RFILE/B_y\[7:0\]} \
{/test/u_RFILE/C_x\[7:0\]} \
{/test/u_RFILE/C_y\[7:0\]} \
{/test/u_RFILE/C_0\[16:0\]} \
{/test/u_RFILE/C_1\[16:0\]} \
{/test/u_RFILE/X_0\[16:0\]} \
{/test/u_RFILE/X_1\[16:0\]} \
{/test/u_RFILE/Y_0\[16:0\]} \
{/test/u_RFILE/Y_1\[16:0\]} \
{/test/u_RFILE/delt\[32:0\]} \
{/test/u_RFILE/delt_x\[32:0\]} \
{/test/u_RFILE/delt_y\[32:0\]} \
{/test/u_RFILE/xt\[7:0\]} \
{/test/u_RFILE/yt\[7:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
}
wvSelectSignal -win $_nWave2 {( "G1" 5 6 7 )} 
wvSetPosition -win $_nWave2 {("G1" 7)}
wvSelectSignal -win $_nWave2 {( "G1" 5 6 7 )} 
wvSetRadix -win $_nWave2 -format UDec
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvGetSignalOpen -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 10)}
wvSetPosition -win $_nWave2 {("G1" 10)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/test/u_RFILE/clk} \
{/test/u_RFILE/rst} \
{/test/u_RFILE/cs_p\[3:0\]} \
{/test/u_RFILE/ns_p\[3:0\]} \
{/test/u_RFILE/d_a\[31:0\]} \
{/test/u_RFILE/d_b\[31:0\]} \
{/test/u_RFILE/d_c\[31:0\]} \
{/test/u_RFILE/d_ar\[7:0\]} \
{/test/u_RFILE/d_br\[7:0\]} \
{/test/u_RFILE/d_cr\[7:0\]} \
{/test/u_RFILE/done} \
{/test/u_RFILE/cs\[1:0\]} \
{/test/u_RFILE/ns\[1:0\]} \
{/test/u_RFILE/rssiA\[19:0\]} \
{/test/u_RFILE/rssiB\[19:0\]} \
{/test/u_RFILE/rssiC\[19:0\]} \
{/test/u_RFILE/A_x\[7:0\]} \
{/test/u_RFILE/A_y\[7:0\]} \
{/test/u_RFILE/B_x\[7:0\]} \
{/test/u_RFILE/B_y\[7:0\]} \
{/test/u_RFILE/C_x\[7:0\]} \
{/test/u_RFILE/C_y\[7:0\]} \
{/test/u_RFILE/C_0\[16:0\]} \
{/test/u_RFILE/C_1\[16:0\]} \
{/test/u_RFILE/X_0\[16:0\]} \
{/test/u_RFILE/X_1\[16:0\]} \
{/test/u_RFILE/Y_0\[16:0\]} \
{/test/u_RFILE/Y_1\[16:0\]} \
{/test/u_RFILE/delt\[32:0\]} \
{/test/u_RFILE/delt_x\[32:0\]} \
{/test/u_RFILE/delt_y\[32:0\]} \
{/test/u_RFILE/xt\[7:0\]} \
{/test/u_RFILE/yt\[7:0\]} \
{/test/u_RFILE/clk} \
{/test/u_RFILE/rst} \
{/test/u_RFILE/cs\[1:0\]} \
{/test/u_RFILE/ns\[1:0\]} \
{/test/u_RFILE/rssiA\[19:0\]} \
{/test/u_RFILE/rssiB\[19:0\]} \
{/test/u_RFILE/rssiC\[19:0\]} \
{/test/u_RFILE/A_x\[7:0\]} \
{/test/u_RFILE/A_y\[7:0\]} \
{/test/u_RFILE/B_x\[7:0\]} \
{/test/u_RFILE/B_y\[7:0\]} \
{/test/u_RFILE/C_x\[7:0\]} \
{/test/u_RFILE/C_y\[7:0\]} \
{/test/u_RFILE/C_0\[16:0\]} \
{/test/u_RFILE/C_1\[16:0\]} \
{/test/u_RFILE/X_0\[16:0\]} \
{/test/u_RFILE/X_1\[16:0\]} \
{/test/u_RFILE/Y_0\[16:0\]} \
{/test/u_RFILE/Y_1\[16:0\]} \
{/test/u_RFILE/delt\[32:0\]} \
{/test/u_RFILE/delt_x\[32:0\]} \
{/test/u_RFILE/delt_y\[32:0\]} \
{/test/u_RFILE/xt\[7:0\]} \
{/test/u_RFILE/yt\[7:0\]} \
{/test/u_RFILE/clk} \
{/test/u_RFILE/rst} \
{/test/u_RFILE/cs\[1:0\]} \
{/test/u_RFILE/ns\[1:0\]} \
{/test/u_RFILE/rssiA\[19:0\]} \
{/test/u_RFILE/rssiB\[19:0\]} \
{/test/u_RFILE/rssiC\[19:0\]} \
{/test/u_RFILE/A_x\[7:0\]} \
{/test/u_RFILE/A_y\[7:0\]} \
{/test/u_RFILE/B_x\[7:0\]} \
{/test/u_RFILE/B_y\[7:0\]} \
{/test/u_RFILE/C_x\[7:0\]} \
{/test/u_RFILE/C_y\[7:0\]} \
{/test/u_RFILE/C_0\[16:0\]} \
{/test/u_RFILE/C_1\[16:0\]} \
{/test/u_RFILE/X_0\[16:0\]} \
{/test/u_RFILE/X_1\[16:0\]} \
{/test/u_RFILE/Y_0\[16:0\]} \
{/test/u_RFILE/Y_1\[16:0\]} \
{/test/u_RFILE/delt\[32:0\]} \
{/test/u_RFILE/delt_x\[32:0\]} \
{/test/u_RFILE/delt_y\[32:0\]} \
{/test/u_RFILE/xt\[7:0\]} \
{/test/u_RFILE/yt\[7:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
}
wvSelectSignal -win $_nWave2 {( "G1" 8 9 10 )} 
wvSetPosition -win $_nWave2 {("G1" 10)}
wvGetSignalClose -win $_nWave2
wvScrollDown -win $_nWave2 9
wvSelectSignal -win $_nWave2 {( "G1" 32 )} 
wvSetSearchMode -win $_nWave2 -value 
wvSetSearchMode -win $_nWave2 -value 20
wvSearchNext -win $_nWave2
wvSetCursor -win $_nWave2 29585.429858 -snap {("G1" 17)}
wvSearchNext -win $_nWave2
wvSetCursor -win $_nWave2 3108.972858
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSetSearchMode -win $_nWave2 -value 32
wvSearchNext -win $_nWave2
wvScrollUp -win $_nWave2 8
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvSetCursor -win $_nWave2 930982.662437 -snap {("G1" 4)}
wvSetCursor -win $_nWave2 930902.717420 -snap {("G1" 4)}
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 9
wvSelectSignal -win $_nWave2 {( "G1" 50 )} 
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
