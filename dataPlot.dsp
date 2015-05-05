# Microsoft Developer Studio Project File - Name="dataPlot" - Package Owner=<4>
# Microsoft Developer Studio Generated Build File, Format Version 6.00
# ** DO NOT EDIT **

# TARGTYPE "Win32 (x86) Application" 0x0101

CFG=dataPlot - Win32 Debug
!MESSAGE This is not a valid makefile. To build this project using NMAKE,
!MESSAGE use the Export Makefile command and run
!MESSAGE 
!MESSAGE NMAKE /f "dataPlot.mak".
!MESSAGE 
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "dataPlot.mak" CFG="dataPlot - Win32 Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "dataPlot - Win32 Release" (based on "Win32 (x86) Application")
!MESSAGE "dataPlot - Win32 Debug" (based on "Win32 (x86) Application")
!MESSAGE 

# Begin Project
# PROP AllowPerConfigDependencies 0
# PROP Scc_ProjName ""
# PROP Scc_LocalPath ""
CPP=cl.exe
MTL=midl.exe
RSC=rc.exe

!IF  "$(CFG)" == "dataPlot - Win32 Release"

# PROP BASE Use_MFC 6
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "Release"
# PROP BASE Intermediate_Dir "Release"
# PROP BASE Target_Dir ""
# PROP Use_MFC 5
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "Release"
# PROP Intermediate_Dir "Release"
# PROP Ignore_Export_Lib 0
# PROP Target_Dir ""
# ADD BASE CPP /nologo /MD /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /D "_AFXDLL" /Yu"stdafx.h" /FD /c
# ADD CPP /nologo /MT /W3 /GX /Od /D "WIN32" /D "_WINDOWS" /D "_MBCS" /Yu"stdafx.h" /FD /c
# ADD BASE MTL /nologo /D "NDEBUG" /mktyplib203 /win32
# ADD MTL /nologo /D "NDEBUG" /mktyplib203 /win32
# ADD BASE RSC /l 0x804 /d "NDEBUG" /d "_AFXDLL"
# ADD RSC /l 0x804 /d "NDEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 /nologo /subsystem:windows /machine:I386
# ADD LINK32 /nologo /subsystem:windows /machine:I386

!ELSEIF  "$(CFG)" == "dataPlot - Win32 Debug"

# PROP BASE Use_MFC 6
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir "Debug"
# PROP BASE Intermediate_Dir "Debug"
# PROP BASE Target_Dir ""
# PROP Use_MFC 5
# PROP Use_Debug_Libraries 1
# PROP Output_Dir "Debug"
# PROP Intermediate_Dir "Debug"
# PROP Ignore_Export_Lib 0
# PROP Target_Dir ""
# ADD BASE CPP /nologo /MDd /W3 /Gm /GX /ZI /Od /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /D "_AFXDLL" /Yu"stdafx.h" /FD /GZ /c
# ADD CPP /nologo /MTd /W3 /Gm /GX /ZI /Od /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /D "_MBCS" /Fr /Yu"stdafx.h" /FD /GZ /c
# ADD BASE MTL /nologo /D "_DEBUG" /mktyplib203 /win32
# ADD MTL /nologo /D "_DEBUG" /mktyplib203 /win32
# ADD BASE RSC /l 0x804 /d "_DEBUG" /d "_AFXDLL"
# ADD RSC /l 0x804 /d "_DEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 /nologo /subsystem:windows /debug /machine:I386 /pdbtype:sept
# ADD LINK32 /nologo /subsystem:windows /debug /machine:I386 /pdbtype:sept

!ENDIF 

# Begin Target

# Name "dataPlot - Win32 Release"
# Name "dataPlot - Win32 Debug"
# Begin Group "Source Files"

# PROP Default_Filter "cpp;c;cxx;rc;def;r;odl;idl;hpj;bat"
# Begin Source File

SOURCE=.\BigInt.cpp
# End Source File
# Begin Source File

SOURCE=.\checkData.cpp
# End Source File
# Begin Source File

SOURCE=.\dataPlot.cpp
# End Source File
# Begin Source File

SOURCE=.\dataPlot.rc
# End Source File
# Begin Source File

SOURCE=.\dataPlotDlg.cpp
# End Source File
# Begin Source File

SOURCE=.\DrawThread.cpp
# End Source File
# Begin Source File

SOURCE=.\HandleThread.cpp
# End Source File
# Begin Source File

SOURCE=.\mscomm.cpp
# End Source File
# Begin Source File

SOURCE=.\receiveData.cpp
# End Source File
# Begin Source File

SOURCE=.\StdAfx.cpp
# ADD CPP /Yc"stdafx.h"
# End Source File
# End Group
# Begin Group "Header Files"

# PROP Default_Filter "h;hpp;hxx;hm;inl"
# Begin Source File

SOURCE=.\BigInt.h
# End Source File
# Begin Source File

SOURCE=.\binaryData.h
# End Source File
# Begin Source File

SOURCE=.\checkData.h
# End Source File
# Begin Source File

SOURCE=.\dataPlot.h
# End Source File
# Begin Source File

SOURCE=.\dataPlotDlg.h
# End Source File
# Begin Source File

SOURCE=.\DrawThread.h
# End Source File
# Begin Source File

SOURCE=.\HandleThread.h
# End Source File
# Begin Source File

SOURCE=.\linkData.h
# End Source File
# Begin Source File

SOURCE=.\mscomm.h
# End Source File
# Begin Source File

SOURCE=.\PointList.h
# End Source File
# Begin Source File

SOURCE=.\receiveData.h
# End Source File
# Begin Source File

SOURCE=.\Resource.h
# End Source File
# Begin Source File

SOURCE=.\StdAfx.h
# End Source File
# End Group
# Begin Group "Resource Files"

# PROP Default_Filter "ico;cur;bmp;dlg;rc2;rct;bin;rgs;gif;jpg;jpeg;jpe"
# Begin Source File

SOURCE=.\res\dataPlot.ico
# End Source File
# Begin Source File

SOURCE=.\res\dataPlot.rc2
# End Source File
# End Group
# Begin Group "Tchart"

# PROP Default_Filter ""
# Begin Source File

SOURCE=.\adxfunction.cpp
# End Source File
# Begin Source File

SOURCE=.\adxfunction.h
# End Source File
# Begin Source File

SOURCE=.\amountfilter.cpp
# End Source File
# Begin Source File

SOURCE=.\amountfilter.h
# End Source File
# Begin Source File

SOURCE=.\annotationcallout.cpp
# End Source File
# Begin Source File

SOURCE=.\annotationcallout.h
# End Source File
# Begin Source File

SOURCE=.\annotationtool.cpp
# End Source File
# Begin Source File

SOURCE=.\annotationtool.h
# End Source File
# Begin Source File

SOURCE=.\antialiastool.cpp
# End Source File
# Begin Source File

SOURCE=.\antialiastool.h
# End Source File
# Begin Source File

SOURCE=.\areaseries.cpp
# End Source File
# Begin Source File

SOURCE=.\areaseries.h
# End Source File
# Begin Source File

SOURCE=.\arrowseries.cpp
# End Source File
# Begin Source File

SOURCE=.\arrowseries.h
# End Source File
# Begin Source File

SOURCE=.\aspect.cpp
# End Source File
# Begin Source File

SOURCE=.\aspect.h
# End Source File
# Begin Source File

SOURCE=.\averagefunction.cpp
# End Source File
# Begin Source File

SOURCE=.\averagefunction.h
# End Source File
# Begin Source File

SOURCE=.\axes.cpp
# End Source File
# Begin Source File

SOURCE=.\axes.h
# End Source File
# Begin Source File

SOURCE=.\axis.cpp
# End Source File
# Begin Source File

SOURCE=.\axis.h
# End Source File
# Begin Source File

SOURCE=.\axisarrowtool.cpp
# End Source File
# Begin Source File

SOURCE=.\axisarrowtool.h
# End Source File
# Begin Source File

SOURCE=.\axisgridpen.cpp
# End Source File
# Begin Source File

SOURCE=.\axisgridpen.h
# End Source File
# Begin Source File

SOURCE=.\axislabels.cpp
# End Source File
# Begin Source File

SOURCE=.\axislabels.h
# End Source File
# Begin Source File

SOURCE=.\axislabelsitem.cpp
# End Source File
# Begin Source File

SOURCE=.\axislabelsitem.h
# End Source File
# Begin Source File

SOURCE=.\axisscrolltool.cpp
# End Source File
# Begin Source File

SOURCE=.\axisscrolltool.h
# End Source File
# Begin Source File

SOURCE=.\axistitle.cpp
# End Source File
# Begin Source File

SOURCE=.\axistitle.h
# End Source File
# Begin Source File

SOURCE=.\backimage.cpp
# End Source File
# Begin Source File

SOURCE=.\backimage.h
# End Source File
# Begin Source File

SOURCE=.\bannertool.cpp
# End Source File
# Begin Source File

SOURCE=.\bannertool.h
# End Source File
# Begin Source File

SOURCE=.\bar3dseries.cpp
# End Source File
# Begin Source File

SOURCE=.\bar3dseries.h
# End Source File
# Begin Source File

SOURCE=.\barjoinseries.cpp
# End Source File
# Begin Source File

SOURCE=.\barjoinseries.h
# End Source File
# Begin Source File

SOURCE=.\barseries.cpp
# End Source File
# Begin Source File

SOURCE=.\barseries.h
# End Source File
# Begin Source File

SOURCE=.\bevelfilter.cpp
# End Source File
# Begin Source File

SOURCE=.\bevelfilter.h
# End Source File
# Begin Source File

SOURCE=.\bezierseries.cpp
# End Source File
# Begin Source File

SOURCE=.\bezierseries.h
# End Source File
# Begin Source File

SOURCE=.\blurfilter.cpp
# End Source File
# Begin Source File

SOURCE=.\blurfilter.h
# End Source File
# Begin Source File

SOURCE=.\bmpexport.cpp
# End Source File
# Begin Source File

SOURCE=.\bmpexport.h
# End Source File
# Begin Source File

SOURCE=.\bollingerfunction.cpp
# End Source File
# Begin Source File

SOURCE=.\bollingerfunction.h
# End Source File
# Begin Source File

SOURCE=.\boxplotseries.cpp
# End Source File
# Begin Source File

SOURCE=.\boxplotseries.h
# End Source File
# Begin Source File

SOURCE=.\brightnessfilter.cpp
# End Source File
# Begin Source File

SOURCE=.\brightnessfilter.h
# End Source File
# Begin Source File

SOURCE=.\brush.cpp
# End Source File
# Begin Source File

SOURCE=.\brush.h
# End Source File
# Begin Source File

SOURCE=.\bubble3dseries.cpp
# End Source File
# Begin Source File

SOURCE=.\bubble3dseries.h
# End Source File
# Begin Source File

SOURCE=.\bubbleseries.cpp
# End Source File
# Begin Source File

SOURCE=.\bubbleseries.h
# End Source File
# Begin Source File

SOURCE=.\calendarcell.cpp
# End Source File
# Begin Source File

SOURCE=.\calendarcell.h
# End Source File
# Begin Source File

SOURCE=.\calendarcellupper.cpp
# End Source File
# Begin Source File

SOURCE=.\calendarcellupper.h
# End Source File
# Begin Source File

SOURCE=.\calendarseries.cpp
# End Source File
# Begin Source File

SOURCE=.\calendarseries.h
# End Source File
# Begin Source File

SOURCE=.\candleseries.cpp
# End Source File
# Begin Source File

SOURCE=.\candleseries.h
# End Source File
# Begin Source File

SOURCE=.\canvas.cpp
# End Source File
# Begin Source File

SOURCE=.\canvas.h
# End Source File
# Begin Source File

SOURCE=.\ccifunction.cpp
# End Source File
# Begin Source File

SOURCE=.\ccifunction.h
# End Source File
# Begin Source File

SOURCE=.\chartaxispen.cpp
# End Source File
# Begin Source File

SOURCE=.\chartaxispen.h
# End Source File
# Begin Source File

SOURCE=.\chartfont.cpp
# End Source File
# Begin Source File

SOURCE=.\chartfont.h
# End Source File
# Begin Source File

SOURCE=.\charthiddenpen.cpp
# End Source File
# Begin Source File

SOURCE=.\charthiddenpen.h
# End Source File
# Begin Source File

SOURCE=.\chartimagetool.cpp
# End Source File
# Begin Source File

SOURCE=.\chartimagetool.h
# End Source File
# Begin Source File

SOURCE=.\circlelabels.cpp
# End Source File
# Begin Source File

SOURCE=.\circlelabels.h
# End Source File
# Begin Source File

SOURCE=.\circulargauge.cpp
# End Source File
# Begin Source File

SOURCE=.\circulargauge.h
# End Source File
# Begin Source File

SOURCE=.\clipseriestool.cpp
# End Source File
# Begin Source File

SOURCE=.\clipseriestool.h
# End Source File
# Begin Source File

SOURCE=.\clockseries.cpp
# End Source File
# Begin Source File

SOURCE=.\clockseries.h
# End Source File
# Begin Source File

SOURCE=.\clvfunction.cpp
# End Source File
# Begin Source File

SOURCE=.\clvfunction.h
# End Source File
# Begin Source File

SOURCE=.\colorbandtool.cpp
# End Source File
# Begin Source File

SOURCE=.\colorbandtool.h
# End Source File
# Begin Source File

SOURCE=.\colorfilter.cpp
# End Source File
# Begin Source File

SOURCE=.\colorfilter.h
# End Source File
# Begin Source File

SOURCE=.\colorgridseries.cpp
# End Source File
# Begin Source File

SOURCE=.\colorgridseries.h
# End Source File
# Begin Source File

SOURCE=.\colorlinetool.cpp
# End Source File
# Begin Source File

SOURCE=.\colorlinetool.h
# End Source File
# Begin Source File

SOURCE=.\compressfunction.cpp
# End Source File
# Begin Source File

SOURCE=.\compressfunction.h
# End Source File
# Begin Source File

SOURCE=.\contourlevel.cpp
# End Source File
# Begin Source File

SOURCE=.\contourlevel.h
# End Source File
# Begin Source File

SOURCE=.\contourlevels.cpp
# End Source File
# Begin Source File

SOURCE=.\contourlevels.h
# End Source File
# Begin Source File

SOURCE=.\contourmarks.cpp
# End Source File
# Begin Source File

SOURCE=.\contourmarks.h
# End Source File
# Begin Source File

SOURCE=.\contourseries.cpp
# End Source File
# Begin Source File

SOURCE=.\contourseries.h
# End Source File
# Begin Source File

SOURCE=.\contrastfilter.cpp
# End Source File
# Begin Source File

