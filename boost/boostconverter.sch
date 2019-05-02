<Qucs Schematic 0.0.19>
<Properties>
  <View=-109,-90,1604,1217,1,239,600>
  <Grid=10,10,1>
  <DataSet=boostconverter.dat>
  <DataDisplay=boostconverter.dpl>
  <OpenDisplay=0>
  <Script=boostconverter.m>
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
  <GND * 1 70 250 0 0 0 0>
  <Relais S1 1 350 200 49 -26 0 0 "0.5 V" 0 "0.1 V" 0 "1" 0 "1e12" 0 "26.85" 0>
  <GND * 1 220 370 0 0 0 0>
  <Diode D1 1 490 150 -11 17 0 2 "1e-12 A" 0 "1" 0 "10 fF" 0 "0.5" 0 "0.7 V" 0 "0.5" 0 "0.0 fF" 0 "0.0" 0 "2.0" 0 "0.0 Ohm" 0 "0.0 ps" 0 "0" 0 "0.0" 0 "1.0" 0 "1.0" 0 "0" 0 "1 mA" 0 "26.85" 0 "3.0" 0 "1.11" 0 "0.0" 0 "0.0" 0 "0.0" 0 "0.0" 0 "0.0" 0 "0.0" 0 "26.85" 0 "1.0" 0 "normal" 0>
  <R R1 1 660 200 15 -26 0 1 "5" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "european" 0>
  <GND * 1 660 280 0 0 0 0>
  <C C1 1 560 240 17 -26 1 3 "100u" 1 "0" 1 "neutral" 0>
  <IProbe I_C 1 560 180 -40 -26 0 3>
  <VProbe V_D 1 490 90 28 -31 0 0>
  <VProbe V_L 1 170 90 28 -31 0 0>
  <IProbe I_L 1 290 150 -13 -58 0 0>
  <L L1 1 170 150 -26 10 0 0 "47uH" 1 "0" 1>
  <Eqn Eqn1 1 380 370 -35 16 0 0 "Tmax=Bperiod*50" 1 "Tstep=Bperiod/1000" 1 "yes" 0>
  <.TR TR1 1 530 350 0 67 0 0 "lin" 1 "0" 1 "Tmax" 1 "50001" 1 "Trapezoidal" 0 "2" 0 "1 ns" 0 "Tstep" 1 "150" 0 "0.001" 0 "1 pA" 0 "1 uV" 0 "26.85" 0 "1e-3" 0 "1e-6" 0 "1" 0 "CroutLU" 0 "no" 0 "yes" 0 "Tstep" 1>
  <Eqn Eqn2 1 710 400 -35 16 0 0 "Bfreq=40k" 1 "Bperiod=1/Bfreq" 1 "Bduty=50" 1 "Ton=Bperiod*Bduty/100" 1 "Toff=Bperiod-Ton" 1 "yes" 0>
  <Vdc V1 1 70 200 18 -26 0 1 "12V" 1>
  <Vrect V2 1 220 300 18 -26 0 1 "1V" 1 "Ton" 1 "Toff" 1 "1 ns" 0 "1 ns" 0 "0 ns" 0>
  <Eqn Continuous_Mode_Formula1 1 660 860 -30 16 0 0 "V_oav=V1.U+1/Bperiod*(V_CI-V_DI-V_SWI)" 1 "V_oav_real=avg(V_o.Vt[p_start:p_end])" 1 "delta_I_L=-(1-Bduty/100)*Bperiod*V1.U/L1.L+integrate(V_o.Vt[(p_start+p_end)/2:p_end]+V_D.Vt[(p_start+p_end)/2:p_end],Tstep)/L1.L" 1 "yes" 0>
  <VProbe V_C 1 490 230 -31 28 1 3>
  <Eqn parameters1 1 660 660 -30 16 0 0 "start=Bperiod*45" 1 "p_start=start/Tstep" 1 "p_end=(start+Bperiod)/Tstep" 1 "V_CI=integrate(V_C.Vt[p_start:(p_start+p_end)/2],Tstep)" 1 "V_DI=integrate(V_D.Vt[(p_start+p_end)/2:p_end],Tstep)" 1 "V_SWI=integrate(V_sw.Vt[p_start:(p_start+p_end)/2],Tstep)" 1 "yes" 0>
