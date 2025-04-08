<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<gxl xmlns="http://www.gupro.de/GXL/gxl-1.0.dtd">
    <graph role="graph" edgeids="false" edgemode="directed" id="stateMachineConfiguration1">
        <attr name="$version">
            <string>curly</string>
        </attr>
        <node id="n0">
            <attr name="layout">
                <string>81 190 134 18</string>
            </attr>
        </node>
        <node id="n3">
            <attr name="layout">
                <string>528 86 18 18</string>
            </attr>
        </node>
        <node id="n4">
            <attr name="layout">
                <string>100 50 83 18</string>
            </attr>
        </node>
        <node id="n5">
            <attr name="layout">
                <string>310 42 63 18</string>
            </attr>
        </node>
        <node id="n6">
            <attr name="layout">
                <string>342 120 31 18</string>
            </attr>
        </node>
        <node id="n7">
            <attr name="layout">
                <string>214 115 31 18</string>
            </attr>
        </node>
        <node id="n9">
            <attr name="layout">
                <string>524 30 18 18</string>
            </attr>
        </node>
        <edge from="n0" to="n0">
            <attr name="label">
                <string>type:StateMachineInstance</string>
            </attr>
        </edge>
        <edge from="n0" to="n7">
            <attr name="label">
                <string>currentState</string>
            </attr>
        </edge>
        <edge from="n0" to="n4">
            <attr name="label">
                <string>sm</string>
            </attr>
        </edge>
        <edge from="n3" to="n3">
            <attr name="label">
                <string>string:"X"</string>
            </attr>
        </edge>
        <edge from="n4" to="n4">
            <attr name="label">
                <string>type:StateMachine</string>
            </attr>
        </edge>
        <edge from="n4" to="n5">
            <attr name="label">
                <string>transitions</string>
            </attr>
        </edge>
        <edge from="n5" to="n5">
            <attr name="label">
                <string>type:Transition</string>
            </attr>
        </edge>
        <edge from="n5" to="n6">
            <attr name="label">
                <string>to</string>
            </attr>
        </edge>
        <edge from="n5" to="n7">
            <attr name="label">
                <string>from</string>
            </attr>
        </edge>
        <edge from="n6" to="n6">
            <attr name="label">
                <string>type:State</string>
            </attr>
        </edge>
        <edge from="n6" to="n3">
            <attr name="label">
                <string>name</string>
            </attr>
        </edge>
        <edge from="n7" to="n7">
            <attr name="label">
                <string>type:State</string>
            </attr>
        </edge>
        <edge from="n7" to="n9">
            <attr name="label">
                <string>name</string>
            </attr>
        </edge>
        <edge from="n9" to="n9">
            <attr name="label">
                <string>string:"A"</string>
            </attr>
        </edge>
    </graph>
</gxl>