SOURCE=.\contrastfilter.h
# End Source File
# Begin Source File

SOURCE=.\cropfilter.cpp
# End Source File
# Begin Source File

SOURCE=.\cropfilter.h
# End Source File
# Begin Source File

SOURCE=.\cursortool.cpp
# End Source File
# Begin Source File

SOURCE=.\cursortool.h
# End Source File
# Begin Source File

SOURCE=.\curvefittingfunction.cpp
# End Source File
# Begin Source File

SOURCE=.\curvefittingfunction.h
# End Source File
# Begin Source File

SOURCE=.\custom3dpaletteseries.cpp
# End Source File
# Begin Source File

SOURCE=.\custom3dpaletteseries.h
# End Source File
# Begin Source File

SOURCE=.\customfunction.cpp
# End Source File
# Begin Source File

SOURCE=.\customfunction.h
# End Source File
# Begin Source File

SOURCE=.\darvasseries.cpp
# End Source File
# Begin Source File

SOURCE=.\darvasseries.h
# End Source File
# Begin Source File

SOURCE=.\datatabletool.cpp
# End Source File
# Begin Source File

SOURCE=.\datatabletool.h
# End Source File
# Begin Source File

SOURCE=.\deltapointseries.cpp
# End Source File
# Begin Source File

SOURCE=.\deltapointseries.h
# End Source File
# Begin Source File

SOURCE=.\donutseries.cpp
# End Source File
# Begin Source File

SOURCE=.\donutseries.h
# End Source File
# Begin Source File

SOURCE=.\downsamplingfunction.cpp
# End Source File
# Begin Source File

SOURCE=.\downsamplingfunction.h
# End Source File
# Begin Source File

SOURCE=.\dragmarkstool.cpp
# End Source File
# Begin Source File

SOURCE=.\dragmarkstool.h
# End Source File
# Begin Source File

SOURCE=.\dragpointtool.cpp
# End Source File
# Begin Source File

SOURCE=.\dragpointtool.h
# End Source File
# Begin Source File

SOURCE=.\drawline.cpp
# End Source File
# Begin Source File

SOURCE=.\drawline.h
# End Source File
# Begin Source File

SOURCE=.\drawlinelist.cpp
# End Source File
# Begin Source File

SOURCE=.\drawlinelist.h
# End Source File
# Begin Source File

SOURCE=.\drawlinetool.cpp
# End Source File
# Begin Source File

SOURCE=.\drawlinetool.h
# End Source File
# Begin Source File

SOURCE=.\embossfilter.cpp
# End Source File
# Begin Source File

SOURCE=.\embossfilter.h
# End Source File
# Begin Source File

SOURCE=.\environment.cpp
# End Source File
# Begin Source File

SOURCE=.\environment.h
# End Source File
# Begin Source File

SOURCE=.\epsexport.cpp
# End Source File
# Begin Source File

SOURCE=.\epsexport.h
# End Source File
# Begin Source File

SOURCE=.\errorbarseries.cpp
# End Source File
# Begin Source File

SOURCE=.\errorbarseries.h
# End Source File
# Begin Source File

SOURCE=.\errorseries.cpp
# End Source File
# Begin Source File

SOURCE=.\errorseries.h
# End Source File
# Begin Source File

SOURCE=.\expavgfunction.cpp
# End Source File
# Begin Source File

SOURCE=.\expavgfunction.h
# End Source File
# Begin Source File

SOURCE=.\explodedslices.cpp
# End Source File
# Begin Source File

SOURCE=.\explodedslices.h
# End Source File
# Begin Source File

SOURCE=.\expmovavgfunction.cpp
# End Source File
# Begin Source File

SOURCE=.\expmovavgfunction.h
# End Source File
# Begin Source File

SOURCE=.\export.cpp
# End Source File
# Begin Source File

SOURCE=.\export.h
# End Source File
# Begin Source File

SOURCE=.\extralegendtool.cpp
# End Source File
# Begin Source File

SOURCE=.\extralegendtool.h
# End Source File
# Begin Source File

SOURCE=.\fadertool.cpp
# End Source File
# Begin Source File

SOURCE=.\fadertool.h
# End Source File
# Begin Source File

SOURCE=.\fastlineseries.cpp
# End Source File
# Begin Source File

SOURCE=.\fastlineseries.h
# End Source File
# Begin Source File

SOURCE=.\fibonacciitem.cpp
# End Source File
# Begin Source File

SOURCE=.\fibonacciitem.h
# End Source File
# Begin Source File

SOURCE=.\fibonaccilevels.cpp
# End Source File
# Begin Source File

SOURCE=.\fibonaccilevels.h
# End Source File
# Begin Source File

SOURCE=.\fibonaccitool.cpp
# End Source File
# Begin Source File

SOURCE=.\fibonaccitool.h
# End Source File
# Begin Source File

SOURCE=.\filteritems.cpp
# End Source File
# Begin Source File

SOURCE=.\filteritems.h
# End Source File
# Begin Source File

SOURCE=.\filterregion.cpp
# End Source File
# Begin Source File

SOURCE=.\filterregion.h
# End Source File
# Begin Source File

SOURCE=.\floatxyz.cpp
# End Source File
# Begin Source File

SOURCE=.\floatxyz.h
# End Source File
# Begin Source File

SOURCE=.\framebrush.cpp
# End Source File
# Begin Source File

SOURCE=.\framebrush.h
# End Source File
# Begin Source File

SOURCE=.\framedborder.cpp
# End Source File
# Begin Source File

SOURCE=.\framedborder.h
# End Source File
# Begin Source File

SOURCE=.\frametool.cpp
# End Source File
# Begin Source File

SOURCE=.\frametool.h
# End Source File
# Begin Source File

SOURCE=.\funnelseries.cpp
# End Source File
# Begin Source File

SOURCE=.\funnelseries.h
# End Source File
# Begin Source File

SOURCE=.\gammacorrectionfilter.cpp
# End Source File
# Begin Source File

SOURCE=.\gammacorrectionfilter.h
# End Source File
# Begin Source File

SOURCE=.\ganttseries.cpp
# End Source File
# Begin Source File

SOURCE=.\ganttseries.h
# End Source File
# Begin Source File

SOURCE=.\gantttool.cpp
# End Source File
# Begin Source File

SOURCE=.\gantttool.h
# End Source File
# Begin Source File

SOURCE=.\gaugepointerrange.cpp
# End Source File
# Begin Source File

SOURCE=.\gaugepointerrange.h
# End Source File
# Begin Source File

SOURCE=.\gaugeseries.cpp
# End Source File
# Begin Source File

SOURCE=.\gaugeseries.h
# End Source File
# Begin Source File

SOURCE=.\gaugeseriespointer.cpp
# End Source File
# Begin Source File

SOURCE=.\gaugeseriespointer.h
# End Source File
# Begin Source File

SOURCE=.\gifexport.cpp
# End Source File
# Begin Source File

SOURCE=.\gifexport.h
# End Source File
# Begin Source File

SOURCE=.\gllightsource.cpp
# End Source File
# Begin Source File

SOURCE=.\gllightsource.h
# End Source File
# Begin Source File

SOURCE=.\glposition.cpp
# End Source File
# Begin Source File

SOURCE=.\glposition.h
# End Source File
# Begin Source File

SOURCE=.\gradient.cpp
# End Source File
# Begin Source File

SOURCE=.\gradient.h
# End Source File
# Begin Source File

SOURCE=.\grayscalefilter.cpp
# End Source File
# Begin Source File

SOURCE=.\grayscalefilter.h
# End Source File
# Begin Source File

SOURCE=.\gridbandbrush.cpp
# End Source File
# Begin Source File

SOURCE=.\gridbandbrush.h
# End Source File
# Begin Source File

SOURCE=.\gridbandtool.cpp
# End Source File
# Begin Source File

SOURCE=.\gridbandtool.h
# End Source File
# Begin Source File

SOURCE=.\gridtransposetool.cpp
# End Source File
# Begin Source File

SOURCE=.\gridtransposetool.h
# End Source File
# Begin Source File

SOURCE=.\highlowlineseries.cpp
# End Source File
# Begin Source File

SOURCE=.\highlowlineseries.h
# End Source File
# Begin Source File

SOURCE=.\highlowseries.cpp
# End Source File
# Begin Source File

SOURCE=.\highlowseries.h
# End Source File
# Begin Source File

SOURCE=.\histogramfunction.cpp
# End Source File
# Begin Source File

SOURCE=.\histogramfunction.h
# End Source File
# Begin Source File

SOURCE=.\histogramseries.cpp
# End Source File
# Begin Source File

SOURCE=.\histogramseries.h
# End Source File
# Begin Source File

SOURCE=.\horizareaseries.cpp
# End Source File
# Begin Source File

SOURCE=.\horizareaseries.h
# End Source File
# Begin Source File

SOURCE=.\horizbarseries.cpp
# End Source File
# Begin Source File

SOURCE=.\horizbarseries.h
# End Source File
# Begin Source File

SOURCE=.\horizboxplotseries.cpp
# End Source File
# Begin Source File

SOURCE=.\horizboxplotseries.h
# End Source File
# Begin Source File

SOURCE=.\horizhistogramseries.cpp
# End Source File
# Begin Source File

SOURCE=.\horizhistogramseries.h
# End Source File
# Begin Source File

SOURCE=.\horizlineseries.cpp
# End Source File
# Begin Source File

SOURCE=.\horizlineseries.h
# End Source File
# Begin Source File

SOURCE=.\htmlexport.cpp
# End Source File
# Begin Source File

SOURCE=.\htmlexport.h
# End Source File
# Begin Source File

SOURCE=.\huelumsatfilter.cpp
# End Source File
# Begin Source File

SOURCE=.\huelumsatfilter.h
# End Source File
# Begin Source File

SOURCE=.\imagebarseries.cpp
# End Source File
# Begin Source File

SOURCE=.\imagebarseries.h
# End Source File
# Begin Source File

SOURCE=.\imagepointseries.cpp
# End Source File
# Begin Source File

SOURCE=.\imagepointseries.h
# End Source File
# Begin Source File

SOURCE=.\import.cpp
# End Source File
# Begin Source File

SOURCE=.\import.h
# End Source File
# Begin Source File

SOURCE=.\isosurfaceseries.cpp
# End Source File
# Begin Source File

SOURCE=.\isosurfaceseries.h
# End Source File
# Begin Source File

SOURCE=.\jpegexport.cpp
# End Source File
# Begin Source File

SOURCE=.\jpegexport.h
# End Source File
# Begin Source File

SOURCE=.\kagiseries.cpp
# End Source File
# Begin Source File

SOURCE=.\kagiseries.h
# End Source File
# Begin Source File

SOURCE=.\legend.cpp
# End Source File
# Begin Source File

SOURCE=.\legend.h
# End Source File
# Begin Source File

SOURCE=.\legenditem.cpp
# End Source File
# Begin Source File

SOURCE=.\legenditem.h
# End Source File
# Begin Source File

SOURCE=.\legenditems.cpp
# End Source File
# Begin Source File

SOURCE=.\legenditems.h
# End Source File
# Begin Source File

SOURCE=.\legendpalettetool.cpp
# End Source File
# Begin Source File

SOURCE=.\legendpalettetool.h
# End Source File
# Begin Source File

SOURCE=.\legendscrollbartool.cpp
# End Source File
# Begin Source File

SOURCE=.\legendscrollbartool.h
# End Source File
# Begin Source File

SOURCE=.\legendsymbol.cpp
# End Source File
# Begin Source File

SOURCE=.\legendsymbol.h
# End Source File
# Begin Source File

SOURCE=.\legendtitle.cpp
# End Source File
# Begin Source File

SOURCE=.\legendtitle.h
# End Source File
# Begin Source File

SOURCE=.\levelsegment.cpp
# End Source File
# Begin Source File

SOURCE=.\levelsegment.h
# End Source File
# Begin Source File

SOURCE=.\lighttool.cpp
# End Source File
# Begin Source File

SOURCE=.\lighttool.h
# End Source File
# Begin Source File

SOURCE=.\lineargauge.cpp
# End Source File
# Begin Source File

SOURCE=.\lineargauge.h
# End Source File
# Begin Source File

SOURCE=.\lineseries.cpp
# End Source File
# Begin Source File

SOURCE=.\lineseries.h
# End Source File
# Begin Source File

SOURCE=.\linktool.cpp
# End Source File
# Begin Source File

SOURCE=.\linktool.h
# End Source File
# Begin Source File

SOURCE=.\macdfunction.cpp
# End Source File
# Begin Source File

SOURCE=.\macdfunction.h
# End Source File
# Begin Source File

SOURCE=.\magnifytool.cpp
# End Source File
# Begin Source File

SOURCE=.\magnifytool.h
# End Source File
# Begin Source File

SOURCE=.\mappolygon.cpp
# End Source File
# Begin Source File

SOURCE=.\mappolygon.h
# End Source File
# Begin Source File

SOURCE=.\mappolygonlist.cpp
# End Source File
# Begin Source File

SOURCE=.\mappolygonlist.h
# End Source File
# Begin Source File

SOURCE=.\mapseries.cpp
# End Source File
# Begin Source File

SOURCE=.\mapseries.h
# End Source File
# Begin Source File

SOURCE=.\margins.cpp
# End Source File
# Begin Source File

SOURCE=.\margins.h
# End Source File
# Begin Source File

SOURCE=.\marks.cpp
# End Source File
# Begin Source File

SOURCE=.\marks.h
# End Source File
# Begin Source File

SOURCE=.\markscallout.cpp
# End Source File
# Begin Source File

SOURCE=.\markscallout.h
# End Source File
# Begin Source File

SOURCE=.\marksitem.cpp
# End Source File
# Begin Source File

SOURCE=.\marksitem.h
# End Source File
# Begin Source File

SOURCE=.\markssymbol.cpp
# End Source File
# Begin Source File

SOURCE=.\markssymbol.h
# End Source File
# Begin Source File

SOURCE=.\markstiptool.cpp
# End Source File
# Begin Source File

SOURCE=.\markstiptool.h
# End Source File
# Begin Source File

SOURCE=.\medianfunction.cpp
# End Source File
# Begin Source File

SOURCE=.\medianfunction.h
# End Source File
# Begin Source File

SOURCE=.\metafileexport.cpp
# End Source File
# Begin Source File

SOURCE=.\metafileexport.h
# End Source File
# Begin Source File

SOURCE=.\mirrorfilter.cpp
# End Source File
# Begin Source File

SOURCE=.\mirrorfilter.h
# End Source File
# Begin Source File

SOURCE=.\modefunction.cpp
# End Source File
# Begin Source File

SOURCE=.\modefunction.h
# End Source File
# Begin Source File

