<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<gxl xmlns="http://www.gupro.de/GXL/gxl-1.0.dtd">
    <graph role="graph" edgeids="false" edgemode="directed" id="stateMachineConfiguration2">
        <attr name="$version">
            <string>curly</string>
        </attr>
        <node id="n1">
            <attr name="layout">
                <string>529 86 17 18</string>
            </attr>
        </node>
        <node id="n2">
            <attr name="layout">
                <string>100 50 83 18</string>
            </attr>
        </node>
        <node id="n3">
            <attr name="layout">
                <string>353 112 31 18</string>
            </attr>
        </node>
        <node id="n4">
            <attr name="layout">
                <string>524 30 18 18</string>
            </attr>
        </node>
        <node id="n5">
            <attr name="layout">
                <string>236 106 31 18</string>
            </attr>
        </node>
        <node id="n6">
            <attr name="layout">
                <string>72 195 134 18</string>
            </attr>
        </node>
        <node id="n8">
            <attr name="layout">
                <string>291 42 63 18</string>
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
                <string>490 -4 154 192 236 127 11</string>
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
    </graph>
</gxl>
