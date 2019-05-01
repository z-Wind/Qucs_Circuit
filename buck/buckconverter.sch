<Qucs Schematic 0.0.19>
<Properties>
  <View=-152,-80,1580,1028,0.909091,75,300>
  <Grid=10,10,1>
  <DataSet=buckconverter.dat>
  <DataDisplay=buckconverter.dpl>
  <OpenDisplay=0>
  <Script=buckconverter.m>
  <RunScript=0>
  <showFrame=0>
  <FrameText0=Title>
  <FrameText1=Drawn By:>
  <FrameText2=Date:>
  <FrameText3=Revision:>
</Properties>
<Symbol>
</Symbol>
<Components>
  <Vrect V2 1 130 290 18 -26 0 1 "1V" 1 "Ton" 1 "Toff" 1 "1 ns" 0 "1 ns" 0 "0 ns" 0>
  <GND * 1 130 360 0 0 0 0>
  <Vdc V1 1 50 190 18 -26 0 1 "12V" 1>
  <GND * 1 50 240 0 0 0 0>
  <Relais S1 1 200 170 -26 -69 0 1 "0.5 V" 0 "0.1 V" 0 "1" 0 "1e12" 0 "26.85" 0>
  <Diode D1 1 330 190 -32 -26 0 3 "1e-12 A" 0 "1" 0 "10 fF" 0 "0.5" 0 "0.7 V" 0 "0.5" 0 "0.0 fF" 0 "0.0" 0 "2.0" 0 "0.0 Ohm" 0 "0.0 ps" 0 "0" 0 "0.0" 0 "1.0" 0 "1.0" 0 "0" 0 "1 mA" 0 "26.85" 0 "3.0" 0 "1.11" 0 "0.0" 0 "0.0" 0 "0.0" 0 "0.0" 0 "0.0" 0 "0.0" 0 "26.85" 0 "1.0" 0 "normal" 0>
  <L L1 1 410 140 -26 10 0 0 "47uH" 1 "0" 1>
  <R R1 1 640 190 15 -26 0 1 "5" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "european" 0>
  <VProbe V_L 1 410 50 28 -31 0 0>
  <VProbe V_sw 1 190 50 28 -31 0 0>
  <IProbe I_L 1 490 140 -26 16 0 0>
  <IProbe I_C 1 550 170 -37 -26 0 3>
  <C C1 1 550 230 17 -26 1 3 "100u" 1 "0" 1 "neutral" 0>
  <GND * 1 640 270 0 0 0 0>
  <Eqn Eqn2 1 350 290 -35 16 0 0 "Tmax=Bperiod*50" 1 "Tstep=Bperiod/1000" 1 "yes" 0>
  <.TR TR1 1 490 300 0 63 0 0 "lin" 1 "0" 1 "Tmax" 1 "50001" 1 "Trapezoidal" 0 "2" 0 "1 ns" 0 "Tstep" 1 "150" 0 "0.001" 0 "1 pA" 0 "1 uV" 0 "26.85" 0 "1e-3" 0 "1e-6" 0 "1" 0 "CroutLU" 0 "no" 0 "yes" 0 "Tstep" 1>
  <Eqn Eqn1 1 670 370 -35 16 0 0 "Bfreq=40k" 1 "Bperiod=1/Bfreq" 1 "Bduty=50" 1 "Ton=Bperiod*Bduty/100" 1 "Toff=Bperiod-Ton" 1 "yes" 0>
  <Eqn parameters 1 710 630 -30 16 0 0 "start=Bperiod*45" 1 "p_start=start/Tstep" 1 "p_end=(start+Bperiod)/Tstep" 1 "V_SWI=integrate(V_sw.Vt[p_start:(p_start+p_end)/2],Tstep)" 1 "V_DI=integrate(V_D.Vt[(p_start+p_end)/2:p_end],Tstep)" 1 "yes" 0>
  <Eqn Continuous_Mode_Formula 1 710 790 -30 16 0 0 "V_oav=Bduty/100*V1.U-1/Bperiod*(V_SWI-V_DI)" 1 "V_oav_real=avg(V_o.Vt[p_start:p_end])" 1 "delta_I_L=integrate(V_o.Vt[(p_start+p_end)/2:p_end]-V_D.Vt[(p_start+p_end)/2:p_end],Tstep)/L1.L" 1 "V_o_ripple=delta_I_L*Bperiod/8/C1.C" 1 "yes" 0>