SOURCE=.\mosaicfilter.cpp
# End Source File
# Begin Source File

SOURCE=.\mosaicfilter.h
# End Source File
# Begin Source File

SOURCE=.\movingavgfunction.cpp
# End Source File
# Begin Source File

SOURCE=.\movingavgfunction.h
# End Source File
# Begin Source File

SOURCE=.\nativeexport.cpp
# End Source File
# Begin Source File

SOURCE=.\nativeexport.h
# End Source File
# Begin Source File

SOURCE=.\nearesttool.cpp
# End Source File
# Begin Source File

SOURCE=.\nearesttool.h
# End Source File
# Begin Source File

SOURCE=.\numericgauge.cpp
# End Source File
# Begin Source File

SOURCE=.\numericgauge.h
# End Source File
# Begin Source File

SOURCE=.\numericmarker.cpp
# End Source File
# Begin Source File

SOURCE=.\numericmarker.h
# End Source File
# Begin Source File

SOURCE=.\obvfunction.cpp
# End Source File
# Begin Source File

SOURCE=.\obvfunction.h
# End Source File
# Begin Source File

SOURCE=.\orgitem.cpp
# End Source File
# Begin Source File

SOURCE=.\orgitem.h
# End Source File
# Begin Source File

SOURCE=.\orgitemcollection.cpp
# End Source File
# Begin Source File

SOURCE=.\orgitemcollection.h
# End Source File
# Begin Source File

SOURCE=.\orgseries.cpp
# End Source File
# Begin Source File

SOURCE=.\orgseries.h
# End Source File
# Begin Source File

SOURCE=.\orgshape.cpp
# End Source File
# Begin Source File

SOURCE=.\orgshape.h
# End Source File
# Begin Source File

SOURCE=.\page.cpp
# End Source File
# Begin Source File

SOURCE=.\page.h
# End Source File
# Begin Source File

SOURCE=.\pagenumtool.cpp
# End Source File
# Begin Source File

SOURCE=.\pagenumtool.h
# End Source File
# Begin Source File

SOURCE=.\panel.cpp
# End Source File
# Begin Source File

SOURCE=.\panel.h
# End Source File
# Begin Source File

SOURCE=.\pcxexport.cpp
# End Source File
# Begin Source File

SOURCE=.\pcxexport.h
# End Source File
# Begin Source File

SOURCE=.\pdfexport.cpp
# End Source File
# Begin Source File

SOURCE=.\pdfexport.h
# End Source File
# Begin Source File

SOURCE=.\pen.cpp
# End Source File
# Begin Source File

SOURCE=.\pen.h
# End Source File
# Begin Source File

SOURCE=.\performancefunction.cpp
# End Source File
# Begin Source File

SOURCE=.\performancefunction.h
# End Source File
# Begin Source File

SOURCE=.\piemarks.cpp
# End Source File
# Begin Source File

SOURCE=.\piemarks.h
# End Source File
# Begin Source File

SOURCE=.\pieotherslice.cpp
# End Source File
# Begin Source File

SOURCE=.\pieotherslice.h
# End Source File
# Begin Source File

SOURCE=.\pieseries.cpp
# End Source File
# Begin Source File

SOURCE=.\pieseries.h
# End Source File
# Begin Source File

SOURCE=.\pietool.cpp
# End Source File
# Begin Source File

SOURCE=.\pietool.h
# End Source File
# Begin Source File

SOURCE=.\pngexport.cpp
# End Source File
# Begin Source File

SOURCE=.\pngexport.h
# End Source File
# Begin Source File

SOURCE=.\point3dseries.cpp
# End Source File
# Begin Source File

SOURCE=.\point3dseries.h
# End Source File
# Begin Source File

SOURCE=.\pointarray.cpp
# End Source File
# Begin Source File

SOURCE=.\pointarray.h
# End Source File
# Begin Source File

SOURCE=.\pointer.cpp
# End Source File
# Begin Source File

SOURCE=.\pointer.h
# End Source File
# Begin Source File

SOURCE=.\pointfigureseries.cpp
# End Source File
# Begin Source File

SOURCE=.\pointfigureseries.h
# End Source File
# Begin Source File

SOURCE=.\pointseries.cpp
# End Source File
# Begin Source File

SOURCE=.\pointseries.h
# End Source File
# Begin Source File

SOURCE=.\polarbarseries.cpp
# End Source File
# Begin Source File

SOURCE=.\polarbarseries.h
# End Source File
# Begin Source File

SOURCE=.\polargridseries.cpp
# End Source File
# Begin Source File

SOURCE=.\polargridseries.h
# End Source File
# Begin Source File

SOURCE=.\polarseries.cpp
# End Source File
# Begin Source File

SOURCE=.\polarseries.h
# End Source File
# Begin Source File

SOURCE=.\printer.cpp
# End Source File
# Begin Source File

SOURCE=.\printer.h
# End Source File
# Begin Source File

SOURCE=.\printersettings.cpp
# End Source File
# Begin Source File

SOURCE=.\printersettings.h
# End Source File
# Begin Source File

SOURCE=.\pvofunction.cpp
# End Source File
# Begin Source File

SOURCE=.\pvofunction.h
# End Source File
# Begin Source File

SOURCE=.\pyramidseries.cpp
# End Source File
# Begin Source File

SOURCE=.\pyramidseries.h
# End Source File
# Begin Source File

SOURCE=.\radarseries.cpp
# End Source File
# Begin Source File

SOURCE=.\radarseries.h
# End Source File
# Begin Source File

SOURCE=.\rectangletool.cpp
# End Source File
# Begin Source File

SOURCE=.\rectangletool.h
# End Source File
# Begin Source File

SOURCE=.\renkoseries.cpp
# End Source File
# Begin Source File

SOURCE=.\renkoseries.h
# End Source File
# Begin Source File

SOURCE=.\resizefilter.cpp
# End Source File
# Begin Source File

SOURCE=.\resizefilter.h
# End Source File
# Begin Source File

SOURCE=.\rmsfunction.cpp
# End Source File
# Begin Source File

SOURCE=.\rmsfunction.h
# End Source File
# Begin Source File

SOURCE=.\rotatefilter.cpp
# End Source File
# Begin Source File

SOURCE=.\rotatefilter.h
# End Source File
# Begin Source File

SOURCE=.\rotatetool.cpp
# End Source File
# Begin Source File

SOURCE=.\rotatetool.h
# End Source File
# Begin Source File

SOURCE=.\rsifunction.cpp
# End Source File
# Begin Source File

SOURCE=.\rsifunction.h
# End Source File
# Begin Source File

SOURCE=.\sarfunction.cpp
# End Source File
# Begin Source File

SOURCE=.\sarfunction.h
# End Source File
# Begin Source File

SOURCE=.\scroll.cpp
# End Source File
# Begin Source File

SOURCE=.\scroll.h
# End Source File
# Begin Source File

SOURCE=.\scrollbarthumb.cpp
# End Source File
# Begin Source File

SOURCE=.\scrollbarthumb.h
# End Source File
# Begin Source File

SOURCE=.\selectortool.cpp
# End Source File
# Begin Source File

SOURCE=.\selectortool.h
# End Source File
# Begin Source File

SOURCE=.\series.cpp
# End Source File
# Begin Source File

SOURCE=.\series.h
# End Source File
# Begin Source File

SOURCE=.\seriesanimationtool.cpp
# End Source File
# Begin Source File

SOURCE=.\seriesanimationtool.h
# End Source File
# Begin Source File

SOURCE=.\seriesbandtool.cpp
# End Source File
# Begin Source File

SOURCE=.\seriesbandtool.h
# End Source File
# Begin Source File

SOURCE=.\seriesgroup.cpp
# End Source File
# Begin Source File

SOURCE=.\seriesgroup.h
# End Source File
# Begin Source File

SOURCE=.\seriesgroups.cpp
# End Source File
# Begin Source File

SOURCE=.\seriesgroups.h
# End Source File
# Begin Source File

SOURCE=.\serieslist.cpp
# End Source File
# Begin Source File

SOURCE=.\serieslist.h
# End Source File
# Begin Source File

SOURCE=.\seriesmarkposition.cpp
# End Source File
# Begin Source File

SOURCE=.\seriesmarkposition.h
# End Source File
# Begin Source File

SOURCE=.\seriesmarkspositions.cpp
# End Source File
# Begin Source File

SOURCE=.\seriesmarkspositions.h
# End Source File
# Begin Source File

SOURCE=.\seriesregiontool.cpp
# End Source File
# Begin Source File

SOURCE=.\seriesregiontool.h
# End Source File
# Begin Source File

SOURCE=.\seriesstatstool.cpp
# End Source File
# Begin Source File

SOURCE=.\seriesstatstool.h
# End Source File
# Begin Source File

SOURCE=.\shapeseries.cpp
# End Source File
# Begin Source File

SOURCE=.\shapeseries.h
# End Source File
# Begin Source File

SOURCE=.\sharpenfilter.cpp
# End Source File
# Begin Source File

SOURCE=.\sharpenfilter.h
# End Source File
# Begin Source File

SOURCE=.\smithseries.cpp
# End Source File
# Begin Source File

SOURCE=.\smithseries.h
# End Source File
# Begin Source File

SOURCE=.\smoothingfunction.cpp
# End Source File
# Begin Source File

SOURCE=.\smoothingfunction.h
# End Source File
# Begin Source File

SOURCE=.\smoothpoints.cpp
# End Source File
# Begin Source File

SOURCE=.\smoothpoints.h
# End Source File
# Begin Source File

SOURCE=.\softenfilter.cpp
# End Source File
# Begin Source File

SOURCE=.\softenfilter.h
# End Source File
# Begin Source File

SOURCE=.\spacing.cpp
# End Source File
# Begin Source File

SOURCE=.\spacing.h
# End Source File
# Begin Source File

SOURCE=.\stddeviationfunction.cpp
# End Source File
# Begin Source File

SOURCE=.\stddeviationfunction.h
# End Source File
# Begin Source File

SOURCE=.\strings.cpp
# End Source File
# Begin Source File

SOURCE=.\strings.h
# End Source File
# Begin Source File

SOURCE=.\subgradient.cpp
# End Source File
# Begin Source File

SOURCE=.\subgradient.h
# End Source File
# Begin Source File

SOURCE=.\subsetteefunction.cpp
# End Source File
# Begin Source File

SOURCE=.\subsetteefunction.h
# End Source File
# Begin Source File

SOURCE=.\surfacenearesttool.cpp
# End Source File
# Begin Source File

SOURCE=.\surfacenearesttool.h
# End Source File
# Begin Source File

SOURCE=.\surfaceseries.cpp
# End Source File
# Begin Source File

SOURCE=.\surfaceseries.h
# End Source File
# Begin Source File

SOURCE=.\surfacesides.cpp
# End Source File
# Begin Source File

SOURCE=.\surfacesides.h
# End Source File
# Begin Source File

SOURCE=.\svgexport.cpp
# End Source File
# Begin Source File

SOURCE=.\svgexport.h
# End Source File
# Begin Source File

SOURCE=.\tablelegend.cpp
# End Source File
# Begin Source File

SOURCE=.\tablelegend.h
# End Source File
# Begin Source File

SOURCE=.\tagcloudseries.cpp
# End Source File
# Begin Source File

SOURCE=.\tagcloudseries.h
# End Source File
# Begin Source File

SOURCE=.\tchart.cpp
# End Source File
# Begin Source File

SOURCE=.\tchart.h
# End Source File
# Begin Source File

SOURCE=.\teecustomshape.cpp
# End Source File
# Begin Source File

SOURCE=.\teecustomshape.h
# End Source File
# Begin Source File

SOURCE=.\teefilter.cpp
# End Source File
# Begin Source File

SOURCE=.\teefilter.h
# End Source File
# Begin Source File

SOURCE=.\teefont.cpp
# End Source File
# Begin Source File

SOURCE=.\teefont.h
# End Source File
# Begin Source File

SOURCE=.\teefunction.cpp
# End Source File
# Begin Source File

SOURCE=.\teefunction.h
# End Source File
# Begin Source File

SOURCE=.\teeopengl.cpp
# End Source File
# Begin Source File

SOURCE=.\teeopengl.h
# End Source File
# Begin Source File

SOURCE=.\teepicture.cpp
# End Source File
# Begin Source File

SOURCE=.\teepicture.h
# End Source File
# Begin Source File

SOURCE=.\teepoint2d.cpp
# End Source File
# Begin Source File

SOURCE=.\teepoint2d.h
# End Source File
# Begin Source File

SOURCE=.\teepoint3d.cpp
# End Source File
# Begin Source File

SOURCE=.\teepoint3d.h
# End Source File
# Begin Source File

SOURCE=.\teerect.cpp
# End Source File
# Begin Source File

SOURCE=.\teerect.h
# End Source File
# Begin Source File

SOURCE=.\teeshadow.cpp
# End Source File
# Begin Source File

SOURCE=.\teeshadow.h
# End Source File
# Begin Source File

SOURCE=.\teeshape.cpp
# End Source File
# Begin Source File

SOURCE=.\teeshape.h
# End Source File
# Begin Source File

SOURCE=.\teeshapepanel.cpp
# End Source File
# Begin Source File

SOURCE=.\teeshapepanel.h
# End Source File
# Begin Source File

SOURCE=.\text3dtool.cpp
# End Source File
# Begin Source File

SOURCE=.\text3dtool.h
# End Source File
# Begin Source File

SOURCE=.\textexport.cpp
# End Source File
# Begin Source File

SOURCE=.\textexport.h
# End Source File
# Begin Source File

SOURCE=.\tilefilter.cpp
# End Source File
# Begin Source File

SOURCE=.\tilefilter.h
# End Source File
# Begin Source File

SOURCE=.\titles.cpp
# End Source File
# Begin Source File

SOURCE=.\titles.h
# End Source File
# Begin Source File

SOURCE=.\toollist.cpp
# End Source File
# Begin Source File

SOURCE=.\toollist.h
# End Source File
# Begin Source File

SOURCE=.\tools.cpp
# End Source File
# Begin Source File

SOURCE=.\tools.h
# End Source File
# Begin Source File

SOURCE=.\towerseries.cpp
# End Source File
# Begin Source File

SOURCE=.\towerseries.h
# End Source File
# Begin Source File

SOURCE=.\transposeseriestool.cpp
# End Source File
# Begin Source File

SOURCE=.\transposeseriestool.h
# End Source File
# Begin Source File

SOURCE=.\trendfunction.cpp
# End Source File
# Begin Source File

SOURCE=.\trendfunction.h
# End Source File
# Begin Source File

SOURCE=.\trisurfaceseries.cpp
# End Source File
# Begin Source File

SOURCE=.\trisurfaceseries.h
# End Source File
# Begin Source File

