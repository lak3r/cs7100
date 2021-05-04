# ogpf libray
# Rev. 0.22 of March 9th, 2018
# Licence: MIT

# gnuplot global setting
set term wxt size 640,480 enhanced font "verdana,10" title "ogpf libray: Rev. 0.22 of March 9th, 2018"

# ogpf extra configuration
# -------------------------------------------
# color definitions
set style line 1 lc rgb "#800000" lt 1 lw 2
set style line 2 lc rgb "#ff0000" lt 1 lw 2
set style line 3 lc rgb "#ff4500" lt 1 lw 2
set style line 4 lc rgb "#ffa500" lt 1 lw 2
set style line 5 lc rgb "#006400" lt 1 lw 2
set style line 6 lc rgb "#0000ff" lt 1 lw 2
set style line 7 lc rgb "#9400d3" lt 1 lw 2

# Axes
set border linewidth 1.15
set tics nomirror

# grid
# Add light grid to plot
set style line 102 lc rgb "#d6d7d9" lt 0 lw 1
set grid back ls 102

# plot style
set style data linespoints

# -------------------------------------------

 
# plot scale
 
# Annotation: title and labels
set title "Example test title"
 
# axes setting

plot "-" notitle
  0.10808811000000000        9995.3876252296304     
   5.4044055000000001E-002   19965.312554337099     
   3.6029369999999998E-002   29925.902096354999     
   2.7022027500000000E-002   39853.505750229997     
   2.1617622000000000E-002   49777.769087780100     
   1.8014684999999999E-002   59666.867938058902     
   1.5441158571428601E-002   69550.023707595305     
   1.3511013750000000E-002   79465.949208250400     
   1.2009789999999999E-002   89288.337662732200     
   1.0808811000000000E-002   99148.416113298896     
   9.8261918181818207E-003   108985.26421365100     
   9.0073424999999995E-003   118695.11148313301     
   8.3144699999999992E-003   128594.26972265700     
   7.7205792857142899E-003   138231.47045893900     
   7.2058740000000001E-003   148037.95483730201     
   6.7555068750000001E-003   157717.31046174100     
   6.3581241176470602E-003   167458.00000778001     
   6.0048949999999997E-003   177242.07065272800     
   5.6888478947368397E-003   186806.72987421101     
   5.4044054999999999E-003   196525.92460408600     
   5.1470528571428602E-003   206133.43651974999     
   4.9130959090909103E-003   215726.51132111301     
   4.6994830434782600E-003   225382.93741475299     
   4.5036712499999998E-003   235061.98818074699     
   4.3235243999999997E-003   244549.43124439599     
   4.1572349999999996E-003   254238.92928067100     
   4.0032633333333296E-003   263697.34184312401     
   3.8602896428571402E-003   273311.80496648501     
   3.7271762068965498E-003   282709.30718617002     
   3.6029370000000001E-003   292162.30254693201     
   3.4867132258064502E-003   301633.50469140301     
   3.3777534375000000E-003   311081.20175701898     
   3.2753972727272698E-003   320463.67242442101     
   3.1790620588235301E-003   329974.74331923202     
   3.0882317142857099E-003   339312.22295536299     
   3.0024474999999998E-003   348650.40280449501     
   2.9213002702702701E-003   358217.80587907002     
   2.8444239473684198E-003   367587.31824197801     
   2.7714900000000002E-003   376961.70735980303     
   2.7022027499999999E-003   386118.55114668998     
   2.6362953658536602E-003   395280.94971396902     
   2.5735264285714301E-003   404935.57528093300     
   2.5136769767441901E-003   413936.15165791201     
   2.4565479545454500E-003   423382.37323088199     
   2.4019580000000000E-003   432489.22092033399     
   2.3497415217391300E-003   441908.22683795699     
   2.2997470212765998E-003   451066.32860619703     
   2.2518356249999999E-003   459873.40219187603     
   2.2058797959183698E-003   469235.70462153002     
   2.1617621999999999E-003   478424.70996957598     
   2.1193747058823498E-003   487597.37071698101     
   2.0786174999999998E-003   496694.17792281398     
   2.0393983018867899E-003   505660.41905186698     
   2.0016316666666700E-003   514671.64161751699     
   1.9652383636363600E-003   523924.97568659100     
   1.9301448214285701E-003   533149.52328389697     
   1.8962826315789499E-003   541727.47211198602     
   1.8635881034482799E-003   551032.69450113899     
   1.8320018644067801E-003   560032.93112618197     
   1.8014685000000000E-003   568707.42418504402     
   1.7719362295082000E-003   577976.72176055401     
   1.7433566129032301E-003   587070.99721216003     
   1.7156842857142900E-003   595654.70551505894     
   1.6888767187500000E-003   604548.85454402003     
   1.6628940000000000E-003   613337.63007126900     
   1.6376986363636401E-003   622321.09050350997     
   1.6132553731343299E-003   631330.60236837401     
   1.5895310294117601E-003   640260.26855085301     
   1.5664943478260901E-003   648653.22241854097     
   1.5441158571428599E-003   658065.47138106904     
   1.5223677464788700E-003   666706.19680873398     
   1.5012237499999999E-003   675202.47500395600     
   1.4806590410958900E-003   684292.51654292201     
   1.4606501351351400E-003   692544.07597624406     
   1.4411748000000000E-003   701445.35160766600     
   1.4222119736842099E-003   710064.38455470500     
   1.4037416883116900E-003   718908.14684460999     
   1.3857450000000001E-003   727610.74646307796     
   1.3682039240506300E-003   736551.62136975001     
   1.3511013750000000E-003   745176.83010177000     
   1.3344211111111100E-003   753376.88423909305     
   1.3181476829268301E-003   762025.23809939402     
   1.3022663855421701E-003   770702.65857252502     
   1.2867632142857101E-003   778995.03053725499     
   1.2716248235294101E-003   787616.01491657097     
   1.2568384883720901E-003   796697.53370302496     
   1.2423920689655201E-003   805119.23428436404     
   1.2282739772727300E-003   813266.07535466796     
   1.2144731460674201E-003   822052.38028893596     
   1.2009790000000000E-003   829879.58996654197     
   1.1877814285714300E-003   838636.94648521906     
   1.1748707608695700E-003   847181.85174073698     
   1.1622377419354801E-003   855686.68898239499     
   1.1498735106382999E-003   864338.74876980297     
   1.1377695789473699E-003   872381.47171762201     
   1.1259178124999999E-003   880856.42242678697     
   1.1143104123711299E-003   889212.55238508701     
   1.1029398979591799E-003   897773.91668061796     
   1.0917990909090900E-003   906031.11030688300     
   1.0808810999999999E-003   913935.47658184404     
e