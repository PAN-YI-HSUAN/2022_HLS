<project xmlns="com.autoesl.autopilot.project" name="hls" top="dft">
    <includePaths/>
    <libraryPaths/>
    <Simulation>
        <SimFlow name="csim"/>
    </Simulation>
    <files xmlns="">
        <file name="../../out.gold.dat" sc="0" tb="1" cflags=" -Wno-unknown-pragmas" csimflags=" -Wno-unknown-pragmas" blackbox="false"/>
        <file name="../../dft_test.cpp" sc="0" tb="1" cflags=" -Wno-unknown-pragmas" csimflags=" -Wno-unknown-pragmas" blackbox="false"/>
        <file name="dft.h" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="dft.cpp" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="coefficients8.h" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
    </files>
    <solutions xmlns="">
        <solution name="solution1" status="active"/>
    </solutions>
</project>

