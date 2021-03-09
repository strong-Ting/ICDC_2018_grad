debImport "/home/lin/github/CIC_2018_grad/src/huffman.v" -path \
          {/home/lin/github/CIC_2018_grad/src}
verdiWindowResize -win $_Verdi_1 "0" "23" "1920" "1017"
nsMsgSwitchTab -tab cmpl
nsMsgSwitchTab -tab trace
nsMsgSwitchTab -tab general
nsMsgSwitchTab -tab cmpl
srcTBInvokeSim
nsMsgSwitchTab -tab general
debImport "/home/lin/github/CIC_2018_grad/src/huffman.v" \
          "/home/lin/github/CIC_2018_grad/sim/tb.v" -path \
          {/home/lin/github/CIC_2018_grad/src}
srcTBInvokeSim
simv
srcDeselectAll -win $_nTrace1
verdiWindowWorkMode -win $_Verdi_1 -hardwareDebug
nsMsgSwitchTab -tab cmpl
nsMsgSwitchTab -tab trace
nsMsgSwitchTab -tab search
nsMsgSwitchTab -tab intercon
nsMsgSwitchTab -tab general
verdiDockWidgetSetCurTab -dock widgetDock_<Decl._Tree>
verdiDockWidgetSetCurTab -dock widgetDock_<Inst._Tree>
srcFindScope -open -win $_nTrace1
srcFindScope -selectscope 1
srcFindScopeGoto -win $_nTrace1
srcFindScopeGoto -win $_nTrace1
srcFindScopeGoto -win $_nTrace1
srcTBInvokeSim
srcDeselectAll -win $_nTrace1
