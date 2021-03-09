wvSetPosition -win $_nWave1 {("G1" 0)}
wvOpenFile -win $_nWave1 {/home/lin/github/CIC_2018_grad/sim/huffman.fsdb}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/tb"
wvGetSignalSetScope -win $_nWave1 "/tb/u_huffman"
wvSetPosition -win $_nWave1 {("G1" 1)}
wvSetPosition -win $_nWave1 {("G1" 1)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/tb/u_huffman/clk} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 1 )} 
wvSetPosition -win $_nWave1 {("G1" 1)}
wvSetPosition -win $_nWave1 {("G1" 2)}
wvSetPosition -win $_nWave1 {("G1" 2)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/tb/u_huffman/clk} \
{/tb/u_huffman/gray_data\[7:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 2 )} 
wvSetPosition -win $_nWave1 {("G1" 2)}
wvSetPosition -win $_nWave1 {("G1" 3)}
wvSetPosition -win $_nWave1 {("G1" 3)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/tb/u_huffman/clk} \
{/tb/u_huffman/gray_data\[7:0\]} \
{/tb/u_huffman/gray_valid} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 3 )} 
wvSetPosition -win $_nWave1 {("G1" 3)}
wvSetPosition -win $_nWave1 {("G1" 4)}
wvSetPosition -win $_nWave1 {("G1" 4)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/tb/u_huffman/clk} \
{/tb/u_huffman/gray_data\[7:0\]} \
{/tb/u_huffman/gray_valid} \
{/tb/u_huffman/reset} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 4 )} 
wvSetPosition -win $_nWave1 {("G1" 4)}
wvSetPosition -win $_nWave1 {("G1" 4)}
wvSetPosition -win $_nWave1 {("G1" 4)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/tb/u_huffman/clk} \
{/tb/u_huffman/gray_data\[7:0\]} \
{/tb/u_huffman/gray_valid} \
{/tb/u_huffman/reset} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 4 )} 
wvSetPosition -win $_nWave1 {("G1" 4)}
wvGetSignalClose -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 3)}
wvSetPosition -win $_nWave1 {("G1" 2)}
wvSetPosition -win $_nWave1 {("G1" 1)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 1)}
wvSetPosition -win $_nWave1 {("G1" 2)}
wvSelectSignal -win $_nWave1 {( "G1" 4 )} 
wvSetPosition -win $_nWave1 {("G1" 4)}
wvSetPosition -win $_nWave1 {("G1" 3)}
wvSetPosition -win $_nWave1 {("G1" 2)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 2)}
wvSetPosition -win $_nWave1 {("G1" 3)}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/tb"
wvGetSignalSetScope -win $_nWave1 "/tb/u_huffman"
wvSetPosition -win $_nWave1 {("G1" 4)}
wvSetPosition -win $_nWave1 {("G1" 4)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/tb/u_huffman/clk} \
{/tb/u_huffman/reset} \
{/tb/u_huffman/gray_valid} \
{/tb/u_huffman/next_state\[3:0\]} \
{/tb/u_huffman/gray_data\[7:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 4 )} 
wvSetPosition -win $_nWave1 {("G1" 4)}
wvSetPosition -win $_nWave1 {("G1" 5)}
wvSetPosition -win $_nWave1 {("G1" 5)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/tb/u_huffman/clk} \
{/tb/u_huffman/reset} \
{/tb/u_huffman/gray_valid} \
{/tb/u_huffman/next_state\[3:0\]} \
{/tb/u_huffman/current_state\[3:0\]} \
{/tb/u_huffman/gray_data\[7:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 5 )} 
wvSetPosition -win $_nWave1 {("G1" 5)}
wvSetPosition -win $_nWave1 {("G1" 5)}
wvSetPosition -win $_nWave1 {("G1" 5)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/tb/u_huffman/clk} \
{/tb/u_huffman/reset} \
{/tb/u_huffman/gray_valid} \
{/tb/u_huffman/next_state\[3:0\]} \
{/tb/u_huffman/current_state\[3:0\]} \
{/tb/u_huffman/gray_data\[7:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 5 )} 
wvSetPosition -win $_nWave1 {("G1" 5)}
wvGetSignalClose -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 4)}
wvSetPosition -win $_nWave1 {("G1" 3)}
wvSetPosition -win $_nWave1 {("G1" 2)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 2)}
wvSetPosition -win $_nWave1 {("G1" 3)}
wvSelectSignal -win $_nWave1 {( "G1" 6 )} 
wvSelectSignal -win $_nWave1 {( "G1" 4 5 )} 
wvSelectSignal -win $_nWave1 {( "G1" 5 )} 
wvSetPosition -win $_nWave1 {("G1" 5)}
wvSetPosition -win $_nWave1 {("G1" 4)}
wvSetPosition -win $_nWave1 {("G1" 3)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 3)}
wvSetPosition -win $_nWave1 {("G1" 4)}
wvSelectGroup -win $_nWave1 {G2}
wvSetCursor -win $_nWave1 922.855369 -snap {("G2" 0)}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/tb"
wvGetSignalSetScope -win $_nWave1 "/tb/u_huffman"
wvGetSignalSetScope -win $_nWave1 "/tb/u_huffman"
wvSetPosition -win $_nWave1 {("G1" 5)}
wvSetPosition -win $_nWave1 {("G1" 5)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/tb/u_huffman/clk} \
{/tb/u_huffman/reset} \
{/tb/u_huffman/current_state\[3:0\]} \
{/tb/u_huffman/next_state\[3:0\]} \
{/tb/u_huffman/CNT1\[7:0\]} \
{/tb/u_huffman/gray_valid} \
{/tb/u_huffman/gray_data\[7:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 5 )} 
wvSetPosition -win $_nWave1 {("G1" 5)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 5 )} 
wvSetPosition -win $_nWave1 {("G1" 6)}
wvSetPosition -win $_nWave1 {("G1" 7)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 7)}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/tb"
wvGetSignalSetScope -win $_nWave1 "/tb/u_huffman"
wvGetSignalSetScope -win $_nWave1 "/tb/u_huffman"
wvSetPosition -win $_nWave1 {("G1" 13)}
wvSetPosition -win $_nWave1 {("G1" 13)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/tb/u_huffman/clk} \
{/tb/u_huffman/reset} \
{/tb/u_huffman/current_state\[3:0\]} \
{/tb/u_huffman/next_state\[3:0\]} \
{/tb/u_huffman/gray_valid} \
{/tb/u_huffman/gray_data\[7:0\]} \
{/tb/u_huffman/CNT1\[7:0\]} \
{/tb/u_huffman/CNT2\[7:0\]} \
{/tb/u_huffman/CNT3\[7:0\]} \
{/tb/u_huffman/CNT4\[7:0\]} \
{/tb/u_huffman/CNT5\[7:0\]} \
{/tb/u_huffman/CNT6\[7:0\]} \
{/tb/u_huffman/CNT_valid} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 8 9 10 11 12 13 )} 
wvSetPosition -win $_nWave1 {("G1" 13)}
wvGetSignalSetSignalFilter -win $_nWave1 "init_index_array"
wvSetPosition -win $_nWave1 {("G1" 13)}
wvSetPosition -win $_nWave1 {("G1" 13)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/tb/u_huffman/clk} \
{/tb/u_huffman/reset} \
{/tb/u_huffman/current_state\[3:0\]} \
{/tb/u_huffman/next_state\[3:0\]} \
{/tb/u_huffman/gray_valid} \
{/tb/u_huffman/gray_data\[7:0\]} \
{/tb/u_huffman/CNT1\[7:0\]} \
{/tb/u_huffman/CNT2\[7:0\]} \
{/tb/u_huffman/CNT3\[7:0\]} \
{/tb/u_huffman/CNT4\[7:0\]} \
{/tb/u_huffman/CNT5\[7:0\]} \
{/tb/u_huffman/CNT6\[7:0\]} \
{/tb/u_huffman/CNT_valid} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 8 9 10 11 12 13 )} 
wvSetPosition -win $_nWave1 {("G1" 13)}
wvGetSignalSetScope -win $_nWave1 "/tb"
wvGetSignalSetScope -win $_nWave1 "/tb/u_huffman"
wvRestoreSignal -win $_nWave1 "/home/lin/github/CIC_2018_grad/sim/signal.rc" \
           -overWriteAutoAlias on -appendSignals on