</Components>
<Wires>
  <70 230 70 250 "" 0 0 0 "">
  <70 150 70 170 "" 0 0 0 "">
  <70 150 130 150 "" 0 0 0 "">
  <380 150 380 170 "" 0 0 0 "">
  <320 230 320 370 "" 0 0 0 "">
  <220 370 320 370 "" 0 0 0 "">
  <220 330 220 370 "" 0 0 0 "">
  <200 150 210 150 "" 0 0 0 "">
  <220 170 320 170 "" 0 0 0 "">
  <220 170 220 270 "ctrl" 170 260 76 "">
  <380 150 460 150 "V_sw" 343 110 15 "">
  <660 150 660 170 "" 0 0 0 "">
  <660 230 660 280 "" 0 0 0 "">
  <520 150 560 150 "" 0 0 0 "">
  <560 150 660 150 "V_o" 680 110 62 "">
  <380 230 380 280 "" 0 0 0 "">
  <380 280 560 280 "" 0 0 0 "">
  <560 280 660 280 "" 0 0 0 "">
  <560 270 560 280 "" 0 0 0 "">
  <160 110 160 120 "" 0 0 0 "">
  <130 120 160 120 "" 0 0 0 "">
  <130 150 140 150 "" 0 0 0 "">
  <130 120 130 150 "" 0 0 0 "">
  <180 110 180 120 "" 0 0 0 "">
  <180 120 210 120 "" 0 0 0 "">
  <210 120 210 150 "" 0 0 0 "">
  <460 110 480 110 "" 0 0 0 "">
  <460 110 460 150 "" 0 0 0 "">
  <500 110 520 110 "" 0 0 0 "">
  <520 110 520 150 "" 0 0 0 "">
  <210 150 260 150 "" 0 0 0 "">
  <320 150 380 150 "" 0 0 0 "">
  <510 210 510 220 "" 0 0 0 "">
  <510 210 560 210 "" 0 0 0 "">
  <510 240 510 270 "" 0 0 0 "">
  <510 270 560 270 "" 0 0 0 "">
  <70 150 70 150 "V_i" 60 100 0 "">
</Wires>
<Diagrams>
  <Rect 20 945 497 187 3 #c0c0c0 1 00 0 0.001 0.0002 0.00125 1 -5.96765 10 23.9211 1 -1 0.5 1 315 0 225 "time" "" "">
	<"I_L.It" #0000ff 0 3 0 0 0>
	  <Mkr 0.00108748 -26 26 5 0 0>
	  <Mkr 0.00109997 109 27 5 0 0>
	<"I_C.It" #ff00ff 0 3 0 0 0>
	<"V_o.Vt" #ff0000 0 3 0 0 0>
  </Rect>
  <Tab 630 1055 322 65 3 #c0c0c0 1 00 1 0 1 1 1 0 1 1 1 0 1 1001 315 0 225 "" "" "">
	<"V_oav" #0000ff 0 5 0 0 0>
	<"V_oav_real" #0000ff 0 5 0 0 0>
	<"delta_I_L" #0000ff 0 7 1 0 0>
  </Tab>
</Diagrams>
<Paintings>
  <Text 50 -70 16 #000000 0 "Boost converter circuit.">
  <Text 50 -30 12 #000000 0 "Change duty cycle ("Bduty" in the equations) to manipulate output voltage.">
  <Text 350 490 12 #000000 0 "Points = Tmax/Tstep + 1">
  <Text 0 1020 12 #000000 0 "Δ I_L=7.3577-5.9435=1.4142">
</Paintings>
