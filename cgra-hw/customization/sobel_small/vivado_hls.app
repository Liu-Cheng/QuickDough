<project xmlns="com.autoesl.autopilot.project" name="sobel_small" top="sobel_ip">
    <includePaths/>
    <libraryPaths/>
    <Simulation argv="">
        <SimFlow name="csim" ldflags="" mflags="" clean="true" csimMode="0" lastCsimMode="0"/>
    </Simulation>
    <files xmlns="">
        <file name="../src/main.c" sc="0" tb="1" cflags=" "/>
        <file name="../src/sobel.h" sc="0" tb="1" cflags=" "/>
        <file name="sobel_small/src/sobel_ip.c" sc="0" tb="false" cflags=""/>
    </files>
    <solutions xmlns="">
        <solution name="unroll-1x2x3x3" status="active"/>
    </solutions>
</project>