wvSelectSignal -win $_nWave1 {( "G1" 14 )} 
wvSelectSignal -win $_nWave1 {( "G1" 14 )} 
wvSelectSignal -win $_nWave1 {( "G1" 14 )} 
wvSelectSignal -win $_nWave1 {( "G1" 14 15 )} 
wvSelectSignal -win $_nWave1 {( "G1" 14 15 16 )} 
wvSelectSignal -win $_nWave1 {( "G1" 14 15 16 17 )} 
wvSelectSignal -win $_nWave1 {( "G1" 14 15 16 17 18 )} 
wvSelectSignal -win $_nWave1 {( "G1" 14 15 16 17 18 19 )} 
wvSelectSignal -win $_nWave1 {( "G1" 14 15 16 17 18 19 20 )} 
wvSelectSignal -win $_nWave1 {( "G1" 14 15 16 17 18 19 20 21 )} 
wvSelectSignal -win $_nWave1 {( "G1" 14 15 16 17 18 19 20 21 22 )} 
wvSelectSignal -win $_nWave1 {( "G1" 14 15 16 17 18 19 20 21 22 23 )} 
wvSelectSignal -win $_nWave1 {( "G1" 14 15 16 17 18 19 20 21 22 23 24 )} 
wvSelectSignal -win $_nWave1 {( "G1" 14 15 16 17 18 19 20 21 22 23 24 25 )} 
wvSelectSignal -win $_nWave1 {( "G1" 14 15 16 17 18 19 20 21 22 23 24 25 26 )} \
           