SOURCE=.\valuelist.cpp
# End Source File
# Begin Source File

SOURCE=.\valuelist.h
# End Source File
# Begin Source File

SOURCE=.\valuelists.cpp
# End Source File
# Begin Source File

SOURCE=.\valuelists.h
# End Source File
# Begin Source File

SOURCE=.\vector3dseries.cpp
# End Source File
# Begin Source File

SOURCE=.\vector3dseries.h
# End Source File
# Begin Source File

SOURCE=.\videoplayertool.cpp
# End Source File
# Begin Source File

SOURCE=.\videoplayertool.h
# End Source File
# Begin Source File

SOURCE=.\videotool.cpp
# End Source File
# Begin Source File

SOURCE=.\videotool.h
# End Source File
# Begin Source File

SOURCE=.\volumepipeseries.cpp
# End Source File
# Begin Source File

SOURCE=.\volumepipeseries.h
# End Source File
# Begin Source File

SOURCE=.\volumeseries.cpp
# End Source File
# Begin Source File

SOURCE=.\volumeseries.h
# End Source File
# Begin Source File

SOURCE=.\wall.cpp
# End Source File
# Begin Source File

SOURCE=.\wall.h
# End Source File
# Begin Source File

SOURCE=.\walls.cpp
# End Source File
# Begin Source File

SOURCE=.\walls.h
# End Source File
# Begin Source File

SOURCE=.\waterfallseries.cpp
# End Source File
# Begin Source File

SOURCE=.\waterfallseries.h
# End Source File
# Begin Source File

SOURCE=.\windroseseries.cpp
# End Source File
# Begin Source File

SOURCE=.\windroseseries.h
# End Source File
# Begin Source File

SOURCE=.\worldseries.cpp
# End Source File
# Begin Source File

SOURCE=.\worldseries.h
# End Source File
# Begin Source File

SOURCE=.\xamlexport.cpp
# End Source File
# Begin Source File

SOURCE=.\xamlexport.h
# End Source File
# Begin Source File

SOURCE=.\xlsexport.cpp
# End Source File
# Begin Source File

SOURCE=.\xlsexport.h
# End Source File
# Begin Source File

SOURCE=.\xmlexport.cpp
# End Source File
# Begin Source File

SOURCE=.\xmlexport.h
# End Source File
# Begin Source File

SOURCE=.\zoom.cpp
# End Source File
# Begin Source File

SOURCE=.\zoom.h
# End Source File
# Begin Source File

SOURCE=.\zoomfilter.cpp
# End Source File
# Begin Source File

SOURCE=.\zoomfilter.h
# End Source File
# End Group
# Begin Source File

