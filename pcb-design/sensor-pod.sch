<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="9.6.2">
<drawing>
<settings>
<setting alwaysvectorfont="no"/>
<setting verticaltext="up"/>
</settings>
<grid distance="0.1" unitdist="inch" unit="inch" style="lines" multiple="1" display="no" altdistance="0.01" altunitdist="inch" altunit="inch"/>
<layers>
<layer number="1" name="Top" color="4" fill="1" visible="no" active="no"/>
<layer number="16" name="Bottom" color="1" fill="1" visible="no" active="no"/>
<layer number="17" name="Pads" color="2" fill="1" visible="no" active="no"/>
<layer number="18" name="Vias" color="2" fill="1" visible="no" active="no"/>
<layer number="19" name="Unrouted" color="6" fill="1" visible="no" active="no"/>
<layer number="20" name="Dimension" color="15" fill="1" visible="no" active="no"/>
<layer number="21" name="tPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="22" name="bPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="23" name="tOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="24" name="bOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="25" name="tNames" color="7" fill="1" visible="no" active="no"/>
<layer number="26" name="bNames" color="7" fill="1" visible="no" active="no"/>
<layer number="27" name="tValues" color="7" fill="1" visible="no" active="no"/>
<layer number="28" name="bValues" color="7" fill="1" visible="no" active="no"/>
<layer number="29" name="tStop" color="7" fill="3" visible="no" active="no"/>
<layer number="30" name="bStop" color="7" fill="6" visible="no" active="no"/>
<layer number="31" name="tCream" color="7" fill="4" visible="no" active="no"/>
<layer number="32" name="bCream" color="7" fill="5" visible="no" active="no"/>
<layer number="33" name="tFinish" color="6" fill="3" visible="no" active="no"/>
<layer number="34" name="bFinish" color="6" fill="6" visible="no" active="no"/>
<layer number="35" name="tGlue" color="7" fill="4" visible="no" active="no"/>
<layer number="36" name="bGlue" color="7" fill="5" visible="no" active="no"/>
<layer number="37" name="tTest" color="7" fill="1" visible="no" active="no"/>
<layer number="38" name="bTest" color="7" fill="1" visible="no" active="no"/>
<layer number="39" name="tKeepout" color="4" fill="11" visible="no" active="no"/>
<layer number="40" name="bKeepout" color="1" fill="11" visible="no" active="no"/>
<layer number="41" name="tRestrict" color="4" fill="10" visible="no" active="no"/>
<layer number="42" name="bRestrict" color="1" fill="10" visible="no" active="no"/>
<layer number="43" name="vRestrict" color="2" fill="10" visible="no" active="no"/>
<layer number="44" name="Drills" color="7" fill="1" visible="no" active="no"/>
<layer number="45" name="Holes" color="7" fill="1" visible="no" active="no"/>
<layer number="46" name="Milling" color="3" fill="1" visible="no" active="no"/>
<layer number="47" name="Measures" color="7" fill="1" visible="no" active="no"/>
<layer number="48" name="Document" color="7" fill="1" visible="no" active="no"/>
<layer number="49" name="Reference" color="7" fill="1" visible="no" active="no"/>
<layer number="51" name="tDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="52" name="bDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="88" name="SimResults" color="9" fill="1" visible="yes" active="yes"/>
<layer number="89" name="SimProbes" color="9" fill="1" visible="yes" active="yes"/>
<layer number="90" name="Modules" color="5" fill="1" visible="yes" active="yes"/>
<layer number="91" name="Nets" color="2" fill="1" visible="yes" active="yes"/>
<layer number="92" name="Busses" color="1" fill="1" visible="yes" active="yes"/>
<layer number="93" name="Pins" color="2" fill="1" visible="no" active="yes"/>
<layer number="94" name="Symbols" color="4" fill="1" visible="yes" active="yes"/>
<layer number="95" name="Names" color="7" fill="1" visible="yes" active="yes"/>
<layer number="96" name="Values" color="7" fill="1" visible="yes" active="yes"/>
<layer number="97" name="Info" color="7" fill="1" visible="yes" active="yes"/>
<layer number="98" name="Guide" color="6" fill="1" visible="yes" active="yes"/>
</layers>
<schematic xreflabel="%F%N/%S.%C%R" xrefpart="/%S.%C%R">
<libraries>
<library name="con-molex" urn="urn:adsk.eagle:library:165">
<description>&lt;b&gt;Molex Connectors&lt;/b&gt;&lt;p&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="22-23-2031" urn="urn:adsk.eagle:footprint:8078260/1" library_version="5">
<description>&lt;b&gt;KK® 254 Solid Header, Vertical, with Friction Lock, 3 Circuits, Tin (Sn) Plating&lt;/b&gt;&lt;p&gt;&lt;a href =http://www.molex.com/pdm_docs/sd/022232031_sd.pdf&gt;Datasheet &lt;/a&gt;</description>
<wire x1="-3.81" y1="3.175" x2="3.81" y2="3.175" width="0.254" layer="21"/>
<wire x1="3.81" y1="3.175" x2="3.81" y2="1.27" width="0.254" layer="21"/>
<wire x1="3.81" y1="1.27" x2="3.81" y2="-3.175" width="0.254" layer="21"/>
<wire x1="3.81" y1="-3.175" x2="-3.81" y2="-3.175" width="0.254" layer="21"/>
<wire x1="-3.81" y1="-3.175" x2="-3.81" y2="1.27" width="0.254" layer="21"/>
<wire x1="-3.81" y1="1.27" x2="-3.81" y2="3.175" width="0.254" layer="21"/>
<wire x1="-3.81" y1="1.27" x2="3.81" y2="1.27" width="0.254" layer="21"/>
<pad name="1" x="-2.54" y="0" drill="1" shape="long" rot="R90"/>
<pad name="2" x="0" y="0" drill="1" shape="long" rot="R90"/>
<pad name="3" x="2.54" y="0" drill="1" shape="long" rot="R90"/>
<text x="-3.81" y="3.81" size="1.016" layer="25" ratio="10">&gt;NAME</text>
<text x="-3.81" y="-5.08" size="1.016" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="22-23-2041" urn="urn:adsk.eagle:footprint:8078261/1" library_version="5">
<description>&lt;b&gt;KK® 254 Solid Header, Vertical, with Friction Lock, 4 Circuits, Tin (Sn) Plating&lt;/b&gt;&lt;p&gt;&lt;a href =http://www.molex.com/pdm_docs/sd/022232041_sd.pdf&gt;Datasheet &lt;/a&gt;</description>
<wire x1="-5.08" y1="3.175" x2="5.08" y2="3.175" width="0.254" layer="21"/>
<wire x1="5.08" y1="3.175" x2="5.08" y2="1.27" width="0.254" layer="21"/>
<wire x1="5.08" y1="1.27" x2="5.08" y2="-3.175" width="0.254" layer="21"/>
<wire x1="5.08" y1="-3.175" x2="-5.08" y2="-3.175" width="0.254" layer="21"/>
<wire x1="-5.08" y1="-3.175" x2="-5.08" y2="1.27" width="0.254" layer="21"/>
<wire x1="-5.08" y1="1.27" x2="-5.08" y2="3.175" width="0.254" layer="21"/>
<wire x1="-5.08" y1="1.27" x2="5.08" y2="1.27" width="0.254" layer="21"/>
<pad name="1" x="-3.81" y="0" drill="1" shape="long" rot="R90"/>
<pad name="2" x="-1.27" y="0" drill="1" shape="long" rot="R90"/>
<pad name="3" x="1.27" y="0" drill="1" shape="long" rot="R90"/>
<pad name="4" x="3.81" y="0" drill="1" shape="long" rot="R90"/>
<text x="-5.08" y="3.81" size="1.016" layer="25" ratio="10">&gt;NAME</text>
<text x="-5.08" y="-5.08" size="1.016" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="22-23-2021" urn="urn:adsk.eagle:footprint:8078259/1" library_version="5">
<description>&lt;b&gt;KK® 254 Solid Header, Vertical, with Friction Lock, 2 Circuits, Tin (Sn) Plating&lt;/b&gt;&lt;p&gt;&lt;a href =http://www.molex.com/pdm_docs/sd/022232021_sd.pdf&gt;Datasheet &lt;/a&gt;</description>
<wire x1="-2.54" y1="3.175" x2="2.54" y2="3.175" width="0.254" layer="21"/>
<wire x1="2.54" y1="3.175" x2="2.54" y2="1.27" width="0.254" layer="21"/>
<wire x1="2.54" y1="1.27" x2="2.54" y2="-3.175" width="0.254" layer="21"/>
<wire x1="2.54" y1="-3.175" x2="-2.54" y2="-3.175" width="0.254" layer="21"/>
<wire x1="-2.54" y1="-3.175" x2="-2.54" y2="1.27" width="0.254" layer="21"/>
<wire x1="-2.54" y1="1.27" x2="-2.54" y2="3.175" width="0.254" layer="21"/>
<wire x1="-2.54" y1="1.27" x2="2.54" y2="1.27" width="0.254" layer="21"/>
<pad name="1" x="-1.27" y="0" drill="1" shape="long" rot="R90"/>
<pad name="2" x="1.27" y="0" drill="1" shape="long" rot="R90"/>
<text x="-2.54" y="3.81" size="1.016" layer="25" ratio="10">&gt;NAME</text>
<text x="-2.54" y="-5.08" size="1.016" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="22-23-2111" urn="urn:adsk.eagle:footprint:8078268/1" library_version="5">
<description>&lt;b&gt;KK® 254 Solid Header, Vertical, with Friction Lock, 11 Circuits, Tin (Sn) Plating&lt;/b&gt;&lt;p&gt;&lt;a href =http://www.molex.com/pdm_docs/sd/022232111_sd.pdf&gt;Datasheet &lt;/a&gt;</description>
<wire x1="-13.97" y1="3.175" x2="13.97" y2="3.175" width="0.254" layer="21"/>
<wire x1="13.97" y1="3.175" x2="13.97" y2="1.27" width="0.254" layer="21"/>
<wire x1="13.97" y1="1.27" x2="13.97" y2="-3.175" width="0.254" layer="21"/>
<wire x1="13.97" y1="-3.175" x2="-13.97" y2="-3.175" width="0.254" layer="21"/>
<wire x1="-13.97" y1="-3.175" x2="-13.97" y2="1.27" width="0.254" layer="21"/>
<wire x1="-13.97" y1="1.27" x2="-13.97" y2="3.175" width="0.254" layer="21"/>
<wire x1="-13.97" y1="1.27" x2="13.97" y2="1.27" width="0.254" layer="21"/>
<pad name="1" x="-12.7" y="0" drill="1" shape="long" rot="R90"/>
<pad name="2" x="-10.16" y="0" drill="1" shape="long" rot="R90"/>
<pad name="3" x="-7.62" y="0" drill="1" shape="long" rot="R90"/>
<pad name="4" x="-5.08" y="0" drill="1" shape="long" rot="R90"/>
<pad name="5" x="-2.54" y="0" drill="1" shape="long" rot="R90"/>
<pad name="6" x="0" y="0" drill="1" shape="long" rot="R90"/>
<pad name="7" x="2.54" y="0" drill="1" shape="long" rot="R90"/>
<pad name="8" x="5.08" y="0" drill="1" shape="long" rot="R90"/>
<pad name="9" x="7.62" y="0" drill="1" shape="long" rot="R90"/>
<pad name="10" x="10.16" y="0" drill="1" shape="long" rot="R90"/>
<pad name="11" x="12.7" y="0" drill="1" shape="long" rot="R90"/>
<text x="-13.97" y="3.81" size="1.016" layer="25" ratio="10">&gt;NAME</text>
<text x="-13.97" y="-5.08" size="1.016" layer="27" ratio="10">&gt;VALUE</text>
</package>
</packages>
<packages3d>
<package3d name="22-23-2031" urn="urn:adsk.eagle:package:8078634/1" type="box" library_version="5">
<description>&lt;b&gt;KK® 254 Solid Header, Vertical, with Friction Lock, 3 Circuits, Tin (Sn) Plating&lt;/b&gt;&lt;p&gt;&lt;a href =http://www.molex.com/pdm_docs/sd/022232031_sd.pdf&gt;Datasheet &lt;/a&gt;</description>
<packageinstances>
<packageinstance name="22-23-2031"/>
</packageinstances>
</package3d>
<package3d name="22-23-2041" urn="urn:adsk.eagle:package:8078635/1" type="box" library_version="5">
<description>&lt;b&gt;KK® 254 Solid Header, Vertical, with Friction Lock, 4 Circuits, Tin (Sn) Plating&lt;/b&gt;&lt;p&gt;&lt;a href =http://www.molex.com/pdm_docs/sd/022232041_sd.pdf&gt;Datasheet &lt;/a&gt;</description>
<packageinstances>
<packageinstance name="22-23-2041"/>
</packageinstances>
</package3d>
<package3d name="22-23-2021" urn="urn:adsk.eagle:package:8078633/1" type="box" library_version="5">
<description>&lt;b&gt;KK® 254 Solid Header, Vertical, with Friction Lock, 2 Circuits, Tin (Sn) Plating&lt;/b&gt;&lt;p&gt;&lt;a href =http://www.molex.com/pdm_docs/sd/022232021_sd.pdf&gt;Datasheet &lt;/a&gt;</description>
<packageinstances>
<packageinstance name="22-23-2021"/>
</packageinstances>
</package3d>
<package3d name="22-23-2111" urn="urn:adsk.eagle:package:8078642/1" type="box" library_version="5">
<description>&lt;b&gt;KK® 254 Solid Header, Vertical, with Friction Lock, 11 Circuits, Tin (Sn) Plating&lt;/b&gt;&lt;p&gt;&lt;a href =http://www.molex.com/pdm_docs/sd/022232111_sd.pdf&gt;Datasheet &lt;/a&gt;</description>
<packageinstances>
<packageinstance name="22-23-2111"/>
</packageinstances>
</package3d>
</packages3d>
<symbols>
<symbol name="MV" urn="urn:adsk.eagle:symbol:6783/2" library_version="5">
<wire x1="1.27" y1="0" x2="0" y2="0" width="0.6096" layer="94"/>
<text x="2.54" y="-0.762" size="1.524" layer="95">&gt;NAME</text>
<text x="-0.762" y="1.397" size="1.778" layer="96">&gt;VALUE</text>
<pin name="S" x="-2.54" y="0" visible="off" length="short" direction="pas"/>
</symbol>
<symbol name="M" urn="urn:adsk.eagle:symbol:6785/2" library_version="5">
<wire x1="1.27" y1="0" x2="0" y2="0" width="0.6096" layer="94"/>
<text x="2.54" y="-0.762" size="1.524" layer="95">&gt;NAME</text>
<pin name="S" x="-2.54" y="0" visible="off" length="short" direction="pas"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="22-23-2031" urn="urn:adsk.eagle:component:8078937/3" prefix="X" library_version="5">
<description>.100" (2.54mm) Center Header - 3 Pin</description>
<gates>
<gate name="-1" symbol="MV" x="0" y="2.54" addlevel="always" swaplevel="1"/>
<gate name="-2" symbol="M" x="0" y="0" addlevel="always" swaplevel="1"/>
<gate name="-3" symbol="M" x="0" y="-2.54" addlevel="always" swaplevel="1"/>
</gates>
<devices>
<device name="" package="22-23-2031">
<connects>
<connect gate="-1" pin="S" pad="1"/>
<connect gate="-2" pin="S" pad="2"/>
<connect gate="-3" pin="S" pad="3"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:8078634/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="MF" value="MOLEX" constant="no"/>
<attribute name="MPN" value="22-23-2031" constant="no"/>
<attribute name="OC_FARNELL" value="1462950" constant="no"/>
<attribute name="OC_NEWARK" value="30C0862" constant="no"/>
<attribute name="POPULARITY" value="35" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="22-23-2041" urn="urn:adsk.eagle:component:8078936/3" prefix="X" library_version="5">
<description>.100" (2.54mm) Center Header - 4 Pin</description>
<gates>
<gate name="-1" symbol="MV" x="0" y="2.54" addlevel="always" swaplevel="1"/>
<gate name="-2" symbol="M" x="0" y="0" addlevel="always" swaplevel="1"/>
<gate name="-3" symbol="M" x="0" y="-2.54" addlevel="always" swaplevel="1"/>
<gate name="-4" symbol="M" x="0" y="-5.08" addlevel="always" swaplevel="1"/>
</gates>
<devices>
<device name="" package="22-23-2041">
<connects>
<connect gate="-1" pin="S" pad="1"/>
<connect gate="-2" pin="S" pad="2"/>
<connect gate="-3" pin="S" pad="3"/>
<connect gate="-4" pin="S" pad="4"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:8078635/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="MF" value="MOLEX" constant="no"/>
<attribute name="MPN" value="22-23-2041" constant="no"/>
<attribute name="OC_FARNELL" value="1462920" constant="no"/>
<attribute name="OC_NEWARK" value="38C0355" constant="no"/>
<attribute name="POPULARITY" value="21" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="22-23-2021" urn="urn:adsk.eagle:component:8078938/3" prefix="X" library_version="5">
<description>.100" (2.54mm) Center Header - 2 Pin</description>
<gates>
<gate name="-1" symbol="MV" x="0" y="0" addlevel="always" swaplevel="1"/>
<gate name="-2" symbol="M" x="0" y="-2.54" addlevel="always" swaplevel="1"/>
</gates>
<devices>
<device name="" package="22-23-2021">
<connects>
<connect gate="-1" pin="S" pad="1"/>
<connect gate="-2" pin="S" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:8078633/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="MF" value="MOLEX" constant="no"/>
<attribute name="MPN" value="22-23-2021" constant="no"/>
<attribute name="OC_FARNELL" value="1462926" constant="no"/>
<attribute name="OC_NEWARK" value="25C3832" constant="no"/>
<attribute name="POPULARITY" value="40" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="22-23-2111" urn="urn:adsk.eagle:component:8078967/3" prefix="X" library_version="5">
<description>.100" (2.54mm) Center Header - 11 Pin</description>
<gates>
<gate name="-1" symbol="MV" x="0" y="12.7" addlevel="always" swaplevel="1"/>
<gate name="-2" symbol="M" x="0" y="10.16" addlevel="always" swaplevel="1"/>
<gate name="-3" symbol="M" x="0" y="7.62" addlevel="always" swaplevel="1"/>
<gate name="-4" symbol="M" x="0" y="5.08" addlevel="always" swaplevel="1"/>
<gate name="-5" symbol="M" x="0" y="2.54" addlevel="always" swaplevel="1"/>
<gate name="-6" symbol="M" x="0" y="0" addlevel="always" swaplevel="1"/>
<gate name="-7" symbol="M" x="0" y="-2.54" addlevel="always" swaplevel="1"/>
<gate name="-8" symbol="M" x="0" y="-5.08" addlevel="always" swaplevel="1"/>
<gate name="-9" symbol="M" x="0" y="-7.62" addlevel="always" swaplevel="1"/>
<gate name="-10" symbol="M" x="0" y="-10.16" addlevel="always" swaplevel="1"/>
<gate name="-11" symbol="M" x="0" y="-12.7" addlevel="always" swaplevel="1"/>
</gates>
<devices>
<device name="" package="22-23-2111">
<connects>
<connect gate="-1" pin="S" pad="1"/>
<connect gate="-10" pin="S" pad="10"/>
<connect gate="-11" pin="S" pad="11"/>
<connect gate="-2" pin="S" pad="2"/>
<connect gate="-3" pin="S" pad="3"/>
<connect gate="-4" pin="S" pad="4"/>
<connect gate="-5" pin="S" pad="5"/>
<connect gate="-6" pin="S" pad="6"/>
<connect gate="-7" pin="S" pad="7"/>
<connect gate="-8" pin="S" pad="8"/>
<connect gate="-9" pin="S" pad="9"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:8078642/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="MF" value="MOLEX" constant="no"/>
<attribute name="MPN" value="22-23-2111" constant="no"/>
<attribute name="OC_FARNELL" value="5388879" constant="no"/>
<attribute name="OC_NEWARK" value="27C9916" constant="no"/>
<attribute name="POPULARITY" value="0" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
</libraries>
<attributes>
</attributes>
<variantdefs>
</variantdefs>
<classes>
<class number="0" name="default" width="0" drill="0">
</class>
</classes>
<parts>
<part name="X1" library="con-molex" library_urn="urn:adsk.eagle:library:165" deviceset="22-23-2031" device="" package3d_urn="urn:adsk.eagle:package:8078634/1" value="PH_SENSOR"/>
<part name="X3" library="con-molex" library_urn="urn:adsk.eagle:library:165" deviceset="22-23-2031" device="" package3d_urn="urn:adsk.eagle:package:8078634/1" value="TURBIDITY"/>
<part name="X5" library="con-molex" library_urn="urn:adsk.eagle:library:165" deviceset="22-23-2031" device="" package3d_urn="urn:adsk.eagle:package:8078634/1" value="TEMPERATURE"/>
<part name="X6" library="con-molex" library_urn="urn:adsk.eagle:library:165" deviceset="22-23-2031" device="" package3d_urn="urn:adsk.eagle:package:8078634/1" value="MOTOR_1"/>
<part name="X7" library="con-molex" library_urn="urn:adsk.eagle:library:165" deviceset="22-23-2031" device="" package3d_urn="urn:adsk.eagle:package:8078634/1" value="MOTOR_2"/>
<part name="X8" library="con-molex" library_urn="urn:adsk.eagle:library:165" deviceset="22-23-2041" device="" package3d_urn="urn:adsk.eagle:package:8078635/1" value="I2C_1"/>
<part name="X9" library="con-molex" library_urn="urn:adsk.eagle:library:165" deviceset="22-23-2041" device="" package3d_urn="urn:adsk.eagle:package:8078635/1" value="I2C_2"/>
<part name="X10" library="con-molex" library_urn="urn:adsk.eagle:library:165" deviceset="22-23-2041" device="" package3d_urn="urn:adsk.eagle:package:8078635/1" value="I2C_3"/>
<part name="X2" library="con-molex" library_urn="urn:adsk.eagle:library:165" deviceset="22-23-2021" device="" package3d_urn="urn:adsk.eagle:package:8078633/1" value="5V"/>
<part name="X11" library="con-molex" library_urn="urn:adsk.eagle:library:165" deviceset="22-23-2021" device="" package3d_urn="urn:adsk.eagle:package:8078633/1" value="3.3V"/>
<part name="X4" library="con-molex" library_urn="urn:adsk.eagle:library:165" deviceset="22-23-2021" device="" package3d_urn="urn:adsk.eagle:package:8078633/1" value="5V"/>
<part name="X12" library="con-molex" library_urn="urn:adsk.eagle:library:165" deviceset="22-23-2021" device="" package3d_urn="urn:adsk.eagle:package:8078633/1" value="3.3V"/>
<part name="X15" library="con-molex" library_urn="urn:adsk.eagle:library:165" deviceset="22-23-2111" device="" package3d_urn="urn:adsk.eagle:package:8078642/1" value="MB-LEFT"/>
<part name="X16" library="con-molex" library_urn="urn:adsk.eagle:library:165" deviceset="22-23-2111" device="" package3d_urn="urn:adsk.eagle:package:8078642/1" value="MB-RIGHT"/>
</parts>
<sheets>
<sheet>
<plain>
</plain>
<instances>
<instance part="X1" gate="-1" x="121.92" y="60.96" smashed="yes">
<attribute name="NAME" x="124.46" y="60.198" size="1.524" layer="95"/>
<attribute name="VALUE" x="121.158" y="62.357" size="1.778" layer="96"/>
</instance>
<instance part="X1" gate="-2" x="121.92" y="58.42" smashed="yes">
<attribute name="NAME" x="124.46" y="57.658" size="1.524" layer="95"/>
</instance>
<instance part="X1" gate="-3" x="121.92" y="55.88" smashed="yes">
<attribute name="NAME" x="124.46" y="55.118" size="1.524" layer="95"/>
</instance>
<instance part="X3" gate="-1" x="121.92" y="27.94" smashed="yes">
<attribute name="NAME" x="124.46" y="27.178" size="1.524" layer="95"/>
<attribute name="VALUE" x="121.158" y="29.337" size="1.778" layer="96"/>
</instance>
<instance part="X3" gate="-2" x="121.92" y="25.4" smashed="yes">
<attribute name="NAME" x="124.46" y="24.638" size="1.524" layer="95"/>
</instance>
<instance part="X3" gate="-3" x="121.92" y="22.86" smashed="yes">
<attribute name="NAME" x="124.46" y="22.098" size="1.524" layer="95"/>
</instance>
<instance part="X5" gate="-1" x="121.92" y="45.72" smashed="yes">
<attribute name="NAME" x="124.46" y="44.958" size="1.524" layer="95"/>
<attribute name="VALUE" x="121.158" y="47.117" size="1.778" layer="96"/>
</instance>
<instance part="X5" gate="-2" x="121.92" y="43.18" smashed="yes">
<attribute name="NAME" x="124.46" y="42.418" size="1.524" layer="95"/>
</instance>
<instance part="X5" gate="-3" x="121.92" y="40.64" smashed="yes">
<attribute name="NAME" x="124.46" y="39.878" size="1.524" layer="95"/>
</instance>
<instance part="X6" gate="-1" x="121.92" y="5.08" smashed="yes">
<attribute name="NAME" x="124.46" y="4.318" size="1.524" layer="95"/>
<attribute name="VALUE" x="121.158" y="6.477" size="1.778" layer="96"/>
</instance>
<instance part="X6" gate="-2" x="121.92" y="2.54" smashed="yes">
<attribute name="NAME" x="124.46" y="1.778" size="1.524" layer="95"/>
</instance>
<instance part="X6" gate="-3" x="121.92" y="0" smashed="yes">
<attribute name="NAME" x="124.46" y="-0.762" size="1.524" layer="95"/>
</instance>
<instance part="X7" gate="-1" x="121.92" y="-12.7" smashed="yes">
<attribute name="NAME" x="124.46" y="-13.462" size="1.524" layer="95"/>
<attribute name="VALUE" x="121.158" y="-11.303" size="1.778" layer="96"/>
</instance>
<instance part="X7" gate="-2" x="121.92" y="-15.24" smashed="yes">
<attribute name="NAME" x="124.46" y="-16.002" size="1.524" layer="95"/>
</instance>
<instance part="X7" gate="-3" x="121.92" y="-17.78" smashed="yes">
<attribute name="NAME" x="124.46" y="-18.542" size="1.524" layer="95"/>
</instance>
<instance part="X8" gate="-1" x="177.8" y="40.64" smashed="yes">
<attribute name="NAME" x="180.34" y="39.878" size="1.524" layer="95"/>
<attribute name="VALUE" x="177.038" y="42.037" size="1.778" layer="96"/>
</instance>
<instance part="X8" gate="-2" x="177.8" y="38.1" smashed="yes">
<attribute name="NAME" x="180.34" y="37.338" size="1.524" layer="95"/>
</instance>
<instance part="X8" gate="-3" x="177.8" y="35.56" smashed="yes">
<attribute name="NAME" x="180.34" y="34.798" size="1.524" layer="95"/>
</instance>
<instance part="X8" gate="-4" x="177.8" y="33.02" smashed="yes">
<attribute name="NAME" x="180.34" y="32.258" size="1.524" layer="95"/>
</instance>
<instance part="X9" gate="-1" x="177.8" y="25.4" smashed="yes">
<attribute name="NAME" x="180.34" y="24.638" size="1.524" layer="95"/>
<attribute name="VALUE" x="177.038" y="26.797" size="1.778" layer="96"/>
</instance>
<instance part="X9" gate="-2" x="177.8" y="22.86" smashed="yes">
<attribute name="NAME" x="180.34" y="22.098" size="1.524" layer="95"/>
</instance>
<instance part="X9" gate="-3" x="177.8" y="20.32" smashed="yes">
<attribute name="NAME" x="180.34" y="19.558" size="1.524" layer="95"/>
</instance>
<instance part="X9" gate="-4" x="177.8" y="17.78" smashed="yes">
<attribute name="NAME" x="180.34" y="17.018" size="1.524" layer="95"/>
</instance>
<instance part="X10" gate="-1" x="177.8" y="10.16" smashed="yes">
<attribute name="NAME" x="180.34" y="9.398" size="1.524" layer="95"/>
<attribute name="VALUE" x="177.038" y="11.557" size="1.778" layer="96"/>
</instance>
<instance part="X10" gate="-2" x="177.8" y="7.62" smashed="yes">
<attribute name="NAME" x="180.34" y="6.858" size="1.524" layer="95"/>
</instance>
<instance part="X10" gate="-3" x="177.8" y="5.08" smashed="yes">
<attribute name="NAME" x="180.34" y="4.318" size="1.524" layer="95"/>
</instance>
<instance part="X10" gate="-4" x="177.8" y="2.54" smashed="yes">
<attribute name="NAME" x="180.34" y="1.778" size="1.524" layer="95"/>
</instance>
<instance part="X2" gate="-1" x="25.4" y="7.62" smashed="yes">
<attribute name="NAME" x="27.94" y="6.858" size="1.524" layer="95"/>
<attribute name="VALUE" x="24.638" y="9.017" size="1.778" layer="96"/>
</instance>
<instance part="X2" gate="-2" x="25.4" y="5.08" smashed="yes">
<attribute name="NAME" x="27.94" y="4.318" size="1.524" layer="95"/>
</instance>
<instance part="X11" gate="-1" x="25.4" y="-2.54" smashed="yes">
<attribute name="NAME" x="27.94" y="-3.302" size="1.524" layer="95"/>
<attribute name="VALUE" x="24.638" y="-1.143" size="1.778" layer="96"/>
</instance>
<instance part="X11" gate="-2" x="25.4" y="-5.08" smashed="yes">
<attribute name="NAME" x="27.94" y="-5.842" size="1.524" layer="95"/>
</instance>
<instance part="X4" gate="-1" x="58.42" y="7.62" smashed="yes">
<attribute name="NAME" x="60.96" y="6.858" size="1.524" layer="95"/>
<attribute name="VALUE" x="57.658" y="9.017" size="1.778" layer="96"/>
</instance>
<instance part="X4" gate="-2" x="58.42" y="5.08" smashed="yes">
<attribute name="NAME" x="60.96" y="4.318" size="1.524" layer="95"/>
</instance>
<instance part="X12" gate="-1" x="58.42" y="-2.54" smashed="yes">
<attribute name="NAME" x="60.96" y="-3.302" size="1.524" layer="95"/>
<attribute name="VALUE" x="57.658" y="-1.143" size="1.778" layer="96"/>
</instance>
<instance part="X12" gate="-2" x="58.42" y="-5.08" smashed="yes">
<attribute name="NAME" x="60.96" y="-5.842" size="1.524" layer="95"/>
</instance>
<instance part="X15" gate="-1" x="20.32" y="55.88" smashed="yes">
<attribute name="NAME" x="22.86" y="55.118" size="1.524" layer="95"/>
<attribute name="VALUE" x="19.558" y="57.277" size="1.778" layer="96"/>
</instance>
<instance part="X15" gate="-2" x="20.32" y="53.34" smashed="yes">
<attribute name="NAME" x="22.86" y="52.578" size="1.524" layer="95"/>
</instance>
<instance part="X15" gate="-3" x="20.32" y="50.8" smashed="yes">
<attribute name="NAME" x="22.86" y="50.038" size="1.524" layer="95"/>
</instance>
<instance part="X15" gate="-4" x="20.32" y="48.26" smashed="yes">
<attribute name="NAME" x="22.86" y="47.498" size="1.524" layer="95"/>
</instance>
<instance part="X15" gate="-5" x="20.32" y="45.72" smashed="yes">
<attribute name="NAME" x="22.86" y="44.958" size="1.524" layer="95"/>
</instance>
<instance part="X15" gate="-6" x="20.32" y="43.18" smashed="yes">
<attribute name="NAME" x="22.86" y="42.418" size="1.524" layer="95"/>
</instance>
<instance part="X15" gate="-7" x="20.32" y="40.64" smashed="yes">
<attribute name="NAME" x="22.86" y="39.878" size="1.524" layer="95"/>
</instance>
<instance part="X15" gate="-8" x="20.32" y="38.1" smashed="yes">
<attribute name="NAME" x="22.86" y="37.338" size="1.524" layer="95"/>
</instance>
<instance part="X15" gate="-9" x="20.32" y="35.56" smashed="yes">
<attribute name="NAME" x="22.86" y="34.798" size="1.524" layer="95"/>
</instance>
<instance part="X15" gate="-10" x="20.32" y="33.02" smashed="yes">
<attribute name="NAME" x="22.86" y="32.258" size="1.524" layer="95"/>
</instance>
<instance part="X15" gate="-11" x="20.32" y="30.48" smashed="yes">
<attribute name="NAME" x="22.86" y="29.718" size="1.524" layer="95"/>
</instance>
<instance part="X16" gate="-1" x="63.5" y="55.88" smashed="yes">
<attribute name="NAME" x="66.04" y="55.118" size="1.524" layer="95"/>
<attribute name="VALUE" x="62.738" y="57.277" size="1.778" layer="96"/>
</instance>
<instance part="X16" gate="-2" x="63.5" y="53.34" smashed="yes">
<attribute name="NAME" x="66.04" y="52.578" size="1.524" layer="95"/>
</instance>
<instance part="X16" gate="-3" x="63.5" y="50.8" smashed="yes">
<attribute name="NAME" x="66.04" y="50.038" size="1.524" layer="95"/>
</instance>
<instance part="X16" gate="-4" x="63.5" y="48.26" smashed="yes">
<attribute name="NAME" x="66.04" y="47.498" size="1.524" layer="95"/>
</instance>
<instance part="X16" gate="-5" x="63.5" y="45.72" smashed="yes">
<attribute name="NAME" x="66.04" y="44.958" size="1.524" layer="95"/>
</instance>
<instance part="X16" gate="-6" x="63.5" y="43.18" smashed="yes">
<attribute name="NAME" x="66.04" y="42.418" size="1.524" layer="95"/>
</instance>
<instance part="X16" gate="-7" x="63.5" y="40.64" smashed="yes">
<attribute name="NAME" x="66.04" y="39.878" size="1.524" layer="95"/>
</instance>
<instance part="X16" gate="-8" x="63.5" y="38.1" smashed="yes">
<attribute name="NAME" x="66.04" y="37.338" size="1.524" layer="95"/>
</instance>
<instance part="X16" gate="-9" x="63.5" y="35.56" smashed="yes">
<attribute name="NAME" x="66.04" y="34.798" size="1.524" layer="95"/>
</instance>
<instance part="X16" gate="-10" x="63.5" y="33.02" smashed="yes">
<attribute name="NAME" x="66.04" y="32.258" size="1.524" layer="95"/>
</instance>
<instance part="X16" gate="-11" x="63.5" y="30.48" smashed="yes">
<attribute name="NAME" x="66.04" y="29.718" size="1.524" layer="95"/>
</instance>
</instances>
<busses>
</busses>
<nets>
<net name="N$3" class="0">
<segment>
<pinref part="X1" gate="-3" pin="S"/>
<wire x1="119.38" y1="55.88" x2="114.3" y2="55.88" width="0.1524" layer="91"/>
<label x="114.3" y="55.88" size="1.778" layer="95"/>
</segment>
</net>
<net name="N$6" class="0">
<segment>
<pinref part="X5" gate="-3" pin="S"/>
<wire x1="119.38" y1="40.64" x2="114.3" y2="40.64" width="0.1524" layer="91"/>
<label x="114.3" y="40.64" size="1.778" layer="95"/>
</segment>
</net>
<net name="N$9" class="0">
<segment>
<pinref part="X3" gate="-3" pin="S"/>
<wire x1="119.38" y1="22.86" x2="114.3" y2="22.86" width="0.1524" layer="91"/>
<label x="114.3" y="22.86" size="1.778" layer="95"/>
</segment>
</net>
<net name="N$12" class="0">
<segment>
<pinref part="X6" gate="-3" pin="S"/>
<wire x1="119.38" y1="0" x2="114.3" y2="0" width="0.1524" layer="91"/>
<label x="114.3" y="0" size="1.778" layer="95"/>
</segment>
</net>
<net name="N$15" class="0">
<segment>
<pinref part="X7" gate="-3" pin="S"/>
<wire x1="119.38" y1="-17.78" x2="114.3" y2="-17.78" width="0.1524" layer="91"/>
<label x="114.3" y="-17.78" size="1.778" layer="95"/>
</segment>
</net>
<net name="SCL" class="0">
<segment>
<pinref part="X8" gate="-3" pin="S"/>
<wire x1="175.26" y1="35.56" x2="170.18" y2="35.56" width="0.1524" layer="91"/>
<label x="170.18" y="35.56" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="X9" gate="-3" pin="S"/>
<wire x1="175.26" y1="20.32" x2="170.18" y2="20.32" width="0.1524" layer="91"/>
<label x="170.18" y="20.32" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="X10" gate="-3" pin="S"/>
<wire x1="175.26" y1="5.08" x2="170.18" y2="5.08" width="0.1524" layer="91"/>
<label x="170.18" y="5.08" size="1.778" layer="95"/>
</segment>
</net>
<net name="SDA" class="0">
<segment>
<pinref part="X8" gate="-4" pin="S"/>
<wire x1="175.26" y1="33.02" x2="170.18" y2="33.02" width="0.1524" layer="91"/>
<label x="170.18" y="33.02" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="X9" gate="-4" pin="S"/>
<wire x1="175.26" y1="17.78" x2="170.18" y2="17.78" width="0.1524" layer="91"/>
<label x="170.18" y="17.78" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="X10" gate="-4" pin="S"/>
<wire x1="175.26" y1="2.54" x2="170.18" y2="2.54" width="0.1524" layer="91"/>
<label x="170.18" y="2.54" size="1.778" layer="95"/>
</segment>
</net>
<net name="5V" class="0">
<segment>
<pinref part="X2" gate="-1" pin="S"/>
<wire x1="22.86" y1="7.62" x2="17.78" y2="7.62" width="0.1524" layer="91"/>
<label x="17.78" y="7.62" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="X4" gate="-1" pin="S"/>
<wire x1="55.88" y1="7.62" x2="50.8" y2="7.62" width="0.1524" layer="91"/>
<label x="50.8" y="7.62" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="X10" gate="-1" pin="S"/>
<wire x1="175.26" y1="10.16" x2="170.18" y2="10.16" width="0.1524" layer="91"/>
<label x="170.18" y="10.16" size="1.778" layer="95"/>
</segment>
</net>
<net name="GND" class="0">
<segment>
<pinref part="X2" gate="-2" pin="S"/>
<wire x1="22.86" y1="5.08" x2="17.78" y2="5.08" width="0.1524" layer="91"/>
<label x="17.78" y="5.08" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="X11" gate="-2" pin="S"/>
<wire x1="22.86" y1="-5.08" x2="17.78" y2="-5.08" width="0.1524" layer="91"/>
<label x="17.78" y="-5.08" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="X4" gate="-2" pin="S"/>
<wire x1="55.88" y1="5.08" x2="50.8" y2="5.08" width="0.1524" layer="91"/>
<label x="50.8" y="5.08" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="X12" gate="-2" pin="S"/>
<wire x1="55.88" y1="-5.08" x2="50.8" y2="-5.08" width="0.1524" layer="91"/>
<label x="50.8" y="-5.08" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="X8" gate="-2" pin="S"/>
<wire x1="175.26" y1="38.1" x2="170.18" y2="38.1" width="0.1524" layer="91"/>
<label x="170.18" y="38.1" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="X9" gate="-2" pin="S"/>
<wire x1="175.26" y1="22.86" x2="170.18" y2="22.86" width="0.1524" layer="91"/>
<label x="170.18" y="22.86" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="X10" gate="-2" pin="S"/>
<wire x1="175.26" y1="7.62" x2="170.18" y2="7.62" width="0.1524" layer="91"/>
<label x="170.18" y="7.62" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="X15" gate="-1" pin="S"/>
<wire x1="17.78" y1="55.88" x2="10.16" y2="55.88" width="0.1524" layer="91"/>
<label x="10.16" y="55.88" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="X16" gate="-2" pin="S"/>
<wire x1="60.96" y1="53.34" x2="53.34" y2="53.34" width="0.1524" layer="91"/>
<label x="53.34" y="53.34" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="X1" gate="-1" pin="S"/>
<wire x1="119.38" y1="60.96" x2="114.3" y2="60.96" width="0.1524" layer="91"/>
<label x="114.3" y="60.96" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="X5" gate="-1" pin="S"/>
<wire x1="119.38" y1="45.72" x2="114.3" y2="45.72" width="0.1524" layer="91"/>
<label x="114.3" y="45.72" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="X3" gate="-1" pin="S"/>
<wire x1="119.38" y1="27.94" x2="114.3" y2="27.94" width="0.1524" layer="91"/>
<label x="114.3" y="27.94" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="X6" gate="-1" pin="S"/>
<wire x1="119.38" y1="5.08" x2="114.3" y2="5.08" width="0.1524" layer="91"/>
<label x="114.3" y="5.08" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="X7" gate="-1" pin="S"/>
<wire x1="119.38" y1="-12.7" x2="114.3" y2="-12.7" width="0.1524" layer="91"/>
<label x="114.3" y="-12.7" size="1.778" layer="95"/>
</segment>
</net>
<net name="3.3V" class="0">
<segment>
<pinref part="X11" gate="-1" pin="S"/>
<wire x1="22.86" y1="-2.54" x2="17.78" y2="-2.54" width="0.1524" layer="91"/>
<label x="17.78" y="-2.54" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="X12" gate="-1" pin="S"/>
<wire x1="55.88" y1="-2.54" x2="50.8" y2="-2.54" width="0.1524" layer="91"/>
<label x="50.8" y="-2.54" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="X8" gate="-1" pin="S"/>
<wire x1="175.26" y1="40.64" x2="170.18" y2="40.64" width="0.1524" layer="91"/>
<label x="170.18" y="40.64" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="X9" gate="-1" pin="S"/>
<wire x1="175.26" y1="25.4" x2="170.18" y2="25.4" width="0.1524" layer="91"/>
<label x="170.18" y="25.4" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="X16" gate="-1" pin="S"/>
<wire x1="60.96" y1="55.88" x2="53.34" y2="55.88" width="0.1524" layer="91"/>
<label x="53.34" y="55.88" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="X1" gate="-2" pin="S"/>
<wire x1="119.38" y1="58.42" x2="114.3" y2="58.42" width="0.1524" layer="91"/>
<label x="114.3" y="58.42" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="X5" gate="-2" pin="S"/>
<wire x1="119.38" y1="43.18" x2="114.3" y2="43.18" width="0.1524" layer="91"/>
<label x="114.3" y="43.18" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="X3" gate="-2" pin="S"/>
<wire x1="119.38" y1="25.4" x2="114.3" y2="25.4" width="0.1524" layer="91"/>
<label x="114.3" y="25.4" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="X6" gate="-2" pin="S"/>
<wire x1="119.38" y1="2.54" x2="114.3" y2="2.54" width="0.1524" layer="91"/>
<label x="114.3" y="2.54" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="X7" gate="-2" pin="S"/>
<wire x1="119.38" y1="-15.24" x2="114.3" y2="-15.24" width="0.1524" layer="91"/>
<label x="114.3" y="-15.24" size="1.778" layer="95"/>
</segment>
</net>
<net name="PIN_0" class="0">
<segment>
<pinref part="X15" gate="-2" pin="S"/>
<wire x1="17.78" y1="53.34" x2="10.16" y2="53.34" width="0.1524" layer="91"/>
<label x="10.16" y="53.34" size="1.778" layer="95"/>
</segment>
</net>
<net name="PIN_1" class="0">
<segment>
<pinref part="X15" gate="-3" pin="S"/>
<wire x1="17.78" y1="50.8" x2="10.16" y2="50.8" width="0.1524" layer="91"/>
<label x="10.16" y="50.8" size="1.778" layer="95"/>
</segment>
</net>
<net name="PIN_2" class="0">
<segment>
<pinref part="X15" gate="-4" pin="S"/>
<wire x1="17.78" y1="48.26" x2="10.16" y2="48.26" width="0.1524" layer="91"/>
<label x="10.16" y="48.26" size="1.778" layer="95"/>
</segment>
</net>
<net name="PIN_3" class="0">
<segment>
<pinref part="X15" gate="-5" pin="S"/>
<wire x1="17.78" y1="45.72" x2="10.16" y2="45.72" width="0.1524" layer="91"/>
<label x="10.16" y="45.72" size="1.778" layer="95"/>
</segment>
</net>
<net name="PIN_4" class="0">
<segment>
<pinref part="X15" gate="-6" pin="S"/>
<wire x1="17.78" y1="43.18" x2="10.16" y2="43.18" width="0.1524" layer="91"/>
<label x="10.16" y="43.18" size="1.778" layer="95"/>
</segment>
</net>
<net name="PIN_5" class="0">
<segment>
<pinref part="X15" gate="-7" pin="S"/>
<wire x1="17.78" y1="40.64" x2="10.16" y2="40.64" width="0.1524" layer="91"/>
<label x="10.16" y="40.64" size="1.778" layer="95"/>
</segment>
</net>
<net name="PIN_6" class="0">
<segment>
<pinref part="X15" gate="-8" pin="S"/>
<wire x1="17.78" y1="38.1" x2="10.16" y2="38.1" width="0.1524" layer="91"/>
<label x="10.16" y="38.1" size="1.778" layer="95"/>
</segment>
</net>
<net name="PIN_7" class="0">
<segment>
<pinref part="X15" gate="-9" pin="S"/>
<wire x1="17.78" y1="35.56" x2="10.16" y2="35.56" width="0.1524" layer="91"/>
<label x="10.16" y="35.56" size="1.778" layer="95"/>
</segment>
</net>
<net name="PIN_8" class="0">
<segment>
<pinref part="X15" gate="-10" pin="S"/>
<wire x1="17.78" y1="33.02" x2="10.16" y2="33.02" width="0.1524" layer="91"/>
<label x="10.16" y="33.02" size="1.778" layer="95"/>
</segment>
</net>
<net name="PIN_9" class="0">
<segment>
<pinref part="X15" gate="-11" pin="S"/>
<wire x1="17.78" y1="30.48" x2="10.16" y2="30.48" width="0.1524" layer="91"/>
<label x="10.16" y="30.48" size="1.778" layer="95"/>
</segment>
</net>
<net name="SDA?" class="0">
<segment>
<pinref part="X16" gate="-3" pin="S"/>
<wire x1="60.96" y1="50.8" x2="53.34" y2="50.8" width="0.1524" layer="91"/>
<label x="53.34" y="50.8" size="1.778" layer="95"/>
</segment>
</net>
<net name="SCL?" class="0">
<segment>
<pinref part="X16" gate="-4" pin="S"/>
<wire x1="60.96" y1="48.26" x2="53.34" y2="48.26" width="0.1524" layer="91"/>
<label x="53.34" y="48.26" size="1.778" layer="95"/>
</segment>
</net>
<net name="PIN_16" class="0">
<segment>
<pinref part="X16" gate="-5" pin="S"/>
<wire x1="60.96" y1="45.72" x2="53.34" y2="45.72" width="0.1524" layer="91"/>
<label x="53.34" y="45.72" size="1.778" layer="95"/>
</segment>
</net>
<net name="PIN_15" class="0">
<segment>
<pinref part="X16" gate="-6" pin="S"/>
<wire x1="60.96" y1="43.18" x2="53.34" y2="43.18" width="0.1524" layer="91"/>
<label x="53.34" y="43.18" size="1.778" layer="95"/>
</segment>
</net>
<net name="PIN_14" class="0">
<segment>
<pinref part="X16" gate="-7" pin="S"/>
<wire x1="60.96" y1="40.64" x2="53.34" y2="40.64" width="0.1524" layer="91"/>
<label x="53.34" y="40.64" size="1.778" layer="95"/>
</segment>
</net>
<net name="PIN_13" class="0">
<segment>
<pinref part="X16" gate="-8" pin="S"/>
<wire x1="60.96" y1="38.1" x2="53.34" y2="38.1" width="0.1524" layer="91"/>
<label x="53.34" y="38.1" size="1.778" layer="95"/>
</segment>
</net>
<net name="PIN_12" class="0">
<segment>
<pinref part="X16" gate="-9" pin="S"/>
<wire x1="60.96" y1="35.56" x2="53.34" y2="35.56" width="0.1524" layer="91"/>
<label x="53.34" y="35.56" size="1.778" layer="95"/>
</segment>
</net>
<net name="PIN_11" class="0">
<segment>
<pinref part="X16" gate="-10" pin="S"/>
<wire x1="60.96" y1="33.02" x2="53.34" y2="33.02" width="0.1524" layer="91"/>
<label x="53.34" y="33.02" size="1.778" layer="95"/>
</segment>
</net>
<net name="PIN_10" class="0">
<segment>
<pinref part="X16" gate="-11" pin="S"/>
<wire x1="60.96" y1="30.48" x2="53.34" y2="30.48" width="0.1524" layer="91"/>
<label x="53.34" y="30.48" size="1.778" layer="95"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
<compatibility>
<note version="8.2" severity="warning">
Since Version 8.2, EAGLE supports online libraries. The ids
of those online libraries will not be understood (or retained)
with this version.
</note>
<note version="8.3" severity="warning">
Since Version 8.3, EAGLE supports URNs for individual library
assets (packages, symbols, and devices). The URNs of those assets
will not be understood (or retained) with this version.
</note>
<note version="8.3" severity="warning">
Since Version 8.3, EAGLE supports the association of 3D packages
with devices in libraries, schematics, and board files. Those 3D
packages will not be understood (or retained) with this version.
</note>
</compatibility>
</eagle>