</Components>
<Wires>
  <330 140 380 140 "V_D" 290 90 15 "">
  <330 140 330 160 "" 0 0 0 "">
  <230 140 330 140 "" 0 0 0 "">
  <230 200 270 200 "" 0 0 0 "">
  <130 200 170 200 "" 0 0 0 "">
  <270 200 270 360 "" 0 0 0 "">
  <130 360 270 360 "" 0 0 0 "">
  <130 200 130 260 "ctrl" 80 250 36 "">
  <130 320 130 360 "" 0 0 0 "">
  <50 140 160 140 "V_i" 90 110 10 "">
  <50 140 50 160 "" 0 0 0 "">
  <50 220 50 240 "" 0 0 0 "">
  <640 140 640 160 "" 0 0 0 "">
  <180 70 180 80 "" 0 0 0 "">
  <160 80 180 80 "" 0 0 0 "">
  <160 140 170 140 "" 0 0 0 "">
  <160 80 160 140 "" 0 0 0 "">
  <200 70 200 80 "" 0 0 0 "">
  <200 80 230 80 "" 0 0 0 "">
  <230 80 230 140 "" 0 0 0 "">
  <400 70 400 80 "" 0 0 0 "">
  <380 80 400 80 "" 0 0 0 "">
  <380 80 380 140 "" 0 0 0 "">
  <420 70 420 80 "" 0 0 0 "">
  <420 80 440 80 "" 0 0 0 "">
  <440 80 440 140 "" 0 0 0 "">
  <520 140 550 140 "" 0 0 0 "">
  <440 140 460 140 "" 0 0 0 "">
  <550 140 640 140 "V_o" 620 110 52 "">
  <640 220 640 270 "" 0 0 0 "">
  <330 220 330 270 "" 0 0 0 "">
  <330 270 550 270 "" 0 0 0 "">
  <550 270 640 270 "" 0 0 0 "">
  <550 260 550 270 "" 0 0 0 "">
</Wires>
<Diagrams>
  <Rect 70 915 497 187 3 #c0c0c0 1 00 0 0.001 0.0002 0.00125 1 -0.571146 2 6.28045 0 5.09 0.01 5.15 315 0 225 "time" "" "">
	<"I_L.It" #0000ff 0 3 0 0 0>
	  <Mkr 0.0010875 -26 26 5 0 0>
	  <Mkr 0.00109975 109 27 5 0 0>
	<"V_o.Vt" #ff0000 0 3 0 0 1>
	  <Mkr 0.0011685 157 -232 5 0 0>
	  <Mkr 0.001181 291 -236 5 0 0>
	<"I_C.It" #ff00ff 0 3 0 0 0>
  </Rect>
  <Tab 680 988 422 68 3 #c0c0c0 1 00 1 0 1 1 1 0 1 1 1 0 1 1001 315 0 225 "" "" "">
	<"V_oav" #0000ff 0 5 0 0 0>
	<"V_oav_real" #0000ff 0 5 0 0 0>
	<"delta_I_L" #0000ff 0 7 1 0 0>
	<"V_o_ripple" #0000ff 0 3 1 0 0>
  </Tab>
</Diagrams>
<Paintings>
  <Text 50 -60 16 #000000 0 "Buck converter circuit.">
  <Text 50 -30 12 #000000 0 "Change duty cycle ("Bduty" in the equations) to manipulate output voltage.">
  <Text 300 420 12 #000000 0 "Points = Tmax/Tstep + 1">
  <Text 230 650 12 #000000 0 "V_{o,ripple} = 5.1462-5.0979=0.0483">
  <Text 50 990 12 #000000 0 "Δ I_L=1.7846-0.26027=1.52433">
</Paintings>