SOURCE=.\ReadMe.txt
# End Source File
# End Target
# End Project
# Section dataPlot : {009E4459-2A9E-4B2A-AB6B-98B2078F41F6}
# 	2:5:Class:CClockSeries
# 	2:10:HeaderFile:clockseries.h
# 	2:8:ImplFile:clockseries.cpp
# End Section
# Section dataPlot : {41CDCCD7-8878-49D8-8581-0EDCDCE5E88D}
# 	2:5:Class:CToolList
# 	2:10:HeaderFile:toollist.h
# 	2:8:ImplFile:toollist.cpp
# End Section
# Section dataPlot : {19B4503E-F54C-4336-83AF-EEF8B30DDC27}
# 	2:5:Class:CSubsetTeeFunction
# 	2:10:HeaderFile:subsetteefunction.h
# 	2:8:ImplFile:subsetteefunction.cpp
# End Section
# Section dataPlot : {8097EB99-1F8E-433C-89B0-D8DE32A4A9C0}
# 	2:5:Class:CColorFilter
# 	2:10:HeaderFile:colorfilter.h
# 	2:8:ImplFile:colorfilter.cpp
# End Section
# Section dataPlot : {A542EF07-2CDA-4617-8EAC-6795425814FA}
# 	2:5:Class:CAnnotationTool
# 	2:10:HeaderFile:annotationtool.h
# 	2:8:ImplFile:annotationtool.cpp
# End Section
# Section dataPlot : {E1C73990-ABEC-4354-801A-3224B3F8C77A}
# 	2:5:Class:CCursorTool
# 	2:10:HeaderFile:cursortool.h
# 	2:8:ImplFile:cursortool.cpp
# End Section
# Section dataPlot : {32C8B5F5-AD20-4F33-ADA7-1D028D1CE5D9}
# 	2:5:Class:CLinearGauge
# 	2:10:HeaderFile:lineargauge.h
# 	2:8:ImplFile:lineargauge.cpp
# End Section
# Section dataPlot : {872026D0-BD58-42CC-961B-3640C024609C}
# 	2:5:Class:CIsoSurfaceSeries
# 	2:10:HeaderFile:isosurfaceseries.h
# 	2:8:ImplFile:isosurfaceseries.cpp
# End Section
# Section dataPlot : {8B8D64CB-8B2E-45B6-B859-5B87E6027847}
# 	2:5:Class:CCLVFunction
# 	2:10:HeaderFile:clvfunction.h
# 	2:8:ImplFile:clvfunction.cpp
# End Section
# Section dataPlot : {193FD985-9667-4CFC-B92B-BBF3D1A3E045}
# 	2:5:Class:CPanel
# 	2:10:HeaderFile:panel.h
# 	2:8:ImplFile:panel.cpp
# End Section
# Section dataPlot : {62335E7B-C1E5-458B-B1A8-F6F3380A6D47}
# 	2:5:Class:CAxisGridPen
# 	2:10:HeaderFile:axisgridpen.h
# 	2:8:ImplFile:axisgridpen.cpp
# End Section
# Section dataPlot : {FBBA3360-E18A-482A-BFAE-8A19C2625E01}
# 	2:5:Class:CBlurFilter
# 	2:10:HeaderFile:blurfilter.h
# 	2:8:ImplFile:blurfilter.cpp
# End Section
# Section dataPlot : {A9996639-1FDE-4A8C-8865-0DDF66C784AD}
# 	2:5:Class:CPageNumTool
# 	2:10:HeaderFile:pagenumtool.h
# 	2:8:ImplFile:pagenumtool.cpp
# End Section
# Section dataPlot : {D187BA8A-2D47-472B-8128-B8F1F9D8C2FC}
# 	2:5:Class:CPrinterSettings
# 	2:10:HeaderFile:printersettings.h
# 	2:8:ImplFile:printersettings.cpp
# End Section
# Section dataPlot : {ECA0BAC9-08DC-452A-BC80-26405650242D}
# 	2:5:Class:CDrawLineList
# 	2:10:HeaderFile:drawlinelist.h
# 	2:8:ImplFile:drawlinelist.cpp
# End Section
# Section dataPlot : {CAA881DC-AD98-4D36-9C1D-E2D722AF26E1}
# 	2:5:Class:CTeeFont
# 	2:10:HeaderFile:teefont.h
# 	2:8:ImplFile:teefont.cpp
# End Section
# Section dataPlot : {F1156040-7B16-48AA-85A7-DA3332E46D5F}
# 	2:5:Class:CDataTableTool
# 	2:10:HeaderFile:datatabletool.h
# 	2:8:ImplFile:datatabletool.cpp
# End Section
# Section dataPlot : {B1A083C0-CDC7-418C-95FB-ABAF6707F66F}
# 	2:5:Class:CColorLineTool
# 	2:10:HeaderFile:colorlinetool.h
# 	2:8:ImplFile:colorlinetool.cpp
# End Section
# Section dataPlot : {852ED3B2-CA4C-473A-8533-20DFAD3B84D9}
# 	2:5:Class:CNumericMarker
# 	2:10:HeaderFile:numericmarker.h
# 	2:8:ImplFile:numericmarker.cpp
# End Section
# Section dataPlot : {C33203C1-74BE-42FF-9432-0A2952DE3481}
# 	2:5:Class:CErrorSeries
# 	2:10:HeaderFile:errorseries.h
# 	2:8:ImplFile:errorseries.cpp
# End Section
# Section dataPlot : {21CC63AE-BF53-41F9-8871-4029EC3B388F}
# 	2:5:Class:CMACDFunction
# 	2:10:HeaderFile:macdfunction.h
# 	2:8:ImplFile:macdfunction.cpp
# End Section
# Section dataPlot : {F2E58750-515C-496F-B96A-693C36D0C3DE}
# 	2:5:Class:CADXFunction
# 	2:10:HeaderFile:adxfunction.h
# 	2:8:ImplFile:adxfunction.cpp
# End Section
# Section dataPlot : {5F56734A-1E58-432B-872C-9116B314D304}
# 	2:5:Class:CXLSExport
# 	2:10:HeaderFile:xlsexport.h
# 	2:8:ImplFile:xlsexport.cpp
# End Section
# Section dataPlot : {4C47F2E5-B222-4819-B0A8-23123BBCFC66}
# 	2:5:Class:CTeeRect
# 	2:10:HeaderFile:teerect.h
# 	2:8:ImplFile:teerect.cpp
# End Section
# Section dataPlot : {335E0902-9251-4F18-8037-0B242F42B16C}
# 	2:5:Class:CRectangleTool
# 	2:10:HeaderFile:rectangletool.h
# 	2:8:ImplFile:rectangletool.cpp
# End Section
# Section dataPlot : {00746A35-1BCD-4115-83CB-30D9CD1CA389}
# 	2:5:Class:CAxisArrowTool
# 	2:10:HeaderFile:axisarrowtool.h
# 	2:8:ImplFile:axisarrowtool.cpp
# End Section
# Section dataPlot : {85AD8716-345B-43BB-8283-FB0A529F90F1}
# 	2:5:Class:CAnnotationCallout
# 	2:10:HeaderFile:annotationcallout.h
# 	2:8:ImplFile:annotationcallout.cpp
# End Section
# Section dataPlot : {534DC73B-3B82-4549-92A4-9BF3C7896EA8}
# 	2:5:Class:CRenkoSeries
# 	2:10:HeaderFile:renkoseries.h
# 	2:8:ImplFile:renkoseries.cpp
# End Section
# Section dataPlot : {0D1E861A-4EB6-4B7C-A081-60BD11E470F2}
# 	2:5:Class:CGaugeSeries
# 	2:10:HeaderFile:gaugeseries.h
# 	2:8:ImplFile:gaugeseries.cpp
# End Section
# Section dataPlot : {8BC26020-385F-4CB4-BDD5-B8665B29532D}
# 	2:5:Class:CHighLowSeries
# 	2:10:HeaderFile:highlowseries.h
# 	2:8:ImplFile:highlowseries.cpp
# End Section
# Section dataPlot : {E7C3E2AC-2E19-446F-88AC-237661961992}
# 	2:5:Class:CMarksSymbol
# 	2:10:HeaderFile:markssymbol.h
# 	2:8:ImplFile:markssymbol.cpp
# End Section
# Section dataPlot : {88C1B7A8-EDF1-4236-813E-BDFB74EE521B}
# 	2:5:Class:CHueLumSatFilter
# 	2:10:HeaderFile:huelumsatfilter.h
# 	2:8:ImplFile:huelumsatfilter.cpp
# End Section
# Section dataPlot : {49AB5E31-C5CC-462E-9850-07305B51A936}
# 	2:5:Class:CAxisLabels
# 	2:10:HeaderFile:axislabels.h
# 	2:8:ImplFile:axislabels.cpp
# End Section
# Section dataPlot : {936A835C-57E9-4B90-9E6F-6DC6C0866C65}
# 	2:5:Class:CLinkTool
# 	2:10:HeaderFile:linktool.h
# 	2:8:ImplFile:linktool.cpp
# End Section
# Section dataPlot : {66906253-4755-480D-82B1-9492F09C7B9B}
# 	2:5:Class:CBoxPlotSeries
# 	2:10:HeaderFile:boxplotseries.h
# 	2:8:ImplFile:boxplotseries.cpp
# End Section
# Section dataPlot : {2B24932B-EBF7-4FDC-B894-2283DB7D526F}
# 	2:5:Class:CExplodedSlices
# 	2:10:HeaderFile:explodedslices.h
# 	2:8:ImplFile:explodedslices.cpp
# End Section
# Section dataPlot : {BF8FB65B-E0FF-4BF1-A2D3-7FCB9AF09F73}
# 	2:5:Class:CHistogramFunction
# 	2:10:HeaderFile:histogramfunction.h
# 	2:8:ImplFile:histogramfunction.cpp
# End Section
# Section dataPlot : {A6B24B01-657E-4A5C-844C-A3B1251EE1D4}
# 	2:5:Class:CFunnelSeries
# 	2:10:HeaderFile:funnelseries.h
# 	2:8:ImplFile:funnelseries.cpp
# End Section
# Section dataPlot : {BBB0AC77-86E9-4A8B-9416-6C4D8662EDE5}
# 	2:5:Class:CScrollBarThumb
# 	2:10:HeaderFile:scrollbarthumb.h
# 	2:8:ImplFile:scrollbarthumb.cpp
# End Section
# Section dataPlot : {F9305261-4001-43FE-A40C-8BD11947C491}
# 	2:5:Class:CFramedBorder
# 	2:10:HeaderFile:framedborder.h
# 	2:8:ImplFile:framedborder.cpp
# End Section
# Section dataPlot : {487AF4BA-21D0-4E2F-8B72-5D7F948DDCB4}
# 	2:5:Class:CNearestTool
# 	2:10:HeaderFile:nearesttool.h
# 	2:8:ImplFile:nearesttool.cpp
# End Section
# Section dataPlot : {91606CC5-D423-4446-8659-69C3E31494A9}
# 	2:5:Class:CSpacing
# 	2:10:HeaderFile:spacing.h
# 	2:8:ImplFile:spacing.cpp
# End Section
# Section dataPlot : {0E0F46CC-ADEF-4D24-9925-3E0D224E8A7D}
# 	2:5:Class:CSmithSeries
# 	2:10:HeaderFile:smithseries.h
# 	2:8:ImplFile:smithseries.cpp
# End Section
# Section dataPlot : {2FE69573-C208-4DC1-B53E-48677964220F}
# 	2:5:Class:CArrowSeries
# 	2:10:HeaderFile:arrowseries.h
# 	2:8:ImplFile:arrowseries.cpp
# End Section
# Section dataPlot : {2986DB67-DA5E-40A6-BE81-E9ECC3F02C90}
# 	2:5:Class:CLegendTitle
# 	2:10:HeaderFile:legendtitle.h
# 	2:8:ImplFile:legendtitle.cpp
# End Section
# Section dataPlot : {ECDFF469-41D8-4F7B-9250-C84A307FA105}
# 	2:5:Class:CXAMLExport
# 	2:10:HeaderFile:xamlexport.h
# 	2:8:ImplFile:xamlexport.cpp
# End Section
# Section dataPlot : {99CBF1EB-64D1-4AFC-A7F7-4CBA70992561}
# 	2:5:Class:CGrayScaleFilter
# 	2:10:HeaderFile:grayscalefilter.h
# 	2:8:ImplFile:grayscalefilter.cpp
# End Section
# Section dataPlot : {57C96CD8-4316-4222-B4EA-9ADDA9CAC20C}
# 	2:5:Class:CHorizHistogramSeries
# 	2:10:HeaderFile:horizhistogramseries.h
# 	2:8:ImplFile:horizhistogramseries.cpp
# End Section
# Section dataPlot : {461BBBC1-0138-4B40-81C9-E7885AFBDD40}
# 	2:5:Class:CPointer
# 	2:10:HeaderFile:pointer.h
# 	2:8:ImplFile:pointer.cpp
# End Section
# Section dataPlot : {262477EC-9964-4CEF-9127-B0521EB378BB}
# 	2:5:Class:CMosaicFilter
# 	2:10:HeaderFile:mosaicfilter.h
# 	2:8:ImplFile:mosaicfilter.cpp
# End Section
# Section dataPlot : {11950626-7E9B-4473-B01E-CAF6C4648C11}
# 	2:5:Class:COrgSeries
# 	2:10:HeaderFile:orgseries.h
# 	2:8:ImplFile:orgseries.cpp
# End Section
# Section dataPlot : {573B399A-75E6-4079-82F9-9C4895EF9CB7}
# 	2:5:Class:CMargins
# 	2:10:HeaderFile:margins.h
# 	2:8:ImplFile:margins.cpp
# End Section
# Section dataPlot : {BAE278AB-F06B-493B-B060-6B25D5C48E29}
# 	2:5:Class:CExpMovAvgFunction
# 	2:10:HeaderFile:expmovavgfunction.h
# 	2:8:ImplFile:expmovavgfunction.cpp
# End Section
# Section dataPlot : {585EF2DC-4645-40C3-AC68-A569978F12EB}
# 	2:5:Class:CHTMLExport
# 	2:10:HeaderFile:htmlexport.h
# 	2:8:ImplFile:htmlexport.cpp
# End Section
# Section dataPlot : {E0D983E0-EE24-445B-9E93-EE6B4D342786}
# 	2:5:Class:CGradient
# 	2:10:HeaderFile:gradient.h
# 	2:8:ImplFile:gradient.cpp
# End Section
# Section dataPlot : {22FDB456-9896-4D6F-B48C-82F84E26EF53}
# 	2:5:Class:CFibonacciTool
# 	2:10:HeaderFile:fibonaccitool.h
# 	2:8:ImplFile:fibonaccitool.cpp
# End Section
# Section dataPlot : {7E6A1018-D7B2-4585-9D43-2E32BC7E7006}
# 	2:5:Class:CEnvironment
# 	2:10:HeaderFile:environment.h
# 	2:8:ImplFile:environment.cpp
# End Section
# Section dataPlot : {615C007A-5CA3-4580-A495-1EC755E33C26}
# 	2:5:Class:CHighLowLineSeries
# 	2:10:HeaderFile:highlowlineseries.h
# 	2:8:ImplFile:highlowlineseries.cpp
# End Section
# Section dataPlot : {04A6AC54-0B24-46B6-8606-28895FED9551}
# 	2:5:Class:CMapSeries
# 	2:10:HeaderFile:mapseries.h
# 	2:8:ImplFile:mapseries.cpp
# End Section
# Section dataPlot : {2E6C8B07-3536-493C-8428-AACBFE973C8A}
# 	2:5:Class:CTeePoint2D
# 	2:10:HeaderFile:teepoint2d.h
# 	2:8:ImplFile:teepoint2d.cpp
# End Section
# Section dataPlot : {74373B5D-79BE-472A-B19C-1784E5684E5A}
# 	2:5:Class:CScroll
# 	2:10:HeaderFile:scroll.h
# 	2:8:ImplFile:scroll.cpp
# End Section
# Section dataPlot : {2E48CD4F-B190-4E84-9A5F-40D35133C19C}
# 	2:5:Class:CImport
# 	2:10:HeaderFile:import.h
# 	2:8:ImplFile:import.cpp
# End Section
# Section dataPlot : {898DD3CA-EE4D-4E29-8430-E7EAA6503B13}
# 	2:5:Class:CGLPosition
# 	2:10:HeaderFile:glposition.h
# 	2:8:ImplFile:glposition.cpp
# End Section
# Section dataPlot : {3B41BE1C-A7F4-4C59-AA59-104376904B34}
# 	2:5:Class:CSmoothPoints
# 	2:10:HeaderFile:smoothpoints.h
# 	2:8:ImplFile:smoothpoints.cpp
# End Section
# Section dataPlot : {75CED159-22DD-4BC1-90B3-2B71C03A3AE7}
# 	2:5:Class:CPrinter
# 	2:10:HeaderFile:printer.h
# 	2:8:ImplFile:printer.cpp
# End Section
# Section dataPlot : {84CC5DF7-D92C-411F-BF1B-FF1B0C053F08}
# 	2:5:Class:CChartAxisPen
# 	2:10:HeaderFile:chartaxispen.h
# 	2:8:ImplFile:chartaxispen.cpp
# End Section
# Section dataPlot : {2BD3FEDC-583E-4F97-BD6A-2F560A5E6B0C}
# 	2:5:Class:CCompressFunction
# 	2:10:HeaderFile:compressfunction.h
# 	2:8:ImplFile:compressfunction.cpp
# End Section
# Section dataPlot : {92481035-6D58-4BD4-81BE-D3B6904DEAD0}
# 	2:5:Class:CBevelFilter
# 	2:10:HeaderFile:bevelfilter.h
# 	2:8:ImplFile:bevelfilter.cpp
# End Section
# Section dataPlot : {1A86275D-45F4-4B29-9397-84F0E30A70BB}
# 	2:5:Class:CSeriesGroups
# 	2:10:HeaderFile:seriesgroups.h
# 	2:8:ImplFile:seriesgroups.cpp
# End Section
# Section dataPlot : {6A38A032-AF85-4CE1-9D5D-D9C773FEB8A3}
# 	2:5:Class:CText3DTool
# 	2:10:HeaderFile:text3dtool.h
# 	2:8:ImplFile:text3dtool.cpp
# End Section
# Section dataPlot : {DB5480BA-7F0B-41E5-815C-3358B3A01A59}
# 	2:5:Class:CDragPointTool
# 	2:10:HeaderFile:dragpointtool.h
# 	2:8:ImplFile:dragpointtool.cpp
# End Section
# Section dataPlot : {C7D93468-7413-4888-9EA6-D3D4DD9C4F38}
# 	2:5:Class:CMovingAvgFunction
# 	2:10:HeaderFile:movingavgfunction.h
# 	2:8:ImplFile:movingavgfunction.cpp
# End Section
# Section dataPlot : {9E71A825-8554-4501-B72F-83E5AA82C35F}
# 	2:5:Class:CSoftenFilter
# 	2:10:HeaderFile:softenfilter.h
# 	2:8:ImplFile:softenfilter.cpp
# End Section
# Section dataPlot : {2C3BF213-1FDF-4175-8CDA-BBC8D976126E}
# 	2:5:Class:CContrastFilter
# 	2:10:HeaderFile:contrastfilter.h
# 	2:8:ImplFile:contrastfilter.cpp
# End Section
# Section dataPlot : {809C6B72-1134-4CB9-B2BD-14927EAD6E22}
# 	2:5:Class:CTeeShadow
# 	2:10:HeaderFile:teeshadow.h
# 	2:8:ImplFile:teeshadow.cpp
# End Section
# Section dataPlot : {D8F55350-A1EC-4459-AA69-DFFCDAF2992A}
# 	2:5:Class:COrgItemCollection
# 	2:10:HeaderFile:orgitemcollection.h
# 	2:8:ImplFile:orgitemcollection.cpp
# End Section
# Section dataPlot : {5F90D762-B0EE-4E2F-A16B-61BB57B6F883}
# 	2:5:Class:CSeriesMarkPosition
# 	2:10:HeaderFile:seriesmarkposition.h
# 	2:8:ImplFile:seriesmarkposition.cpp
# End Section
# Section dataPlot : {B858DC45-4E07-450D-92AD-25CFF13AC862}
# 	2:5:Class:CPage
# 	2:10:HeaderFile:page.h
# 	2:8:ImplFile:page.cpp
# End Section
# Section dataPlot : {75295A72-43B5-418C-BA98-BE48FC7DE7C5}
# 	2:5:Class:CXMLExport
# 	2:10:HeaderFile:xmlexport.h
# 	2:8:ImplFile:xmlexport.cpp
# End Section
# Section dataPlot : {142CE71E-2D1B-4A48-9C74-1FD531F2953A}
# 	2:5:Class:CTransposeSeriesTool
# 	2:10:HeaderFile:transposeseriestool.h
# 	2:8:ImplFile:transposeseriestool.cpp
# End Section
# Section dataPlot : {3CA138E7-5DED-423C-857F-609F39AFB3F0}
# 	2:5:Class:CTeeShape
# 	2:10:HeaderFile:teeshape.h
# 	2:8:ImplFile:teeshape.cpp
# End Section
# Section dataPlot : {91464DD7-1EF0-4E2B-88AD-489B171A00D9}
# 	2:5:Class:CPoint3DSeries
# 	2:10:HeaderFile:point3dseries.h
# 	2:8:ImplFile:point3dseries.cpp
# End Section
# Section dataPlot : {7BA6E7AA-E5FC-451C-9056-D437AA074D27}
# 	2:5:Class:CSARFunction
# 	2:10:HeaderFile:sarfunction.h
# 	2:8:ImplFile:sarfunction.cpp
# End Section
# Section dataPlot : {03EFAF27-3524-4DD2-9EA3-8546EA16FD94}
# 	2:5:Class:CRMSFunction
# 	2:10:HeaderFile:rmsfunction.h
# 	2:8:ImplFile:rmsfunction.cpp
# End Section
# Section dataPlot : {54F59ACA-6A98-4839-A5D8-FCBE40B458BC}
# 	2:5:Class:CBollingerFunction
# 	2:10:HeaderFile:bollingerfunction.h
# 	2:8:ImplFile:bollingerfunction.cpp
# End Section
# Section dataPlot : {54EB0BAD-76A8-4DB2-8632-89EEFB9C5CF1}
# 	2:5:Class:CLegendScrollBarTool
# 	2:10:HeaderFile:legendscrollbartool.h
# 	2:8:ImplFile:legendscrollbartool.cpp
# End Section
# Section dataPlot : {5B4B3F07-2EE7-48BE-8F04-CC603959C88F}
# 	2:5:Class:CGaugeSeriesPointer
# 	2:10:HeaderFile:gaugeseriespointer.h
# 	2:8:ImplFile:gaugeseriespointer.cpp
# End Section
# Section dataPlot : {7E60AF48-F4E1-4C2C-88C3-6AF354DE9B1A}
# 	2:5:Class:CHorizLineSeries
# 	2:10:HeaderFile:horizlineseries.h
# 	2:8:ImplFile:horizlineseries.cpp
# End Section
# Section dataPlot : {6D8C1B52-50BC-4ECF-ABB6-1C06A3BC9520}
# 	2:5:Class:CContourMarks
# 	2:10:HeaderFile:contourmarks.h
# 	2:8:ImplFile:contourmarks.cpp
# End Section
# Section dataPlot : {E6E22954-BA25-4D63-A2EE-BE938746CB06}
# 	2:5:Class:CModeFunction
# 	2:10:HeaderFile:modefunction.h
# 	2:8:ImplFile:modefunction.cpp
# End Section
# Section dataPlot : {F2DD0F5F-1E6F-493C-87AF-02ED0D228B3A}
# 	2:5:Class:CChartHiddenPen
# 	2:10:HeaderFile:charthiddenpen.h
# 	2:8:ImplFile:charthiddenpen.cpp
# End Section
# Section dataPlot : {C01E2137-30C3-4F62-977C-70F211750C45}
# 	2:5:Class:CSurfaceSeries
# 	2:10:HeaderFile:surfaceseries.h
# 	2:8:ImplFile:surfaceseries.cpp
# End Section
# Section dataPlot : {437752AD-402E-47C8-A712-79BEB199DB7E}
# 	2:5:Class:CMirrorFilter
# 	2:10:HeaderFile:mirrorfilter.h
# 	2:8:ImplFile:mirrorfilter.cpp
# End Section
# Section dataPlot : {D88E90F1-17A7-4B13-B6B4-AB5344C0C32A}
# 	2:5:Class:CAxisScrollTool
# 	2:10:HeaderFile:axisscrolltool.h
# 	2:8:ImplFile:axisscrolltool.cpp
# End Section
# Section dataPlot : {21E55447-E34A-4C87-810B-26C784CFCD44}
# 	2:5:Class:CSeriesStatsTool
# 	2:10:HeaderFile:seriesstatstool.h
# 	2:8:ImplFile:seriesstatstool.cpp
# End Section
# Section dataPlot : {E946191E-9BF3-4FDF-9A9F-97FB798FC797}
# 	2:5:Class:CDrawLine
# 	2:10:HeaderFile:drawline.h
# 	2:8:ImplFile:drawline.cpp
# End Section
# Section dataPlot : {AE0BEF36-D1EC-4B81-BF59-38A8C8CE4DCF}
# 	2:5:Class:CTools
# 	2:10:HeaderFile:tools.h
# 	2:8:ImplFile:tools.cpp
# End Section
# Section dataPlot : {004303F2-EE70-4342-B85A-01D964725DDF}
# 	2:5:Class:CMapPolygonList
# 	2:10:HeaderFile:mappolygonlist.h
# 	2:8:ImplFile:mappolygonlist.cpp
# End Section
# Section dataPlot : {F09906CB-3E06-47B9-A16E-20E6D73CCE73}
# 	2:5:Class:CSubGradient
# 	2:10:HeaderFile:subgradient.h
# 	2:8:ImplFile:subgradient.cpp
# End Section
# Section dataPlot : {4556AD4F-AEC5-4C29-837A-9531984DE6EB}
# 	2:5:Class:CZoom
# 	2:10:HeaderFile:zoom.h
# 	2:8:ImplFile:zoom.cpp
# End Section
# Section dataPlot : {518A4D6F-69C9-4EE5-8E7A-984D45EC2992}
# 	2:5:Class:CFrameBrush
# 	2:10:HeaderFile:framebrush.h
# 	2:8:ImplFile:framebrush.cpp
# End Section
# Section dataPlot : {A6E6CA47-7656-4E3E-8190-E31264F5D233}
# 	2:5:Class:COrgShape
# 	2:10:HeaderFile:orgshape.h
# 	2:8:ImplFile:orgshape.cpp
# End Section
# Section dataPlot : {0CF2CD0F-B6B0-4CEB-A143-25D37C8EE788}
# 	2:5:Class:CImagePointSeries
# 	2:10:HeaderFile:imagepointseries.h
# 	2:8:ImplFile:imagepointseries.cpp
# End Section
# Section dataPlot : {10C77E47-24A3-4994-8F82-94EA32890EA7}
# 	2:5:Class:CCalendarSeries
# 	2:10:HeaderFile:calendarseries.h
# 	2:8:ImplFile:calendarseries.cpp
# End Section
# Section dataPlot : {9E781C98-CCE0-49B6-B352-699D559C695F}
# 	2:5:Class:CTriSurfaceSeries
# 	2:10:HeaderFile:trisurfaceseries.h
# 	2:8:ImplFile:trisurfaceseries.cpp
# End Section
# Section dataPlot : {10CE1B06-DFDD-4E0E-9AE7-C0A52796BE97}
# 	2:5:Class:CTrendFunction
# 	2:10:HeaderFile:trendfunction.h
# 	2:8:ImplFile:trendfunction.cpp
# End Section
# Section dataPlot : {7CD97E43-6830-46FC-B135-D1958AE4C0AA}
# 	2:5:Class:CAxes
# 	2:10:HeaderFile:axes.h
# 	2:8:ImplFile:axes.cpp
# End Section
# Section dataPlot : {BC0CD837-1A8F-4C35-9C93-CCB2FE216F88}
# 	2:5:Class:CMarks
# 	2:10:HeaderFile:marks.h
# 	2:8:ImplFile:marks.cpp
# End Section
# Section dataPlot : {509C90B9-E777-449C-B42A-C746538E7F08}
# 	2:5:Class:CSeriesBandTool
# 	2:10:HeaderFile:seriesbandtool.h
# 	2:8:ImplFile:seriesbandtool.cpp
# End Section
# Section dataPlot : {5DF2C570-75C1-4660-B366-F2C346CBE092}
# 	2:5:Class:CFilterItems
# 	2:10:HeaderFile:filteritems.h
# 	2:8:ImplFile:filteritems.cpp
# End Section
# Section dataPlot : {DA158A28-F0E4-468A-A1C1-84D1B53A440C}
# 	2:5:Class:CEPSExport
# 	2:10:HeaderFile:epsexport.h
# 	2:8:ImplFile:epsexport.cpp
# End Section
# Section dataPlot : {5B196B79-CAE8-49E7-A321-CD96A3616D2F}
# 	2:5:Class:CFibonacciLevels
# 	2:10:HeaderFile:fibonaccilevels.h
# 	2:8:ImplFile:fibonaccilevels.cpp
# End Section
# Section dataPlot : {74538277-5473-4DDB-94B3-442590CC03D9}
# 	2:5:Class:CCalendarCellUpper
# 	2:10:HeaderFile:calendarcellupper.h
# 	2:8:ImplFile:calendarcellupper.cpp
# End Section
# Section dataPlot : {171DBCED-10EB-4445-AC86-ECBC6486924A}
# 	2:5:Class:CRotateFilter
# 	2:10:HeaderFile:rotatefilter.h
# 	2:8:ImplFile:rotatefilter.cpp
# End Section
# Section dataPlot : {F81057F8-F2D4-4125-95DC-36E1116F6D40}
# 	2:5:Class:CChartImageTool
# 	2:10:HeaderFile:chartimagetool.h
# 	2:8:ImplFile:chartimagetool.cpp
# End Section
# Section dataPlot : {6978D18C-EA1A-4302-A1AE-F76C12A60EAF}
# 	2:5:Class:CWalls
# 	2:10:HeaderFile:walls.h
# 	2:8:ImplFile:walls.cpp
# End Section
# Section dataPlot : {6F8BDC44-2820-4BC9-934C-4933514E7DB0}
# 	2:5:Class:CNumericGauge
# 	2:10:HeaderFile:numericgauge.h
# 	2:8:ImplFile:numericgauge.cpp
# End Section
# Section dataPlot : {8D0BD38D-8B31-4189-A9E8-782A501EE943}
# 	2:5:Class:CTowerSeries
# 	2:10:HeaderFile:towerseries.h
# 	2:8:ImplFile:towerseries.cpp
# End Section
# Section dataPlot : {7C802AA5-86DB-4451-9380-EAD5B122F37A}
# 	2:5:Class:CHorizBarSeries
# 	2:10:HeaderFile:horizbarseries.h
# 	2:8:ImplFile:horizbarseries.cpp
# End Section
# Section dataPlot : {8E052508-B9B9-4792-B3A3-8FD23440D281}
# 	2:5:Class:CFastLineSeries
# 	2:10:HeaderFile:fastlineseries.h
# 	2:8:ImplFile:fastlineseries.cpp
# End Section
# Section dataPlot : {99AC72D4-5370-4648-A9FE-B0971C6D62FE}
# 	2:5:Class:CTeePoint3D
# 	2:10:HeaderFile:teepoint3d.h
# 	2:8:ImplFile:teepoint3d.cpp
# End Section
# Section dataPlot : {7B37E5DD-9723-435B-BDE2-042C04314E23}
# 	2:5:Class:CCustom3DPaletteSeries
# 	2:10:HeaderFile:custom3dpaletteseries.h
# 	2:8:ImplFile:custom3dpaletteseries.cpp
# End Section
# Section dataPlot : {C593E77C-0054-4EC6-8BDF-E5BF5BDE37A1}
# 	2:5:Class:CMapPolygon
# 	2:10:HeaderFile:mappolygon.h
# 	2:8:ImplFile:mappolygon.cpp
# End Section
# Section dataPlot : {EDF445C6-F88A-42CE-8D9C-A389295D58F4}
# 	2:5:Class:CErrorBarSeries
# 	2:10:HeaderFile:errorbarseries.h
# 	2:8:ImplFile:errorbarseries.cpp
# End Section
# Section dataPlot : {AAA6AE5B-B976-459F-9380-E85B3F779880}
# 	2:5:Class:CWorldSeries
# 	2:10:HeaderFile:worldseries.h
# 	2:8:ImplFile:worldseries.cpp
# End Section
# Section dataPlot : {766ECCD5-E868-4A5A-9CBD-CBCC657ECF9B}
# 	2:5:Class:CPointFigureSeries
# 	2:10:HeaderFile:pointfigureseries.h
# 	2:8:ImplFile:pointfigureseries.cpp
# End Section
# Section dataPlot : {FD061005-C104-46F2-BCCA-DC854395495F}
# 	2:5:Class:CHistogramSeries
# 	2:10:HeaderFile:histogramseries.h
# 	2:8:ImplFile:histogramseries.cpp
# End Section
# Section dataPlot : {79DCB259-5717-4D2C-8C9D-9E1375BC4C25}
# 	2:5:Class:CSeriesMarksPositions
# 	2:10:HeaderFile:seriesmarkspositions.h
# 	2:8:ImplFile:seriesmarkspositions.cpp
# End Section
# Section dataPlot : {F5C06E6C-1BC6-4F98-B1F0-B55CD1161A2A}
# 	2:5:Class:CRSIFunction
# 	2:10:HeaderFile:rsifunction.h
# 	2:8:ImplFile:rsifunction.cpp
# End Section
# Section dataPlot : {94741F5B-60CC-42FE-89DD-287310F0D751}
# 	2:5:Class:CCurveFittingFunction
# 	2:10:HeaderFile:curvefittingfunction.h
# 	2:8:ImplFile:curvefittingfunction.cpp
# End Section
# Section dataPlot : {D5270C7E-5481-468A-91BB-87454E28AE7F}
# 	2:5:Class:CGanttSeries
# 	2:10:HeaderFile:ganttseries.h
# 	2:8:ImplFile:ganttseries.cpp
# End Section
# Section dataPlot : {425D090A-1024-4FAD-BD2D-16444A7ED15C}
# 	2:5:Class:CBarSeries
# 	2:10:HeaderFile:barseries.h
# 	2:8:ImplFile:barseries.cpp
# End Section
# Section dataPlot : {2C5E2D8A-E836-4527-A67D-AE7416F843D3}
# 	2:5:Class:CStrings
# 	2:10:HeaderFile:strings.h
# 	2:8:ImplFile:strings.cpp
# End Section
# Section dataPlot : {F6004561-2AAE-44DA-979D-EC7CB53DD15B}
# 	2:5:Class:CMetafileExport
# 	2:10:HeaderFile:metafileexport.h
# 	2:8:ImplFile:metafileexport.cpp
# End Section
# Section dataPlot : {F29662CB-EEED-4E0D-85E8-74BB6941ACC5}
# 	2:5:Class:CFrameTool
# 	2:10:HeaderFile:frametool.h
# 	2:8:ImplFile:frametool.cpp
# End Section
# Section dataPlot : {536C4B74-6E4F-447C-91B0-0D622193DDAC}
# 	2:5:Class:CShapeSeries
# 	2:10:HeaderFile:shapeseries.h
# 	2:8:ImplFile:shapeseries.cpp
# End Section
# Section dataPlot : {F75284F3-50CD-441C-B56A-782CBE93C83E}
# 	2:5:Class:CTeeCustomShape
# 	2:10:HeaderFile:teecustomshape.h
# 	2:8:ImplFile:teecustomshape.cpp
# End Section
# Section dataPlot : {B68C5D3C-E47C-4000-A548-7748AFC9262C}
# 	2:5:Class:CFilterRegion
# 	2:10:HeaderFile:filterregion.h
# 	2:8:ImplFile:filterregion.cpp
# End Section
# Section dataPlot : {BF3BA486-178D-4629-8B7C-DFB39BE2F891}
# 	2:5:Class:CSeriesAnimationTool
# 	2:10:HeaderFile:seriesanimationtool.h
# 	2:8:ImplFile:seriesanimationtool.cpp
# End Section
# Section dataPlot : {5227CC4F-BB80-4CD0-A107-55BDC81285E0}
# 	2:5:Class:CPVOFunction
# 	2:10:HeaderFile:pvofunction.h
# 	2:8:ImplFile:pvofunction.cpp
# End Section
# Section dataPlot : {0E0EE0BE-95D1-42C8-8624-E145CC10CEE2}
# 	2:5:Class:CSVGExport
# 	2:10:HeaderFile:svgexport.h
# 	2:8:ImplFile:svgexport.cpp
# End Section
# Section dataPlot : {F6773452-1717-4136-B268-A722FDC6BD71}
# 	2:5:Class:CBannerTool
# 	2:10:HeaderFile:bannertool.h
# 	2:8:ImplFile:bannertool.cpp
# End Section
# Section dataPlot : {4CC1844C-A1C1-4D97-9EB2-4D29385FE9BA}
# 	2:5:Class:CAntiAliasTool
# 	2:10:HeaderFile:antialiastool.h
# 	2:8:ImplFile:antialiastool.cpp
# End Section
# Section dataPlot : {59CE6014-FCD7-4854-AB61-7E66EF83F1E6}
# 	2:5:Class:CGridBandBrush
# 	2:10:HeaderFile:gridbandbrush.h
# 	2:8:ImplFile:gridbandbrush.cpp
# End Section
# Section dataPlot : {2C0D1571-C240-4C42-A090-73A927C3E332}
# 	2:5:Class:CGanttTool
# 	2:10:HeaderFile:gantttool.h
# 	2:8:ImplFile:gantttool.cpp
# End Section
# Section dataPlot : {C9E81247-A636-4015-B5FC-19143907753D}
# 	2:5:Class:CDeltaPointSeries
# 	2:10:HeaderFile:deltapointseries.h
# 	2:8:ImplFile:deltapointseries.cpp
# End Section
# Section dataPlot : {89C25521-4887-4AF5-9FAD-7FD07A264239}
# 	2:5:Class:CSurfaceSides
# 	2:10:HeaderFile:surfacesides.h
# 	2:8:ImplFile:surfacesides.cpp
# End Section
# Section dataPlot : {B0EC6752-F5EC-4F8C-87E3-EB6717A3E592}
# 	2:5:Class:CColorGridSeries
# 	2:10:HeaderFile:colorgridseries.h
# 	2:8:ImplFile:colorgridseries.cpp
# End Section
# Section dataPlot : {BC93A02E-14CF-4C44-817C-11E2E7BF6F12}
# 	2:5:Class:CPDFExport
# 	2:10:HeaderFile:pdfexport.h
# 	2:8:ImplFile:pdfexport.cpp
# End Section
# Section dataPlot : {3997D182-BB41-403B-AB2D-D695D888793D}
# 	2:5:Class:CCropFilter
# 	2:10:HeaderFile:cropfilter.h
# 	2:8:ImplFile:cropfilter.cpp
# End Section
# Section dataPlot : {22F4542F-CF97-43A4-999D-928C0E1084EF}
# 	2:5:Class:CLegendPaletteTool
# 	2:10:HeaderFile:legendpalettetool.h
# 	2:8:ImplFile:legendpalettetool.cpp
# End Section
# Section dataPlot : {21A5A8C7-526F-4931-9C61-0A7B66F1FC36}
# 	2:5:Class:CHorizAreaSeries
# 	2:10:HeaderFile:horizareaseries.h
# 	2:8:ImplFile:horizareaseries.cpp
# End Section
# Section dataPlot : {64552CB0-9205-49E1-BFD6-67914859F260}
# 	2:5:Class:CBar3DSeries
# 	2:10:HeaderFile:bar3dseries.h
# 	2:8:ImplFile:bar3dseries.cpp
# End Section
# Section dataPlot : {5BCED848-7C39-446C-9BED-CB19AC16F383}
# 	2:5:Class:CPCXExport
# 	2:10:HeaderFile:pcxexport.h
# 	2:8:ImplFile:pcxexport.cpp
# End Section
# Section dataPlot : {216A7C86-0D29-46BB-89FB-E553813D2D12}
# 	2:5:Class:CPolarBarSeries
# 	2:10:HeaderFile:polarbarseries.h
# 	2:8:ImplFile:polarbarseries.cpp
# End Section
# Section dataPlot : {A982BDD4-3218-4B4E-A9CA-BC62C6C56897}
# 	2:5:Class:CExport
# 	2:10:HeaderFile:export.h
# 	2:8:ImplFile:export.cpp
# End Section
# Section dataPlot : {D2798192-F2DC-4034-A25F-8F6F31F7C695}
# 	2:5:Class:CPieSeries
# 	2:10:HeaderFile:pieseries.h
# 	2:8:ImplFile:pieseries.cpp
# End Section
# Section dataPlot : {7D7C186A-38A2-42AA-9DEC-A6AC928B598C}
# 	2:5:Class:CDarvasSeries
# 	2:10:HeaderFile:darvasseries.h
# 	2:8:ImplFile:darvasseries.cpp
# End Section
# Section dataPlot : {E0216DAA-F2FD-497B-8C5A-8B12CCDC5D74}
# 	2:5:Class:CDonutSeries
# 	2:10:HeaderFile:donutseries.h
# 	2:8:ImplFile:donutseries.cpp
# End Section
# Section dataPlot : {6DCAF81B-D217-42CF-988D-9FF60BC17092}
# 	2:5:Class:CAxis
# 	2:10:HeaderFile:axis.h
# 	2:8:ImplFile:axis.cpp
# End Section
# Section dataPlot : {4C672492-AE61-40FC-BCE4-2C4FB5F20C73}
# 	2:5:Class:CVideoTool
# 	2:10:HeaderFile:videotool.h
# 	2:8:ImplFile:videotool.cpp
# End Section
# Section dataPlot : {6DA18FCD-ED89-412A-AC92-7D411FE2175F}
# 	2:5:Class:CLightTool
# 	2:10:HeaderFile:lighttool.h
# 	2:8:ImplFile:lighttool.cpp
# End Section
# Section dataPlot : {D0B1D417-532B-43B2-BD45-041B7AE7191C}
# 	2:5:Class:COrgItem
# 	2:10:HeaderFile:orgitem.h
# 	2:8:ImplFile:orgitem.cpp
# End Section
# Section dataPlot : {64ECD605-294D-46D6-87B7-AF89F388B793}
# 	2:5:Class:CValueLists
# 	2:10:HeaderFile:valuelists.h
# 	2:8:ImplFile:valuelists.cpp
# End Section
# Section dataPlot : {58EC1E68-C9D7-4D15-9F75-31B72BFD4949}
# 	2:5:Class:CCalendarCell
# 	2:10:HeaderFile:calendarcell.h
# 	2:8:ImplFile:calendarcell.cpp
# End Section
# Section dataPlot : {951D6253-B815-4D5C-A757-660A90C09B1A}
# 	2:5:Class:CVolumeSeries
# 	2:10:HeaderFile:volumeseries.h
# 	2:8:ImplFile:volumeseries.cpp
# End Section
# Section dataPlot : {1421844B-D663-485B-BDD7-98923EA3A022}
# 	2:5:Class:CPolarSeries
# 	2:10:HeaderFile:polarseries.h
# 	2:8:ImplFile:polarseries.cpp
# End Section
# Section dataPlot : {C58036B1-DFC3-4D4F-9F57-F32A5BDE6DC4}
# 	2:5:Class:CAreaSeries
# 	2:10:HeaderFile:areaseries.h
# 	2:8:ImplFile:areaseries.cpp
# End Section
# Section dataPlot : {C2310F60-BA01-400C-8B87-DE6753E378A9}
# 	2:5:Class:CBrightnessFilter
# 	2:10:HeaderFile:brightnessfilter.h
# 	2:8:ImplFile:brightnessfilter.cpp
# End Section
# Section dataPlot : {E4577D56-C19B-4AAF-9D26-B251E552046C}
# 	2:5:Class:CPen1
# 	2:10:HeaderFile:pen.h
# 	2:8:ImplFile:pen.cpp
# End Section
# Section dataPlot : {4A6B2E0D-6EBE-4811-B2D5-8148D110CF97}
# 	2:5:Class:CSelectorTool
# 	2:10:HeaderFile:selectortool.h
# 	2:8:ImplFile:selectortool.cpp
# End Section
# Section dataPlot : {39B6ABA0-95B6-4A31-8D9F-E80459F4F26F}
# 	2:5:Class:CBackImage
# 	2:10:HeaderFile:backimage.h
# 	2:8:ImplFile:backimage.cpp
# End Section
# Section dataPlot : {B6904850-ECB0-4CC8-8438-F707F1847C66}
# 	2:5:Class:CTeeFunction
# 	2:10:HeaderFile:teefunction.h
# 	2:8:ImplFile:teefunction.cpp
# End Section
# Section dataPlot : {B108D6F9-1C82-4971-89B5-56DBE33AB334}
# 	2:5:Class:CPieMarks
# 	2:10:HeaderFile:piemarks.h
# 	2:8:ImplFile:piemarks.cpp
# End Section
# Section dataPlot : {648A5600-2C6E-101B-82B6-000000000014}
# 	2:21:DefaultSinkHeaderFile:mscomm.h
# 	2:16:DefaultSinkClass:CMSComm
# End Section
# Section dataPlot : {E6E17E90-DF38-11CF-8E74-00A0C90F26F8}
# 	2:5:Class:CMSComm
# 	2:10:HeaderFile:mscomm.h
# 	2:8:ImplFile:mscomm.cpp
# End Section
# Section dataPlot : {661D8268-CBCC-4574-9FB5-1628C5093CAE}
# 	2:5:Class:CTableLegend
# 	2:10:HeaderFile:tablelegend.h
# 	2:8:ImplFile:tablelegend.cpp
# End Section
# Section dataPlot : {87455F47-67F4-4425-9B88-63F09D7F1D99}
# 	2:5:Class:CDrawLineTool
# 	2:10:HeaderFile:drawlinetool.h
# 	2:8:ImplFile:drawlinetool.cpp
# End Section
# Section dataPlot : {1F9C089D-BCAE-4141-B95B-6E0877819E08}
# 	2:5:Class:CBMPExport
# 	2:10:HeaderFile:bmpexport.h
# 	2:8:ImplFile:bmpexport.cpp
# End Section
# Section dataPlot : {7322C787-EFEE-46D0-99A2-9323F7537933}
# 	2:5:Class:CEmbossFilter
# 	2:10:HeaderFile:embossfilter.h
# 	2:8:ImplFile:embossfilter.cpp
# End Section
# Section dataPlot : {C131277D-A85E-4289-B61C-55226A239994}
# 	2:5:Class:CSeriesRegionTool
# 	2:10:HeaderFile:seriesregiontool.h
# 	2:8:ImplFile:seriesregiontool.cpp
# End Section
# Section dataPlot : {1267E579-8C87-47CB-B752-3A3ED3DFF34C}
# 	2:5:Class:CBubble3DSeries
# 	2:10:HeaderFile:bubble3dseries.h
# 	2:8:ImplFile:bubble3dseries.cpp
# End Section
# Section dataPlot : {62388638-1B14-48D5-B3B5-93B02EC9230A}
# 	2:5:Class:CPointArray
# 	2:10:HeaderFile:pointarray.h
# 	2:8:ImplFile:pointarray.cpp
# End Section
# Section dataPlot : {8EF1CB19-851B-49D7-AD61-B8E4DE9654F3}
# 	2:5:Class:CPyramidSeries
# 	2:10:HeaderFile:pyramidseries.h
# 	2:8:ImplFile:pyramidseries.cpp
# End Section
# Section dataPlot : {63C98E03-2C0C-4E6A-8DE8-3D0FC1E75A9C}
# 	2:5:Class:CHorizBoxPlotSeries
# 	2:10:HeaderFile:horizboxplotseries.h
# 	2:8:ImplFile:horizboxplotseries.cpp
# End Section
# Section dataPlot : {059A33BB-181F-4B69-810A-BFB972239A93}
# 	2:5:Class:CPerformanceFunction
# 	2:10:HeaderFile:performancefunction.h
# 	2:8:ImplFile:performancefunction.cpp
# End Section
# Section dataPlot : {D32B8599-B350-42A5-B2B1-94C9CFF34A2D}
# 	2:5:Class:CGIFExport
# 	2:10:HeaderFile:gifexport.h
# 	2:8:ImplFile:gifexport.cpp
# End Section
# Section dataPlot : {F2986750-62FD-4EB7-9EFD-EC440626302A}
# 	2:5:Class:CZoomFilter
# 	2:10:HeaderFile:zoomfilter.h
# 	2:8:ImplFile:zoomfilter.cpp
# End Section
# Section dataPlot : {AD589BFA-6E34-4DA2-894E-7DE4C9B127B3}
# 	2:5:Class:CCustomFunction
# 	2:10:HeaderFile:customfunction.h
# 	2:8:ImplFile:customfunction.cpp
# End Section
# Section dataPlot : {6D92F682-E70D-4A43-A7E7-A28B6FD9F372}
# 	2:5:Class:CResizeFilter
# 	2:10:HeaderFile:resizefilter.h
# 	2:8:ImplFile:resizefilter.cpp
# End Section
# Section dataPlot : {F5C85E2D-3F4E-4740-B58F-3F3F6EE58FF2}
# 	2:5:Class:CRotateTool
# 	2:10:HeaderFile:rotatetool.h
# 	2:8:ImplFile:rotatetool.cpp
# End Section
# Section dataPlot : {75009193-06A4-4E3D-B145-0374A819461E}
# 	2:5:Class:CLevelSegment
# 	2:10:HeaderFile:levelsegment.h
# 	2:8:ImplFile:levelsegment.cpp
# End Section
# Section dataPlot : {880E79B6-B0E0-4A14-A68F-C75912E6EB9D}
# 	2:5:Class:CContourSeries
# 	2:10:HeaderFile:contourseries.h
# 	2:8:ImplFile:contourseries.cpp
# End Section
# Section dataPlot : {AF553D41-9D55-47C5-8350-793033C2B78B}
# 	2:5:Class:CMarksItem
# 	2:10:HeaderFile:marksitem.h
# 	2:8:ImplFile:marksitem.cpp
# End Section
# Section dataPlot : {65602B2E-8F95-4A4A-9CE2-2331169A5909}
# 	2:5:Class:CAxisLabelsItem
# 	2:10:HeaderFile:axislabelsitem.h
# 	2:8:ImplFile:axislabelsitem.cpp
# End Section
# Section dataPlot : {C94121E7-766B-49EB-9085-BD821B644B85}
# 	2:5:Class:CTeeFilter
# 	2:10:HeaderFile:teefilter.h
# 	2:8:ImplFile:teefilter.cpp
# End Section
# Section dataPlot : {C398AD7D-B57F-4E47-B183-B29AE925EE77}
# 	2:5:Class:CTChart
# 	2:10:HeaderFile:tchart.h
# 	2:8:ImplFile:tchart.cpp
# End Section
# Section dataPlot : {23876356-6D35-4418-8003-0AF198E4AC6B}
# 	2:5:Class:CColorBandTool
# 	2:10:HeaderFile:colorbandtool.h
# 	2:8:ImplFile:colorbandtool.cpp
# End Section
# Section dataPlot : {E11C0EDA-65C9-4966-BA60-57EA7ADF530F}
# 	2:5:Class:CWall
# 	2:10:HeaderFile:wall.h
# 	2:8:ImplFile:wall.cpp
# End Section
# Section dataPlot : {EAE4FF42-7AAB-4649-8B4C-B4E16BF983EB}
# 	2:5:Class:CWaterfallSeries
# 	2:10:HeaderFile:waterfallseries.h
# 	2:8:ImplFile:waterfallseries.cpp
# End Section
# Section dataPlot : {43FBF4EF-22B2-4799-9E23-3DB63F586DDF}
# 	2:5:Class:CImageBarSeries
# 	2:10:HeaderFile:imagebarseries.h
# 	2:8:ImplFile:imagebarseries.cpp
# End Section
# Section dataPlot : {D5AD136F-29A9-4BF2-96F9-D79414D3B369}
# 	2:5:Class:CGridBandTool
# 	2:10:HeaderFile:gridbandtool.h
# 	2:8:ImplFile:gridbandtool.cpp
# End Section
# Section dataPlot : {BDDE7AC5-D532-432E-9559-FF950114AFD4}
# 	2:5:Class:CDragMarksTool
# 	2:10:HeaderFile:dragmarkstool.h
# 	2:8:ImplFile:dragmarkstool.cpp
# End Section
# Section dataPlot : {73DE645D-73E4-4921-BCBD-E839D2067215}
# 	2:5:Class:CGaugePointerRange
# 	2:10:HeaderFile:gaugepointerrange.h
# 	2:8:ImplFile:gaugepointerrange.cpp
# End Section
# Section dataPlot : {9171A5BA-C17E-4472-8585-87CADEA6A3A5}
# 	2:5:Class:CCircleLabels
# 	2:10:HeaderFile:circlelabels.h
# 	2:8:ImplFile:circlelabels.cpp
# End Section
# Section dataPlot : {DD6B8D73-6561-4207-9E05-F91B0897101B}
# 	2:5:Class:CTeePicture
# 	2:10:HeaderFile:teepicture.h
# 	2:8:ImplFile:teepicture.cpp
# End Section
# Section dataPlot : {8A2712F9-7DF4-4190-8C57-DF25AFF1E5FB}
# 	2:5:Class:CPieTool
# 	2:10:HeaderFile:pietool.h
# 	2:8:ImplFile:pietool.cpp
# End Section
# Section dataPlot : {ECEC2256-9ED2-45C2-9233-CE7F93FCE378}
# 	2:5:Class:CSeriesGroup
# 	2:10:HeaderFile:seriesgroup.h
# 	2:8:ImplFile:seriesgroup.cpp
# End Section
# Section dataPlot : {72EF6A88-F0CC-43FA-A27E-3433F5FDD70D}
# 	2:5:Class:CExtraLegendTool
# 	2:10:HeaderFile:extralegendtool.h
# 	2:8:ImplFile:extralegendtool.cpp
# End Section
# Section dataPlot : {19143E66-8A53-4E32-BA49-06BE1A7F03BD}
# 	2:5:Class:CKagiSeries
# 	2:10:HeaderFile:kagiseries.h
# 	2:8:ImplFile:kagiseries.cpp
# End Section
# Section dataPlot : {10C205E0-73C6-41F3-8602-71359B4BDE16}
# 	2:5:Class:CVector3DSeries
# 	2:10:HeaderFile:vector3dseries.h
# 	2:8:ImplFile:vector3dseries.cpp
# End Section
# Section dataPlot : {0B2F7E6B-4D7D-4251-A11A-0189E5447B26}
# 	2:5:Class:CContourLevels
# 	2:10:HeaderFile:contourlevels.h
# 	2:8:ImplFile:contourlevels.cpp
# End Section
# Section dataPlot : {389A80D6-77CD-4DFD-AF14-4FF640CBC7D9}
# 	2:5:Class:CMarksCallout
# 	2:10:HeaderFile:markscallout.h
# 	2:8:ImplFile:markscallout.cpp
# End Section
# Section dataPlot : {C30D9607-2367-4D9C-AA6B-65A2509A42B2}
# 	2:5:Class:CLegendItems
# 	2:10:HeaderFile:legenditems.h
# 	2:8:ImplFile:legenditems.cpp
# End Section
# Section dataPlot : {AD513158-58D1-40FB-9D87-D159B7BB03A6}
# 	2:5:Class:CCanvas
# 	2:10:HeaderFile:canvas.h
# 	2:8:ImplFile:canvas.cpp
# End Section
# Section dataPlot : {850D4EEB-0BFE-4BDA-8DA2-7794C9CF67E6}
# 	2:5:Class:CAspect
# 	2:10:HeaderFile:aspect.h
# 	2:8:ImplFile:aspect.cpp
# End Section
# Section dataPlot : {57F89BFF-8267-4BC2-8E8A-F04EF8B60415}
# 	2:5:Class:CVideoPlayerTool
# 	2:10:HeaderFile:videoplayertool.h
# 	2:8:ImplFile:videoplayertool.cpp
# End Section
# Section dataPlot : {0882C319-83FA-4F0D-A821-38E69CB2FDD4}
# 	2:5:Class:CMedianFunction
# 	2:10:HeaderFile:medianfunction.h
# 	2:8:ImplFile:medianfunction.cpp
# End Section
# Section dataPlot : {09F39CCD-B5D6-4F33-AAFB-25B568DDAC27}
# 	2:5:Class:CSmoothingFunction
# 	2:10:HeaderFile:smoothingfunction.h
# 	2:8:ImplFile:smoothingfunction.cpp
# End Section
# Section dataPlot : {7B19FC1B-A120-439E-B8E5-8DD89EC68318}
# 	2:5:Class:CAverageFunction
# 	2:10:HeaderFile:averagefunction.h
# 	2:8:ImplFile:averagefunction.cpp
# End Section
# Section dataPlot : {6A70CDBB-8F5F-44C5-9568-B70F940F6C05}
# 	2:5:Class:CPieOtherSlice
# 	2:10:HeaderFile:pieotherslice.h
# 	2:8:ImplFile:pieotherslice.cpp
# End Section
# Section dataPlot : {E58887B4-FB87-4AFF-AB68-D0FDCC28F476}
# 	2:5:Class:CSharpenFilter
# 	2:10:HeaderFile:sharpenfilter.h
# 	2:8:ImplFile:sharpenfilter.cpp
# End Section
# Section dataPlot : {004668EE-FE52-40C7-A330-3D10C231F65F}
# 	2:5:Class:CGammaCorrectionFilter
# 	2:10:HeaderFile:gammacorrectionfilter.h
# 	2:8:ImplFile:gammacorrectionfilter.cpp
# End Section
# Section dataPlot : {2BD79012-FA21-4577-855A-2EB5BC52D926}
# 	2:5:Class:CSeriesList
# 	2:10:HeaderFile:serieslist.h
# 	2:8:ImplFile:serieslist.cpp
# End Section
# Section dataPlot : {C486E24F-95BC-44C0-99B5-E24957990017}
# 	2:5:Class:CTagCloudSeries
# 	2:10:HeaderFile:tagcloudseries.h
# 	2:8:ImplFile:tagcloudseries.cpp
# End Section
# Section dataPlot : {303D35C4-1F51-478D-B67B-266BB1B2D6EF}
# 	2:5:Class:CLegendItem
# 	2:10:HeaderFile:legenditem.h
# 	2:8:ImplFile:legenditem.cpp
# End Section
# Section dataPlot : {A7F9D92B-D0CA-4B75-8F57-BA8B859EE660}
# 	2:5:Class:CChartFont
# 	2:10:HeaderFile:chartfont.h
# 	2:8:ImplFile:chartfont.cpp
# End Section
# Section dataPlot : {FED2AF48-F5DE-44B8-9544-4FE7C680A45A}
# 	2:5:Class:CTileFilter
# 	2:10:HeaderFile:tilefilter.h
# 	2:8:ImplFile:tilefilter.cpp
# End Section
# Section dataPlot : {56DD636A-7637-4CCC-BBFF-D426FEA5D186}
# 	2:5:Class:CFibonacciItem
# 	2:10:HeaderFile:fibonacciitem.h
# 	2:8:ImplFile:fibonacciitem.cpp
# End Section
# Section dataPlot : {73631C7C-3A02-4F9F-9C9F-83A1E0360F4B}
# 	2:5:Class:CMarksTipTool
# 	2:10:HeaderFile:markstiptool.h
# 	2:8:ImplFile:markstiptool.cpp
# End Section
# Section dataPlot : {EB29AB58-E3BE-4805-847C-74BB83ED40D1}
# 	2:5:Class:CTeeShapePanel
# 	2:10:HeaderFile:teeshapepanel.h
# 	2:8:ImplFile:teeshapepanel.cpp
# End Section
# Section dataPlot : {4BDB69F7-BFAD-4F02-999F-FEAE6531350F}
# 	2:5:Class:CPolarGridSeries
# 	2:10:HeaderFile:polargridseries.h
# 	2:8:ImplFile:polargridseries.cpp
# End Section
# Section dataPlot : {2AF16E3D-7FAA-4936-8856-6F2286551306}
# 	2:5:Class:CJPEGExport
# 	2:10:HeaderFile:jpegexport.h
# 	2:8:ImplFile:jpegexport.cpp
# End Section
# Section dataPlot : {C6A11401-589C-4EC4-94AA-4D9B3C145728}
# 	2:5:Class:CClipSeriesTool
# 	2:10:HeaderFile:clipseriestool.h
# 	2:8:ImplFile:clipseriestool.cpp
# End Section
# Section dataPlot : {79B82F2C-E7AF-4B88-BB71-059544CC7213}
# 	2:5:Class:CVolumePipeSeries
# 	2:10:HeaderFile:volumepipeseries.h
# 	2:8:ImplFile:volumepipeseries.cpp
# End Section
# Section dataPlot : {A19B072C-1482-4301-B5E7-6AD55C8A1667}
# 	2:5:Class:CBezierSeries
# 	2:10:HeaderFile:bezierseries.h
# 	2:8:ImplFile:bezierseries.cpp
# End Section
# Section dataPlot : {D66D7EB7-7F65-43A1-86FC-6F1D69831115}
# 	2:5:Class:CDownSamplingFunction
# 	2:10:HeaderFile:downsamplingfunction.h
# 	2:8:ImplFile:downsamplingfunction.cpp
# End Section
# Section dataPlot : {7D8BE2E9-0D40-47DA-A9E8-1E74386550CA}
# 	2:5:Class:CPointSeries
# 	2:10:HeaderFile:pointseries.h
# 	2:8:ImplFile:pointseries.cpp
# End Section
# Section dataPlot : {73B0080B-6A79-463D-981F-083D0E023DDA}
# 	2:5:Class:CGLLightSource
# 	2:10:HeaderFile:gllightsource.h
# 	2:8:ImplFile:gllightsource.cpp
# End Section
# Section dataPlot : {3DBC6BA9-C2FD-4BF7-8F07-82D7CCFD1596}
# 	2:5:Class:CTeeOpenGL
# 	2:10:HeaderFile:teeopengl.h
# 	2:8:ImplFile:teeopengl.cpp
# End Section
# Section dataPlot : {EEA3F5FE-8878-4B8C-9C67-7B00180B26B3}
# 	2:5:Class:CSurfaceNearestTool
# 	2:10:HeaderFile:surfacenearesttool.h
# 	2:8:ImplFile:surfacenearesttool.cpp
# End Section
# Section dataPlot : {0DBD6EC7-E3D1-4EE9-B23E-BFD21417EE71}
# 	2:5:Class:CValueList
# 	2:10:HeaderFile:valuelist.h
# 	2:8:ImplFile:valuelist.cpp
# End Section
# Section dataPlot : {4488F2A6-57E7-4080-9F64-A30684C3BB02}
# 	2:5:Class:CTitles
# 	2:10:HeaderFile:titles.h
# 	2:8:ImplFile:titles.cpp
# End Section
# Section dataPlot : {27C6E587-C91A-4A77-A532-D726A6087287}
# 	2:5:Class:CBrush1
# 	2:10:HeaderFile:brush.h
# 	2:8:ImplFile:brush.cpp
# End Section
# Section dataPlot : {5706D771-E194-43B0-9D96-6708B72819B0}
# 	2:5:Class:CNativeExport
# 	2:10:HeaderFile:nativeexport.h
# 	2:8:ImplFile:nativeexport.cpp
# End Section
# Section dataPlot : {BDEB0088-66F9-4A55-ABD2-0BF8DEEC1196}
# 	2:21:DefaultSinkHeaderFile:tchart.h
# 	2:16:DefaultSinkClass:CTChart
# End Section
# Section dataPlot : {9F013EF3-4A91-4AA4-8FC1-F7D954D6A3C2}
# 	2:5:Class:CPNGExport
# 	2:10:HeaderFile:pngexport.h
# 	2:8:ImplFile:pngexport.cpp
# End Section
# Section dataPlot : {5D33BF3E-7A0A-40B0-BBBD-DEA7E521F30B}
# 	2:5:Class:CMagnifyTool
# 	2:10:HeaderFile:magnifytool.h
# 	2:8:ImplFile:magnifytool.cpp
# End Section
# Section dataPlot : {1C46CC17-BA97-4341-82E7-073600AF4C49}
# 	2:5:Class:CCircularGauge
# 	2:10:HeaderFile:circulargauge.h
# 	2:8:ImplFile:circulargauge.cpp
# End Section
# Section dataPlot : {20AEEFE9-F24F-4596-9F7F-9081BAB13A1B}
# 	2:5:Class:CStdDeviationFunction
# 	2:10:HeaderFile:stddeviationfunction.h
# 	2:8:ImplFile:stddeviationfunction.cpp
# End Section
# Section dataPlot : {DD6C1000-3809-4F21-BC98-BC74976EC22C}
# 	2:5:Class:CLegendSymbol
# 	2:10:HeaderFile:legendsymbol.h
# 	2:8:ImplFile:legendsymbol.cpp
# End Section
# Section dataPlot : {E9612B8D-1D97-41F0-988C-31B3DD1C4D84}
# 	2:5:Class:CAmountFilter
# 	2:10:HeaderFile:amountfilter.h
# 	2:8:ImplFile:amountfilter.cpp
# End Section
# Section dataPlot : {F8C384ED-B661-4CC5-BB9F-8C506D8B6A09}
# 	2:5:Class:CGridTransposeTool
# 	2:10:HeaderFile:gridtransposetool.h
# 	2:8:ImplFile:gridtransposetool.cpp
# End Section
# Section dataPlot : {361F642D-2DE5-4359-A14B-5DBF38096886}
# 	2:5:Class:CContourLevel
# 	2:10:HeaderFile:contourlevel.h
# 	2:8:ImplFile:contourlevel.cpp
# End Section
# Section dataPlot : {54242326-2D9D-45BD-9B0A-7A424A00CA92}
# 	2:5:Class:CCCIFunction
# 	2:10:HeaderFile:ccifunction.h
# 	2:8:ImplFile:ccifunction.cpp
# End Section
# Section dataPlot : {E6466A2B-EC9E-48EB-94E5-6435C4DEE97B}
# 	2:5:Class:COBVFunction
# 	2:10:HeaderFile:obvfunction.h
# 	2:8:ImplFile:obvfunction.cpp
# End Section
# Section dataPlot : {1AF8EC64-FDF2-4116-8C7F-116A6EBDB87F}
# 	2:5:Class:CSeries
# 	2:10:HeaderFile:series.h
# 	2:8:ImplFile:series.cpp
# End Section
# Section dataPlot : {21C180F1-5B3D-426F-93DA-3C2CE22FF8D5}
# 	2:5:Class:CFloatXYZ
# 	2:10:HeaderFile:floatxyz.h
# 	2:8:ImplFile:floatxyz.cpp
# End Section
# Section dataPlot : {4CC6E38C-0B1B-4E77-BBF9-21C6CE0A2656}
# 	2:5:Class:CFaderTool
# 	2:10:HeaderFile:fadertool.h
# 	2:8:ImplFile:fadertool.cpp
# End Section
# Section dataPlot : {03D14814-70D1-4B2F-A854-4263D041AAE8}
# 	2:5:Class:CAxisTitle
# 	2:10:HeaderFile:axistitle.h
# 	2:8:ImplFile:axistitle.cpp
# End Section
# Section dataPlot : {8E8B339E-A766-4A07-9F1B-69771F5D04B6}
# 	2:5:Class:CLegend
# 	2:10:HeaderFile:legend.h
# 	2:8:ImplFile:legend.cpp
# End Section
# Section dataPlot : {6AB1B24A-C466-4268-ACF3-650000F12910}
# 	2:5:Class:CTextExport
# 	2:10:HeaderFile:textexport.h
# 	2:8:ImplFile:textexport.cpp
# End Section
# Section dataPlot : {9C60F5A9-35FF-4B0D-97B9-5F9AB6C8272F}
# 	2:5:Class:CWindRoseSeries
# 	2:10:HeaderFile:windroseseries.h
# 	2:8:ImplFile:windroseseries.cpp
# End Section
# Section dataPlot : {9A1A0505-7BBA-4A53-8B7F-60979D8DE765}
# 	2:5:Class:CRadarSeries
# 	2:10:HeaderFile:radarseries.h
# 	2:8:ImplFile:radarseries.cpp
# End Section
# Section dataPlot : {82C96E46-FB05-43B2-B12B-8CCB2E5ACAB1}
# 	2:5:Class:CLineSeries
# 	2:10:HeaderFile:lineseries.h
# 	2:8:ImplFile:lineseries.cpp
# End Section
# Section dataPlot : {24B7FE4C-6430-4EA3-8849-C433877309BC}
# 	2:5:Class:CCandleSeries
# 	2:10:HeaderFile:candleseries.h
# 	2:8:ImplFile:candleseries.cpp
# End Section
# Section dataPlot : {7A1079C7-ECC1-4175-A701-BE42D25C4DDD}
# 	2:5:Class:CBubbleSeries
# 	2:10:HeaderFile:bubbleseries.h
# 	2:8:ImplFile:bubbleseries.cpp
# End Section
# Section dataPlot : {55D2D8BE-36A4-4744-BF5E-9B1DB78A9FB1}
# 	2:5:Class:CExpAvgFunction
# 	2:10:HeaderFile:expavgfunction.h
# 	2:8:ImplFile:expavgfunction.cpp
# End Section
# Section dataPlot : {BA6D1C6D-36CF-42D5-9098-137252458EEC}
# 	2:5:Class:CBarJoinSeries
# 	2:10:HeaderFile:barjoinseries.h
# 	2:8:ImplFile:barjoinseries.cpp
# End Section
