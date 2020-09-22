wvSetPosition -win $_nWave1 {("G1" 0)}
wvOpenFile -win $_nWave1 {/home/lin/github/CIC_2018_grad/sim/huffman.fsdb}
wvResizeWindow -win $_nWave1 0 23 1920 1017
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
wvSetPosition -win $_nWave1 {("G1" 3)}
wvSetPosition -win $_nWave1 {("G1" 3)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/tb/u_huffman/clk} \
{/tb/u_huffman/code_valid} \
{/tb/u_huffman/current_state} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 2 3 )} 
wvSetPosition -win $_nWave1 {("G1" 3)}
wvSetPosition -win $_nWave1 {("G1" 4)}
wvSetPosition -win $_nWave1 {("G1" 4)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/tb/u_huffman/clk} \
{/tb/u_huffman/code_valid} \
{/tb/u_huffman/current_state} \
{/tb/u_huffman/next_state} \
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
{/tb/u_huffman/code_valid} \
{/tb/u_huffman/current_state} \
{/tb/u_huffman/next_state} \
{/tb/u_huffman/reset} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 5 )} 
wvSetPosition -win $_nWave1 {("G1" 5)}
wvSetPosition -win $_nWave1 {("G1" 6)}
wvSetPosition -win $_nWave1 {("G1" 6)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/tb/u_huffman/clk} \
{/tb/u_huffman/code_valid} \
{/tb/u_huffman/current_state} \
{/tb/u_huffman/next_state} \
{/tb/u_huffman/reset} \
{/tb/u_huffman/gray_data\[7:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 6 )} 
wvSetPosition -win $_nWave1 {("G1" 6)}
wvSetPosition -win $_nWave1 {("G1" 7)}
wvSetPosition -win $_nWave1 {("G1" 7)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/tb/u_huffman/clk} \
{/tb/u_huffman/code_valid} \
{/tb/u_huffman/current_state} \
{/tb/u_huffman/next_state} \
{/tb/u_huffman/reset} \
{/tb/u_huffman/gray_data\[7:0\]} \
{/tb/u_huffman/gray_valid} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 7 )} 
wvSetPosition -win $_nWave1 {("G1" 7)}
wvSetPosition -win $_nWave1 {("G1" 8)}
wvSetPosition -win $_nWave1 {("G1" 8)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/tb/u_huffman/clk} \
{/tb/u_huffman/code_valid} \
{/tb/u_huffman/current_state} \
{/tb/u_huffman/next_state} \
{/tb/u_huffman/reset} \
{/tb/u_huffman/gray_data\[7:0\]} \
{/tb/u_huffman/gray_valid} \
{/tb/u_huffman/CNT1\[7:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 8 )} 
wvSetPosition -win $_nWave1 {("G1" 8)}
wvSetPosition -win $_nWave1 {("G1" 9)}
wvSetPosition -win $_nWave1 {("G1" 9)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/tb/u_huffman/clk} \
{/tb/u_huffman/code_valid} \
{/tb/u_huffman/current_state} \
{/tb/u_huffman/next_state} \
{/tb/u_huffman/reset} \
{/tb/u_huffman/gray_data\[7:0\]} \
{/tb/u_huffman/gray_valid} \
{/tb/u_huffman/CNT1\[7:0\]} \
{/tb/u_huffman/CNT2\[7:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 9 )} 
wvSetPosition -win $_nWave1 {("G1" 9)}
wvSetPosition -win $_nWave1 {("G1" 10)}
wvSetPosition -win $_nWave1 {("G1" 10)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/tb/u_huffman/clk} \
{/tb/u_huffman/code_valid} \
{/tb/u_huffman/current_state} \
{/tb/u_huffman/next_state} \
{/tb/u_huffman/reset} \
{/tb/u_huffman/gray_data\[7:0\]} \
{/tb/u_huffman/gray_valid} \
{/tb/u_huffman/CNT1\[7:0\]} \
{/tb/u_huffman/CNT2\[7:0\]} \
{/tb/u_huffman/CNT3\[7:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 10 )} 
wvSetPosition -win $_nWave1 {("G1" 10)}
wvSetPosition -win $_nWave1 {("G1" 11)}
wvSetPosition -win $_nWave1 {("G1" 11)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/tb/u_huffman/clk} \
{/tb/u_huffman/code_valid} \
{/tb/u_huffman/current_state} \
{/tb/u_huffman/next_state} \
{/tb/u_huffman/reset} \
{/tb/u_huffman/gray_data\[7:0\]} \
{/tb/u_huffman/gray_valid} \
{/tb/u_huffman/CNT1\[7:0\]} \
{/tb/u_huffman/CNT2\[7:0\]} \
{/tb/u_huffman/CNT3\[7:0\]} \
{/tb/u_huffman/CNT4\[7:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 11 )} 
wvSetPosition -win $_nWave1 {("G1" 11)}
wvSetPosition -win $_nWave1 {("G1" 12)}
wvSetPosition -win $_nWave1 {("G1" 12)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/tb/u_huffman/clk} \
{/tb/u_huffman/code_valid} \
{/tb/u_huffman/current_state} \
{/tb/u_huffman/next_state} \
{/tb/u_huffman/reset} \
{/tb/u_huffman/gray_data\[7:0\]} \
{/tb/u_huffman/gray_valid} \
{/tb/u_huffman/CNT1\[7:0\]} \
{/tb/u_huffman/CNT2\[7:0\]} \
{/tb/u_huffman/CNT3\[7:0\]} \
{/tb/u_huffman/CNT4\[7:0\]} \
{/tb/u_huffman/CNT5\[7:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 12 )} 
wvSetPosition -win $_nWave1 {("G1" 12)}
wvSetPosition -win $_nWave1 {("G1" 13)}
wvSetPosition -win $_nWave1 {("G1" 13)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/tb/u_huffman/clk} \
{/tb/u_huffman/code_valid} \
{/tb/u_huffman/current_state} \
{/tb/u_huffman/next_state} \
{/tb/u_huffman/reset} \
{/tb/u_huffman/gray_data\[7:0\]} \
{/tb/u_huffman/gray_valid} \
{/tb/u_huffman/CNT1\[7:0\]} \
{/tb/u_huffman/CNT2\[7:0\]} \
{/tb/u_huffman/CNT3\[7:0\]} \
{/tb/u_huffman/CNT4\[7:0\]} \
{/tb/u_huffman/CNT5\[7:0\]} \
{/tb/u_huffman/CNT6\[7:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 13 )} 
wvSetPosition -win $_nWave1 {("G1" 13)}
wvSetPosition -win $_nWave1 {("G1" 14)}
wvSetPosition -win $_nWave1 {("G1" 14)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/tb/u_huffman/clk} \
{/tb/u_huffman/code_valid} \
{/tb/u_huffman/current_state} \
{/tb/u_huffman/next_state} \
{/tb/u_huffman/reset} \
{/tb/u_huffman/gray_data\[7:0\]} \
{/tb/u_huffman/gray_valid} \
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
wvSelectSignal -win $_nWave1 {( "G1" 14 )} 
wvSetPosition -win $_nWave1 {("G1" 14)}
wvSetPosition -win $_nWave1 {("G1" 14)}
wvSetPosition -win $_nWave1 {("G1" 14)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/tb/u_huffman/clk} \
{/tb/u_huffman/code_valid} \
{/tb/u_huffman/current_state} \
{/tb/u_huffman/next_state} \
{/tb/u_huffman/reset} \
{/tb/u_huffman/gray_data\[7:0\]} \
{/tb/u_huffman/gray_valid} \
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
wvSelectSignal -win $_nWave1 {( "G1" 14 )} 
wvSetPosition -win $_nWave1 {("G1" 14)}
wvGetSignalClose -win $_nWave1
wvResizeWindow -win $_nWave1 0 23 1920 1017
wvSelectSignal -win $_nWave1 {( "G1" 5 )} 
wvSetPosition -win $_nWave1 {("G1" 5)}
wvSetPosition -win $_nWave1 {("G1" 4)}
wvSetPosition -win $_nWave1 {("G1" 3)}
wvSetPosition -win $_nWave1 {("G1" 2)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 2)}
wvSetPosition -win $_nWave1 {("G1" 3)}
wvSetPosition -win $_nWave1 {("G1" 2)}
wvSetPosition -win $_nWave1 {("G1" 1)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 1)}
wvSetPosition -win $_nWave1 {("G1" 2)}
wvSelectSignal -win $_nWave1 {( "G1" 3 )} 
wvSetPosition -win $_nWave1 {("G1" 3)}
wvSetPosition -win $_nWave1 {("G1" 5)}
wvSetPosition -win $_nWave1 {("G1" 6)}
wvSetPosition -win $_nWave1 {("G1" 7)}
wvSetPosition -win $_nWave1 {("G1" 8)}
wvSetPosition -win $_nWave1 {("G1" 9)}
wvSetPosition -win $_nWave1 {("G1" 10)}
wvSetPosition -win $_nWave1 {("G1" 11)}
wvSetPosition -win $_nWave1 {("G1" 12)}
wvSetPosition -win $_nWave1 {("G1" 13)}
wvSetPosition -win $_nWave1 {("G1" 14)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 14)}
wvSetCursor -win $_nWave1 605198026.894983 -snap {("G2" 0)}
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvSetCursor -win $_nWave1 3482.759293 -snap {("G1" 11)}
wvSetCursor -win $_nWave1 5356.061639 -snap {("G1" 6)}
wvSelectSignal -win $_nWave1 {( "G1" 4 )} 
wvSaveSignal -win $_nWave1 "/home/lin/github/CIC_2018_grad/sim/signal.rc"
