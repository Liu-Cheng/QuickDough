<project xmlns="com.autoesl.autopilot.project" name="fir-small" top="fir_ip">
    <includePaths/>
    <libraryPaths/>
    <Simulation argv="">
        <SimFlow name="csim" ldflags="" mflags="" clean="true" csimMode="0" lastCsimMode="0"/>
    </Simulation>
    <files xmlns="">
        <file name="../src/fir_ip.h" sc="0" tb="1" cflags=" "/>
        <file name="../src/main.c" sc="0" tb="1" cflags=" "/>
        <file name="fir-small/src/fir_ip.c" sc="0" tb="false" cflags=""/>
    </files>
    <solutions xmlns="">
        <solution name="unroll-2x50" status="active"/>
    </solutions>
</project>

