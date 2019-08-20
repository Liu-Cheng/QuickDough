<project xmlns="com.autoesl.autopilot.project" name="kmean-small" top="kmean_ip">
    <includePaths/>
    <libraryPaths/>
    <Simulation argv="">
        <SimFlow name="csim" ldflags="" mflags="" clean="true" csimMode="0" lastCsimMode="0"/>
    </Simulation>
    <files xmlns="">
        <file name="../src/main.c" sc="0" tb="1" cflags=" "/>
        <file name="../src/kmean.h" sc="0" tb="1" cflags=" "/>
        <file name="kmean-small/src/kmean_ip.c" sc="0" tb="false" cflags=""/>
    </files>
    <solutions xmlns="">
        <solution name="unroll-20" status="active"/>
    </solutions>
</project>