wvSelectSignal -win $_nWave1 {( "G1" 14 15 16 17 18 19 20 21 22 23 24 25 26 27 \
           )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 0)}
wvSetPosition -win $_nWave1 {("G1" 13)}
wvSaveSignal -win $_nWave1 "/home/lin/github/CIC_2018_grad/sim/signal.rc"
wvSetCursor -win $_nWave1 18126.179046 -snap {("G2" 0)}
wvSetCursor -win $_nWave1 15989.031298 -snap {("G1" 10)}
wvSetCursor -win $_nWave1 109764.941297 -snap {("G1" 12)}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/tb"
wvGetSignalSetScope -win $_nWave1 "/tb/u_huffman"
wvGetSignalSetScope -win $_nWave1 "/tb/u_huffman"
wvSetPosition -win $_nWave1 {("G1" 14)}
wvSetPosition -win $_nWave1 {("G1" 14)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/tb/u_huffman/clk} \
{/tb/u_huffman/reset} \
{/tb/u_huffman/current_state\[3:0\]} \
{/tb/u_huffman/next_state\[3:0\]} \
{/tb/u_huffman/gray_valid} \
{/tb/u_huffman/gray_data\[7:0\]} \
{/tb/u_huffman/CNT1\[7:0\]} \
{/tb/u_huffman/CNT2\[7:0\]} \
{/tb/u_huffman/CNT3\[7:0\]} \
{/tb/u_huffman/CNT4\[7:0\]} \
{/tb/u_huffman/CNT5\[7:0\]} \
{/tb/u_huffman/CNT6\[7:0\]} \
{/tb/u_huffman/CNT_valid} \
{/tb/u_huffman/counter\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 14 )} 
wvSetPosition -win $_nWave1 {("G1" 14)}
wvSetCursor -win $_nWave1 112403.395306 -snap {("G1" 11)}
wvResizeWindow -win $_nWave1 1920 23 1680 987
wvSetCursor -win $_nWave1 106549.807347 -snap {("G1" 9)}
wvSetCursor -win $_nWave1 107474.855982 -snap {("G1" 10)}
wvSetCursor -win $_nWave1 107157.696450 -snap {("G1" 10)}
wvSetCursor -win $_nWave1 107871.305397 -snap {("G1" 6)}
wvSelectSignal -win $_nWave1 {( "G1" 7 )} 
wvSelectSignal -win $_nWave1 {( "G1" 7 8 )} 
wvSelectSignal -win $_nWave1 {( "G1" 7 8 9 )} 
wvSelectSignal -win $_nWave1 {( "G1" 7 8 9 10 )} 
wvSelectSignal -win $_nWave1 {( "G1" 7 8 9 )} 
wvSelectSignal -win $_nWave1 {( "G1" 7 8 9 11 )} 
wvSelectSignal -win $_nWave1 {( "G1" 7 8 9 11 12 )} 
wvSelectSignal -win $_nWave1 {( "G1" 7 8 9 11 )} 
wvSelectSignal -win $_nWave1 {( "G1" 7 8 9 10 11 )} 
wvSelectSignal -win $_nWave1 {( "G1" 7 8 9 10 11 12 )} 
wvSelectSignal -win $_nWave1 {( "G1" 7 8 9 10 11 12 )} 
wvSetRadix -win $_nWave1 -format UDec
wvSetCursor -win $_nWave1 107342.706177 -snap {("G1" 8)}
wvSetCursor -win $_nWave1 106787.676996 -snap {("G1" 13)}
wvSetCursor -win $_nWave1 112396.945538 -snap {("G1" 12)}
wvSetCursor -win $_nWave1 108855.330765 -snap {("G1" 10)}
wvSetCursor -win $_nWave1 105049.416381 -snap {("G1" 5)}
wvSetCursor -win $_nWave1 105498.725718 -snap {("G1" 1)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 106608.784080 -snap {("G1" 14)}
wvSelectSignal -win $_nWave1 {( "G1" 7 )} 
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 7 )} 
wvSetCursor -win $_nWave1 110520.418308 -snap {("G1" 6)}
wvSetCursor -win $_nWave1 111181.167333 -snap {("G1" 7)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 108776.040882 -snap {("G1" 10)}
wvSelectSignal -win $_nWave1 {( "G1" 8 )} 
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 106397.344392 -snap {("G1" 13)}
wvSetCursor -win $_nWave1 99261.254923 -snap {("G1" 7)}
wvSelectSignal -win $_nWave1 {( "G1" 7 )} 
wvSaveSignal -win $_nWave1 "/home/lin/github/CIC_2018_grad/sim/signal.rc"
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 105630.875523 -snap {("G1" 7)}
wvSetCursor -win $_nWave1 107771.702364 -snap {("G1" 14)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 105525.155679 -snap {("G1" 3)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 112581.955265 -snap {("G1" 4)}
wvSetCursor -win $_nWave1 114537.772379 -snap {("G1" 8)}
wvSetCursor -win $_nWave1 113533.433861 -snap {("G1" 8)}
wvSetCursor -win $_nWave1 108500.000000
wvSetCursor -win $_nWave1 108500.000000
wvSetCursor -win $_nWave1 85808.404776 -snap {("G2" 0)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 112766.964992 -snap {("G1" 8)}
wvSetCursor -win $_nWave1 114167.752925 -snap {("G1" 8)}
wvSaveSignal -win $_nWave1 "/home/lin/github/CIC_2018_grad/sim/signal.rc"
wvGetSignalOpen -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 20)}
wvSetPosition -win $_nWave1 {("G1" 20)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/tb/u_huffman/clk} \
{/tb/u_huffman/reset} \
{/tb/u_huffman/current_state\[3:0\]} \
{/tb/u_huffman/next_state\[3:0\]} \
{/tb/u_huffman/gray_valid} \
{/tb/u_huffman/gray_data\[7:0\]} \
{/tb/u_huffman/CNT1\[7:0\]} \
{/tb/u_huffman/CNT2\[7:0\]} \
{/tb/u_huffman/CNT3\[7:0\]} \
{/tb/u_huffman/CNT4\[7:0\]} \
{/tb/u_huffman/CNT5\[7:0\]} \
{/tb/u_huffman/CNT6\[7:0\]} \
{/tb/u_huffman/CNT_valid} \
{/tb/u_huffman/counter\[2:0\]} \
{/tb/u_huffman/init_index_array_0\[7:0\]} \
{/tb/u_huffman/init_index_array_1\[7:0\]} \
{/tb/u_huffman/init_index_array_2\[7:0\]} \
{/tb/u_huffman/init_index_array_3\[7:0\]} \
{/tb/u_huffman/init_index_array_4\[7:0\]} \
{/tb/u_huffman/init_index_array_5\[7:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 15 16 17 18 19 20 )} 
wvSetPosition -win $_nWave1 {("G1" 20)}
wvSetCursor -win $_nWave1 110969.727645 -snap {("G1" 12)}
