<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<gxl xmlns="http://www.gupro.de/GXL/gxl-1.0.dtd">
    <graph role="graph" edgeids="false" edgemode="directed" id="stateMachineConfiguration3">
        <attr name="$version">
            <string>curly</string>
        </attr>
        <node id="n1">
            <attr name="layout">
                <string>482 229 17 18</string>
            </attr>
        </node>
        <node id="n2">
            <attr name="layout">
                <string>95 263 83 18</string>
            </attr>
        </node>
        <node id="n3">
            <attr name="layout">
                <string>476 240 31 18</string>
            </attr>
        </node>
        <node id="n4">
            <attr name="layout">
                <string>446 362 18 18</string>
            </attr>
        </node>
        <node id="n5">
            <attr name="layout">
                <string>309 404 31 18</string>
            </attr>
        </node>
        <node id="n6">
            <attr name="layout">
                <string>67 408 134 18</string>
            </attr>
        </node>
        <node id="n7">
            <attr name="layout">
                <string>270 232 63 18</string>
            </attr>
        </node>
        <node id="n8">
            <attr name="layout">
                <string>273 298 63 18</string>
            </attr>
        </node>
        <node id="n10">
            <attr name="layout">
                <string>291 147 31 18</string>
            </attr>
        </node>
        <node id="n11">
            <attr name="layout">
                <string>279 51 16 18</string>
            </attr>
        </node>
        <edge from="n1" to="n1">
            <attr name="label">
                <string>string:"B"</string>
            </attr>
        </edge>
        <edge from="n2" to="n2">
            <attr name="label">
                <string>type:StateMachine</string>
            </attr>
        </edge>
        <edge from="n2" to="n8">
            <attr name="label">
                <string>transitions</string>
            </attr>
        </edge>
        <edge from="n2" to="n7">
            <attr name="label">
                <string>transitions</string>
            </attr>
        </edge>
        <edge from="n3" to="n3">
            <attr name="label">
                <string>type:State</string>
            </attr>
        </edge>
        <edge from="n3" to="n1">
            <attr name="label">
                <string>name</string>
            </attr>
        </edge>
        <edge from="n4" to="n4">
            <attr name="label">
                <string>string:"A"</string>
            </attr>
        </edge>
        <edge from="n5" to="n5">
            <attr name="label">
                <string>type:State</string>
            </attr>
        </edge>
        <edge from="n5" to="n4">
            <attr name="label">
                <string>name</string>
            </attr>
        </edge>
        <edge from="n6" to="n6">
            <attr name="label">
                <string>type:StateMachineInstance</string>
            </attr>
        </edge>
        <edge from="n6" to="n2">
            <attr name="label">
                <string>sm</string>
            </attr>
        </edge>
        <edge from="n6" to="n5">
            <attr name="label">
                <string>currentState</string>
            </attr>
            <attr name="layout">
                <string>469 -11 206 413 304 413 11</string>
            </attr>
        </edge>
        <edge from="n7" to="n7">
            <attr name="label">
                <string>type:Transition</string>
            </attr>
        </edge>
        <edge from="n7" to="n10">
            <attr name="label">
                <string>to</string>
            </attr>
        </edge>
        <edge from="n7" to="n3">
            <attr name="label">
                <string>from</string>
            </attr>
        </edge>
        <edge from="n8" to="n8">
            <attr name="label">
                <string>type:Transition</string>
            </attr>
        </edge>
        <edge from="n8" to="n5">
            <attr name="label">
                <string>from</string>
            </attr>
        </edge>
        <edge from="n8" to="n3">
            <attr name="label">
                <string>to</string>
            </attr>
        </edge>
        <edge from="n10" to="n10">
            <attr name="label">
                <string>type:State</string>
            </attr>
        </edge>
        <edge from="n10" to="n11">
            <attr name="label">
                <string>name</string>
            </attr>
        </edge>
        <edge from="n11" to="n11">
            <attr name="label">
                <string>string:"F"</string>
            </attr>
        </edge>
    </graph>
</gxl>
