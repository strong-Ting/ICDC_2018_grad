debImport "testfixture.v" "RFILE.v"
debLoadSimResult \
           /home/DICS/M10912039/CIC/CIC_2018_grad/finial/B_ICC2018_grad_cell-based_final/RFILE.fsdb
wvCreateWindow
debExit
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvSetCursor -win $_nWave2 187070.646570 -snap {("G1" 7)}
wvSetCursor -win $_nWave2 384158.869346 -snap {("G1" 1)}
wvSetCursor -win $_nWave2 396301.385959 -snap {("G1" 1)}
wvSetCursor -win $_nWave2 405408.273419 -snap {("G1" 1)}
wvSetCursor -win $_nWave2 417171.336388 -snap {("G1" 8)}
wvSetCursor -win $_nWave2 385676.683923 -snap {("G1" 6)}
wvSetCursor -win $_nWave2 188967.914791 -snap {("G1" 7)}
wvSetCursor -win $_nWave2 212494.040729 -snap {("G1" 8)}
wvSetCursor -win $_nWave2 223118.742765 -snap {("G1" 8)}
wvSetCursor -win $_nWave2 215529.669882 -snap {("G1" 8)}
wvSetCursor -win $_nWave2 224257.103698 -snap {("G1" 8)}
wvSetCursor -win $_nWave2 213632.401661 -snap {("G1" 8)}
wvSetCursor -win $_nWave2 785005.036014 -snap {("G1" 1)}
wvSetCursor -win $_nWave2 794111.923474 -snap {("G1" 1)}
wvSetCursor -win $_nWave2 805495.532799 -snap {("G1" 1)}
wvSetCursor -win $_nWave2 815361.327547 -snap {("G1" 1)}
debReload
wvGetSignalOpen -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 10)}
wvSetPosition -win $_nWave2 {("G1" 10)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/test/u_RFILE/clk} \
{/test/u_RFILE/rst} \
{/test/u_RFILE/rssiA\[19:0\]} \
{/test/u_RFILE/rssiB\[19:0\]} \
{/test/u_RFILE/rssiC\[19:0\]} \
{/test/u_RFILE/xt\[7:0\]} \
{/test/u_RFILE/yt\[7:0\]} \
{/test/u_RFILE/out_valid} \
{/test/u_RFILE/ns_p\[3:0\]} \
{/test/u_RFILE/cs_p\[3:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
}
wvSelectSignal -win $_nWave2 {( "G1" 10 )} 
wvSetPosition -win $_nWave2 {("G1" 10)}
wvSetPosition -win $_nWave2 {("G1" 10)}
wvSetPosition -win $_nWave2 {("G1" 10)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/test/u_RFILE/clk} \
{/test/u_RFILE/rst} \
{/test/u_RFILE/rssiA\[19:0\]} \
{/test/u_RFILE/rssiB\[19:0\]} \
{/test/u_RFILE/rssiC\[19:0\]} \
{/test/u_RFILE/xt\[7:0\]} \
{/test/u_RFILE/yt\[7:0\]} \
{/test/u_RFILE/out_valid} \
{/test/u_RFILE/ns_p\[3:0\]} \
{/test/u_RFILE/cs_p\[3:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
}
wvSelectSignal -win $_nWave2 {( "G1" 10 )} 
wvSetPosition -win $_nWave2 {("G1" 10)}
wvGetSignalClose -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
schCreateWindow -hierFSM -win $_nSchema1 -mode all
wvZoomIn -win $_nWave2
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvSetCursor -win $_nWave2 177649.524061 -snap {("G1" 10)}
wvSelectSignal -win $_nWave2 {( "G1" 10 )} 
wvSetPosition -win $_nWave2 {("G1" 9)}
wvSetPosition -win $_nWave2 {("G1" 8)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 8)}
wvSetPosition -win $_nWave2 {("G1" 9)}
wvZoomOut -win $_nWave2
wvSetCursor -win $_nWave2 218554.626900 -snap {("G1" 1)}
wvSetCursor -win $_nWave2 220380.747562 -snap {("G1" 1)}
wvSetCursor -win $_nWave2 218625.774458 -snap {("G1" 1)}
wvSetCursor -win $_nWave2 219503.261010 -snap {("G1" 1)}
wvSetCursor -win $_nWave2 220475.610973 -snap {("G1" 1)}
wvSetCursor -win $_nWave2 221566.540200 -snap {("G1" 1)}
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvSetCursor -win $_nWave2 213206.702102 -snap {("G1" 1)}
wvSetCursor -win $_nWave2 204099.814643 -snap {("G1" 1)}
wvSetCursor -win $_nWave2 185886.039724 -snap {("G1" 1)}
wvSetCursor -win $_nWave2 194992.927183 -snap {("G1" 1)}
wvSetCursor -win $_nWave2 205238.175575 -snap {("G1" 1)}
wvSetCursor -win $_nWave2 214345.063035 -snap {("G1" 1)}
debReload
debReload
verdiWindowResize -win $_Verdi_1 "145" "31" "1344" "792"
verdiWindowResize -win $_Verdi_1 "0" "23" "1536" "801"
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvGetSignalOpen -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 12)}
wvSetPosition -win $_nWave2 {("G1" 12)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/test/u_RFILE/clk} \
{/test/u_RFILE/rst} \
{/test/u_RFILE/rssiA\[19:0\]} \
{/test/u_RFILE/rssiB\[19:0\]} \
{/test/u_RFILE/rssiC\[19:0\]} \
{/test/u_RFILE/xt\[7:0\]} \
{/test/u_RFILE/yt\[7:0\]} \
{/test/u_RFILE/out_valid} \
{/test/u_RFILE/ns_p\[3:0\]} \
{/test/u_RFILE/delt\[31:0\]} \
{/test/u_RFILE/delt_x\[31:0\]} \
{/test/u_RFILE/delt_y\[31:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
}
wvSelectSignal -win $_nWave2 {( "G1" 10 11 12 )} 
wvSetPosition -win $_nWave2 {("G1" 12)}
wvSetPosition -win $_nWave2 {("G1" 12)}
wvSetPosition -win $_nWave2 {("G1" 12)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/test/u_RFILE/clk} \
{/test/u_RFILE/rst} \
{/test/u_RFILE/rssiA\[19:0\]} \
{/test/u_RFILE/rssiB\[19:0\]} \
{/test/u_RFILE/rssiC\[19:0\]} \
{/test/u_RFILE/xt\[7:0\]} \
{/test/u_RFILE/yt\[7:0\]} \
{/test/u_RFILE/out_valid} \
{/test/u_RFILE/ns_p\[3:0\]} \
{/test/u_RFILE/delt\[31:0\]} \
{/test/u_RFILE/delt_x\[31:0\]} \
{/test/u_RFILE/delt_y\[31:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
}
wvSelectSignal -win $_nWave2 {( "G1" 10 11 12 )} 
wvSetPosition -win $_nWave2 {("G1" 12)}
wvGetSignalClose -win $_nWave2
wvSetCursor -win $_nWave2 237531.901649 -snap {("G1" 11)}
wvSetCursor -win $_nWave2 238525.101370 -snap {("G1" 1)}
wvSetCursor -win $_nWave2 239400.063029 -snap {("G1" 1)}
wvSetCursor -win $_nWave2 240440.557975 -snap {("G1" 1)}
wvGetSignalOpen -win $_nWave2
wvGetSignalSetScope -win $_nWave2 "/test"
wvGetSignalSetScope -win $_nWave2 "/test/u_RFILE"
wvSetPosition -win $_nWave2 {("G1" 13)}
wvSetPosition -win $_nWave2 {("G1" 13)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/test/u_RFILE/clk} \
{/test/u_RFILE/rst} \
{/test/u_RFILE/rssiA\[19:0\]} \
{/test/u_RFILE/rssiB\[19:0\]} \
{/test/u_RFILE/rssiC\[19:0\]} \
{/test/u_RFILE/xt\[7:0\]} \
{/test/u_RFILE/yt\[7:0\]} \
{/test/u_RFILE/out_valid} \
{/test/u_RFILE/ns_p\[3:0\]} \
{/test/u_RFILE/delt\[31:0\]} \
{/test/u_RFILE/delt_x\[31:0\]} \
{/test/u_RFILE/delt_y\[31:0\]} \
{/test/u_RFILE/cs_p\[3:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
}
wvSelectSignal -win $_nWave2 {( "G1" 13 )} 
wvSetPosition -win $_nWave2 {("G1" 13)}
wvSetPosition -win $_nWave2 {("G1" 13)}
wvSetPosition -win $_nWave2 {("G1" 13)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/test/u_RFILE/clk} \
{/test/u_RFILE/rst} \
{/test/u_RFILE/rssiA\[19:0\]} \
{/test/u_RFILE/rssiB\[19:0\]} \
{/test/u_RFILE/rssiC\[19:0\]} \
{/test/u_RFILE/xt\[7:0\]} \
{/test/u_RFILE/yt\[7:0\]} \
{/test/u_RFILE/out_valid} \
{/test/u_RFILE/ns_p\[3:0\]} \
{/test/u_RFILE/delt\[31:0\]} \
{/test/u_RFILE/delt_x\[31:0\]} \
{/test/u_RFILE/delt_y\[31:0\]} \
{/test/u_RFILE/cs_p\[3:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
}
wvSelectSignal -win $_nWave2 {( "G1" 13 )} 
wvSetPosition -win $_nWave2 {("G1" 13)}
wvGetSignalClose -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 12)}
wvSetPosition -win $_nWave2 {("G1" 11)}
wvSetPosition -win $_nWave2 {("G1" 10)}
wvSetPosition -win $_nWave2 {("G1" 9)}
wvSetPosition -win $_nWave2 {("G1" 8)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 8)}
wvSetPosition -win $_nWave2 {("G1" 9)}
wvZoomIn -win $_nWave2
wvSetCursor -win $_nWave2 237466.870715 -snap {("G1" 12)}
wvZoomOut -win $_nWave2
wvSetCursor -win $_nWave2 238477.806145 -snap {("G1" 1)}
wvSetCursor -win $_nWave2 239471.005867 -snap {("G1" 1)}
wvSetCursor -win $_nWave2 240511.500813 -snap {("G1" 1)}
wvSetCursor -win $_nWave2 238501.453758 -snap {("G1" 9)}
wvSetCursor -win $_nWave2 240582.443650 -snap {("G1" 7)}
wvSetCursor -win $_nWave2 239494.653479 -snap {("G1" 1)}
wvZoomAll -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvSetCursor -win $_nWave2 20516.840278 -snap {("G1" 1)}
wvSetCursor -win $_nWave2 19550.114583 -snap {("G1" 1)}
wvSetCursor -win $_nWave2 20525.533854 -snap {("G1" 1)}
wvSetCursor -win $_nWave2 19558.808160 -snap {("G1" 1)}
wvSetCursor -win $_nWave2 18508.624132 -snap {("G1" 1)}
wvSetCursor -win $_nWave2 17486.259549 -snap {("G1" 1)}
wvSetCursor -win $_nWave2 16519.533854 -snap {("G1" 1)}
wvSetCursor -win $_nWave2 17479.304688 -snap {("G1" 1)}
wvSetCursor -win $_nWave2 18501.669271 -snap {("G1" 1)}
wvSetCursor -win $_nWave2 19510.124132 -snap {("G1" 1)}
wvSetCursor -win $_nWave2 20504.669271 -snap {("G1" 1)}
srcSetOptions -win $_nTrace1 -annotate on
schSetOptions -win $_nSchema1 -annotate on
debReload
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvSetCursor -win $_nWave2 204751.111111 -snap {("G1" 7)}
wvSetCursor -win $_nWave2 195626.333333 -snap {("G1" 1)}
wvSetCursor -win $_nWave2 184498.555556 -snap {("G1" 1)}
wvSetCursor -win $_nWave2 174483.555556 -snap {("G1" 1)}
verdiWindowResize -win $_Verdi_1 "1381" "221" "1344" "777"
wvSetCursor -win $_nWave2 202797.510340 -snap {("G1" 7)}
wvSetCursor -win $_nWave2 194315.994389 -snap {("G1" 1)}
wvSetCursor -win $_nWave2 185388.082862 -snap {("G1" 1)}
wvSetCursor -win $_nWave2 175790.577970 -snap {("G1" 1)}
verdiWindowResize -win $_Verdi_1 "0" "23" "1536" "801"
wvSetCursor -win $_nWave2 205449.596163 -snap {("G1" 1)}
wvSetCursor -win $_nWave2 213906.707274 -snap {("G1" 1)}
debReload
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvGetSignalOpen -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 10)}
wvSetPosition -win $_nWave2 {("G1" 10)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/test/u_RFILE/clk} \
{/test/u_RFILE/rst} \
{/test/u_RFILE/rssiA\[19:0\]} \
{/test/u_RFILE/rssiB\[19:0\]} \
{/test/u_RFILE/rssiC\[19:0\]} \
{/test/u_RFILE/xt\[7:0\]} \
{/test/u_RFILE/yt\[7:0\]} \
{/test/u_RFILE/out_valid} \
{/test/u_RFILE/ns_p\[3:0\]} \
{/test/u_RFILE/cs_p\[3:0\]} \
{/test/u_RFILE/delt\[31:0\]} \
{/test/u_RFILE/delt_x\[31:0\]} \
{/test/u_RFILE/delt_y\[31:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
}
wvSelectSignal -win $_nWave2 {( "G1" 10 )} 
wvSetPosition -win $_nWave2 {("G1" 10)}
wvSetPosition -win $_nWave2 {("G1" 10)}
wvSetPosition -win $_nWave2 {("G1" 10)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/test/u_RFILE/clk} \
{/test/u_RFILE/rst} \
{/test/u_RFILE/rssiA\[19:0\]} \
{/test/u_RFILE/rssiB\[19:0\]} \
{/test/u_RFILE/rssiC\[19:0\]} \
{/test/u_RFILE/xt\[7:0\]} \
{/test/u_RFILE/yt\[7:0\]} \
{/test/u_RFILE/out_valid} \
{/test/u_RFILE/ns_p\[3:0\]} \
{/test/u_RFILE/cs_p\[3:0\]} \
{/test/u_RFILE/delt\[31:0\]} \
{/test/u_RFILE/delt_x\[31:0\]} \
{/test/u_RFILE/delt_y\[31:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
}
wvSelectSignal -win $_nWave2 {( "G1" 10 )} 
wvSetPosition -win $_nWave2 {("G1" 10)}
wvGetSignalClose -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 9)}
wvSetPosition -win $_nWave2 {("G1" 8)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 8)}
wvSetPosition -win $_nWave2 {("G1" 9)}
wvSetCursor -win $_nWave2 163845.616996 -snap {("G1" 8)}
wvSetCursor -win $_nWave2 164596.741996 -snap {("G1" 8)}
wvSetCursor -win $_nWave2 163344.866996 -snap {("G1" 8)}
wvSetCursor -win $_nWave2 164541.103107 -snap {("G1" 8)}
wvSetCursor -win $_nWave2 163567.422552 -snap {("G1" 8)}
wvGetSignalOpen -win $_nWave2
wvGetSignalSetScope -win $_nWave2 "/test"
wvGetSignalSetScope -win $_nWave2 "/test/u_RFILE"
wvGetSignalSetScope -win $_nWave2 "/test/u_RFILE"
wvSetPosition -win $_nWave2 {("G1" 11)}
wvSetPosition -win $_nWave2 {("G1" 11)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/test/u_RFILE/clk} \
{/test/u_RFILE/rst} \
{/test/u_RFILE/rssiA\[19:0\]} \
{/test/u_RFILE/rssiB\[19:0\]} \
{/test/u_RFILE/rssiC\[19:0\]} \
{/test/u_RFILE/xt\[7:0\]} \
{/test/u_RFILE/yt\[7:0\]} \
{/test/u_RFILE/out_valid} \
{/test/u_RFILE/cs_p\[3:0\]} \
{/test/u_RFILE/cs\[1:0\]} \
{/test/u_RFILE/done} \
{/test/u_RFILE/ns_p\[3:0\]} \
{/test/u_RFILE/delt\[31:0\]} \
{/test/u_RFILE/delt_x\[31:0\]} \
{/test/u_RFILE/delt_y\[31:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
}
wvSelectSignal -win $_nWave2 {( "G1" 10 11 )} 
wvSetPosition -win $_nWave2 {("G1" 11)}
wvSetPosition -win $_nWave2 {("G1" 12)}
wvSetPosition -win $_nWave2 {("G1" 12)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/test/u_RFILE/clk} \
{/test/u_RFILE/rst} \
{/test/u_RFILE/rssiA\[19:0\]} \
{/test/u_RFILE/rssiB\[19:0\]} \
{/test/u_RFILE/rssiC\[19:0\]} \
{/test/u_RFILE/xt\[7:0\]} \
{/test/u_RFILE/yt\[7:0\]} \
{/test/u_RFILE/out_valid} \
{/test/u_RFILE/cs_p\[3:0\]} \
{/test/u_RFILE/cs\[1:0\]} \
{/test/u_RFILE/done} \
{/test/u_RFILE/ns\[1:0\]} \
{/test/u_RFILE/ns_p\[3:0\]} \
{/test/u_RFILE/delt\[31:0\]} \
{/test/u_RFILE/delt_x\[31:0\]} \
{/test/u_RFILE/delt_y\[31:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
}
wvSelectSignal -win $_nWave2 {( "G1" 12 )} 
wvSetPosition -win $_nWave2 {("G1" 12)}
wvSetPosition -win $_nWave2 {("G1" 12)}
wvSetPosition -win $_nWave2 {("G1" 12)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/test/u_RFILE/clk} \
{/test/u_RFILE/rst} \
{/test/u_RFILE/rssiA\[19:0\]} \
{/test/u_RFILE/rssiB\[19:0\]} \
{/test/u_RFILE/rssiC\[19:0\]} \
{/test/u_RFILE/xt\[7:0\]} \
{/test/u_RFILE/yt\[7:0\]} \
{/test/u_RFILE/out_valid} \
{/test/u_RFILE/cs_p\[3:0\]} \
{/test/u_RFILE/cs\[1:0\]} \
{/test/u_RFILE/done} \
{/test/u_RFILE/ns\[1:0\]} \
{/test/u_RFILE/ns_p\[3:0\]} \
{/test/u_RFILE/delt\[31:0\]} \
{/test/u_RFILE/delt_x\[31:0\]} \
{/test/u_RFILE/delt_y\[31:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
}
wvSelectSignal -win $_nWave2 {( "G1" 12 )} 
wvSetPosition -win $_nWave2 {("G1" 12)}
wvGetSignalClose -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 11)}
wvSetPosition -win $_nWave2 {("G1" 10)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 10)}
wvSetPosition -win $_nWave2 {("G1" 11)}
wvSelectSignal -win $_nWave2 {( "G1" 12 )} 
wvSetPosition -win $_nWave2 {("G1" 12)}
wvSetPosition -win $_nWave2 {("G1" 13)}
wvSetPosition -win $_nWave2 {("G1" 14)}
wvSetPosition -win $_nWave2 {("G1" 15)}
wvSetPosition -win $_nWave2 {("G1" 16)}
wvSetPosition -win $_nWave2 {("G2" 0)}
wvSetPosition -win $_nWave2 {("G1" 16)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 16)}
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
debReload
wvGetSignalOpen -win $_nWave2
wvSetPosition -win $_nWave2 {("G2" 2)}
wvSetPosition -win $_nWave2 {("G2" 2)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/test/u_RFILE/clk} \
{/test/u_RFILE/rst} \
{/test/u_RFILE/rssiA\[19:0\]} \
{/test/u_RFILE/rssiB\[19:0\]} \
{/test/u_RFILE/rssiC\[19:0\]} \
{/test/u_RFILE/xt\[7:0\]} \
{/test/u_RFILE/yt\[7:0\]} \
{/test/u_RFILE/out_valid} \
{/test/u_RFILE/ns_p\[3:0\]} \
{/test/u_RFILE/delt\[31:0\]} \
{/test/u_RFILE/delt_x\[31:0\]} \
{/test/u_RFILE/delt_y\[31:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
{/test/u_RFILE/cs\[1:0\]} \
{/test/u_RFILE/ns\[1:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G3" \
}
wvSelectSignal -win $_nWave2 {( "G2" 1 2 )} 
wvSetPosition -win $_nWave2 {("G2" 2)}
wvGetSignalOpen -win $_nWave2
wvSetPosition -win $_nWave2 {("G2" 3)}
wvSetPosition -win $_nWave2 {("G2" 3)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/test/u_RFILE/clk} \
{/test/u_RFILE/rst} \
{/test/u_RFILE/rssiA\[19:0\]} \
{/test/u_RFILE/rssiB\[19:0\]} \
{/test/u_RFILE/rssiC\[19:0\]} \
{/test/u_RFILE/xt\[7:0\]} \
{/test/u_RFILE/yt\[7:0\]} \
{/test/u_RFILE/out_valid} \
{/test/u_RFILE/ns_p\[3:0\]} \
{/test/u_RFILE/delt\[31:0\]} \
{/test/u_RFILE/delt_x\[31:0\]} \
{/test/u_RFILE/delt_y\[31:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
{/test/u_RFILE/cs\[1:0\]} \
{/test/u_RFILE/ns\[1:0\]} \
{/test/u_RFILE/done} \
}
wvAddSignal -win $_nWave2 -group {"G3" \
}
wvSelectSignal -win $_nWave2 {( "G2" 3 )} 
wvSetPosition -win $_nWave2 {("G2" 3)}
wvGetSignalClose -win $_nWave2
wvSetPosition -win $_nWave2 {("G2" 2)}
wvSetPosition -win $_nWave2 {("G2" 1)}
wvSetPosition -win $_nWave2 {("G2" 0)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G2" 0)}
wvSetPosition -win $_nWave2 {("G2" 1)}
wvGetSignalOpen -win $_nWave2
wvGetSignalSetScope -win $_nWave2 "/test"
wvGetSignalSetScope -win $_nWave2 "/test/u_RFILE"
wvGetSignalSetScope -win $_nWave2 "/test/u_RFILE"
wvSetPosition -win $_nWave2 {("G2" 2)}
wvSetPosition -win $_nWave2 {("G2" 2)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/test/u_RFILE/clk} \
{/test/u_RFILE/rst} \
{/test/u_RFILE/rssiA\[19:0\]} \
{/test/u_RFILE/rssiB\[19:0\]} \
{/test/u_RFILE/rssiC\[19:0\]} \
{/test/u_RFILE/xt\[7:0\]} \
{/test/u_RFILE/yt\[7:0\]} \
{/test/u_RFILE/out_valid} \
{/test/u_RFILE/ns_p\[3:0\]} \
{/test/u_RFILE/delt\[31:0\]} \
{/test/u_RFILE/delt_x\[31:0\]} \
{/test/u_RFILE/delt_y\[31:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
{/test/u_RFILE/done} \
{/test/u_RFILE/cs_p\[3:0\]} \
{/test/u_RFILE/cs\[1:0\]} \
{/test/u_RFILE/ns\[1:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G3" \
}
wvSelectSignal -win $_nWave2 {( "G2" 2 )} 
wvSetPosition -win $_nWave2 {("G2" 2)}
wvSetPosition -win $_nWave2 {("G2" 2)}
wvSetPosition -win $_nWave2 {("G2" 2)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/test/u_RFILE/clk} \
{/test/u_RFILE/rst} \
{/test/u_RFILE/rssiA\[19:0\]} \
{/test/u_RFILE/rssiB\[19:0\]} \
{/test/u_RFILE/rssiC\[19:0\]} \
{/test/u_RFILE/xt\[7:0\]} \
{/test/u_RFILE/yt\[7:0\]} \
{/test/u_RFILE/out_valid} \
{/test/u_RFILE/ns_p\[3:0\]} \
{/test/u_RFILE/delt\[31:0\]} \
{/test/u_RFILE/delt_x\[31:0\]} \
{/test/u_RFILE/delt_y\[31:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
{/test/u_RFILE/done} \
{/test/u_RFILE/cs_p\[3:0\]} \
{/test/u_RFILE/cs\[1:0\]} \
{/test/u_RFILE/ns\[1:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G3" \
}
wvSelectSignal -win $_nWave2 {( "G2" 2 )} 
wvSetPosition -win $_nWave2 {("G2" 2)}
wvGetSignalClose -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 12)}
wvSetPosition -win $_nWave2 {("G1" 11)}
wvSetPosition -win $_nWave2 {("G1" 10)}
wvSetPosition -win $_nWave2 {("G1" 9)}
wvSetPosition -win $_nWave2 {("G1" 8)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 8)}
wvSetPosition -win $_nWave2 {("G1" 9)}
wvSetCursor -win $_nWave2 2475.930556 -snap {("G1" 5)}
wvSetCursor -win $_nWave2 3393.972222 -snap {("G1" 1)}
debReload
wvSetCursor -win $_nWave2 2559.388889 -snap {("G1" 1)}
wvSetCursor -win $_nWave2 3366.152778 -snap {("G1" 1)}
wvSetCursor -win $_nWave2 18444.291667 -snap {("G1" 8)}
wvSetCursor -win $_nWave2 19529.250000 -snap {("G1" 8)}
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvSetCursor -win $_nWave2 18529.488715 -snap {("G1" 7)}
wvSetCursor -win $_nWave2 19440.575521 -snap {("G1" 8)}
wvSetCursor -win $_nWave2 18501.669271 -snap {("G1" 8)}
wvSetCursor -win $_nWave2 19496.214410 -snap {("G1" 8)}
wvSelectSignal -win $_nWave2 {( "G1" 9 )} 
