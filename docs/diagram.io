<mxfile host="app.diagrams.net" agent="Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36 Edg/146.0.0.0">
  <diagram name="Page-1" id="TcFp3W8gUBgUS_47Gnl6">
    <mxGraphModel dx="966" dy="811" grid="1" gridSize="10" guides="1" tooltips="1" connect="1" arrows="1" fold="1" page="1" pageScale="1" pageWidth="1654" pageHeight="2336" math="0" shadow="0">
      <root>
        <mxCell id="0" />
        <mxCell id="1" parent="0" />
        <mxCell id="8-fmPmYztAE00Lu3LuMn-3" edge="1" parent="1" source="8-fmPmYztAE00Lu3LuMn-1" style="edgeStyle=none;curved=1;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;fontSize=12;startSize=8;endSize=8;" target="8-fmPmYztAE00Lu3LuMn-2" value="">
          <mxGeometry relative="1" as="geometry" />
        </mxCell>
        <mxCell id="8-fmPmYztAE00Lu3LuMn-1" parent="1" style="whiteSpace=wrap;html=1;fillColor=#fff2cc;strokeColor=#d6b656;" value="API created with API Gateway to invoke Lambda using curl&lt;div&gt;IotDataAPI.&lt;/div&gt;" vertex="1">
          <mxGeometry height="60" width="120" x="80" y="30" as="geometry" />
        </mxCell>
        <mxCell id="8-fmPmYztAE00Lu3LuMn-41" edge="1" parent="1" source="8-fmPmYztAE00Lu3LuMn-2" style="edgeStyle=none;curved=1;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;fontSize=12;startSize=8;endSize=8;" target="8-fmPmYztAE00Lu3LuMn-40" value="">
          <mxGeometry relative="1" as="geometry" />
        </mxCell>
        <mxCell id="8-fmPmYztAE00Lu3LuMn-2" parent="1" style="whiteSpace=wrap;html=1;fillColor=#fff2cc;strokeColor=#d6b656;" value="Lambda function generated real-time data&amp;nbsp;&lt;br&gt;IotDataProcessor" vertex="1">
          <mxGeometry height="60" width="120" x="80" y="120" as="geometry" />
        </mxCell>
        <mxCell id="8-fmPmYztAE00Lu3LuMn-12" edge="1" parent="1" source="8-fmPmYztAE00Lu3LuMn-9" style="edgeStyle=none;curved=1;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;fontSize=12;startSize=8;endSize=8;" target="8-fmPmYztAE00Lu3LuMn-11" value="">
          <mxGeometry relative="1" as="geometry" />
        </mxCell>
        <mxCell id="8-fmPmYztAE00Lu3LuMn-9" parent="1" style="whiteSpace=wrap;html=1;fillColor=#fff2cc;strokeColor=#d6b656;" value="Raw generated data gets stored in S3 bucket&#39;s raw folder&lt;div&gt;iot-simulator-data-bucket/raw/&lt;/div&gt;" vertex="1">
          <mxGeometry height="70" width="120" x="80" y="380" as="geometry" />
        </mxCell>
        <mxCell id="8-fmPmYztAE00Lu3LuMn-14" edge="1" parent="1" source="8-fmPmYztAE00Lu3LuMn-11" style="edgeStyle=none;curved=1;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;fontSize=12;startSize=8;endSize=8;" target="8-fmPmYztAE00Lu3LuMn-13" value="">
          <mxGeometry relative="1" as="geometry" />
        </mxCell>
        <mxCell id="8-fmPmYztAE00Lu3LuMn-11" parent="1" style="whiteSpace=wrap;html=1;fillColor=#fff2cc;strokeColor=#d6b656;" value="Event notification rule get triggered&lt;div&gt;raw-data-ingestion&lt;/div&gt;" vertex="1">
          <mxGeometry height="60" width="120" x="80" y="500" as="geometry" />
        </mxCell>
        <mxCell id="8-fmPmYztAE00Lu3LuMn-16" edge="1" parent="1" source="8-fmPmYztAE00Lu3LuMn-13" style="edgeStyle=none;curved=1;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;fontSize=12;startSize=8;endSize=8;" target="8-fmPmYztAE00Lu3LuMn-15" value="">
          <mxGeometry relative="1" as="geometry" />
        </mxCell>
        <mxCell id="8-fmPmYztAE00Lu3LuMn-18" edge="1" parent="1" source="8-fmPmYztAE00Lu3LuMn-13" style="edgeStyle=none;curved=1;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;fontSize=12;startSize=8;endSize=8;" target="8-fmPmYztAE00Lu3LuMn-17" value="">
          <mxGeometry relative="1" as="geometry" />
        </mxCell>
        <mxCell id="8-fmPmYztAE00Lu3LuMn-13" parent="1" style="whiteSpace=wrap;html=1;fillColor=#fff2cc;strokeColor=#d6b656;" value="SNS topic subscriptions works simulataneously&amp;nbsp;&lt;br&gt;data-ingestion-notifications" vertex="1">
          <mxGeometry height="70" width="120" x="80" y="610" as="geometry" />
        </mxCell>
        <mxCell id="8-fmPmYztAE00Lu3LuMn-15" parent="1" style="whiteSpace=wrap;html=1;fillColor=#fff2cc;strokeColor=#d6b656;" value="Subscription-I sends confirmation of data ingestion to provided email address" vertex="1">
          <mxGeometry height="60" width="120" x="280" y="615" as="geometry" />
        </mxCell>
        <mxCell id="8-fmPmYztAE00Lu3LuMn-20" edge="1" parent="1" source="8-fmPmYztAE00Lu3LuMn-17" style="edgeStyle=none;curved=1;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;fontSize=12;startSize=8;endSize=8;" target="8-fmPmYztAE00Lu3LuMn-19" value="">
          <mxGeometry relative="1" as="geometry" />
        </mxCell>
        <mxCell id="8-fmPmYztAE00Lu3LuMn-17" parent="1" style="whiteSpace=wrap;html=1;fillColor=#fff2cc;strokeColor=#d6b656;" value="Subscription-II triggers lambda function&lt;br&gt;trigger-glue-workflow" vertex="1">
          <mxGeometry height="60" width="120" x="80" y="730" as="geometry" />
        </mxCell>
        <mxCell id="8-fmPmYztAE00Lu3LuMn-22" edge="1" parent="1" source="8-fmPmYztAE00Lu3LuMn-19" style="edgeStyle=none;curved=1;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;fontSize=12;startSize=8;endSize=8;" target="8-fmPmYztAE00Lu3LuMn-21" value="">
          <mxGeometry relative="1" as="geometry" />
        </mxCell>
        <mxCell id="8-fmPmYztAE00Lu3LuMn-19" parent="1" style="whiteSpace=wrap;html=1;fillColor=#fff2cc;strokeColor=#d6b656;" value="Triggering Lambda function starts the glue workflow&lt;br&gt;&amp;nbsp;IotPipelineWorkflow" vertex="1">
          <mxGeometry height="60" width="120" x="80" y="840" as="geometry" />
        </mxCell>
        <mxCell id="8-fmPmYztAE00Lu3LuMn-27" edge="1" parent="1" source="8-fmPmYztAE00Lu3LuMn-21" style="edgeStyle=none;curved=1;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;fontSize=12;startSize=8;endSize=8;" target="8-fmPmYztAE00Lu3LuMn-23" value="">
          <mxGeometry relative="1" as="geometry" />
        </mxCell>
        <mxCell id="8-fmPmYztAE00Lu3LuMn-21" parent="1" style="ellipse;whiteSpace=wrap;html=1;fillColor=#dae8fc;strokeColor=#6c8ebf;" value="Orchestration Started" vertex="1">
          <mxGeometry height="80" width="80" x="100" y="950" as="geometry" />
        </mxCell>
        <mxCell id="8-fmPmYztAE00Lu3LuMn-32" edge="1" parent="1" source="8-fmPmYztAE00Lu3LuMn-23" style="edgeStyle=none;curved=1;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;fontSize=12;startSize=8;endSize=8;" target="8-fmPmYztAE00Lu3LuMn-28" value="">
          <mxGeometry relative="1" as="geometry" />
        </mxCell>
        <mxCell id="8-fmPmYztAE00Lu3LuMn-23" parent="1" style="whiteSpace=wrap;html=1;fillColor=#fff2cc;strokeColor=#d6b656;" value="1st Glue job initialized&lt;div&gt;raw-cleaned&lt;/div&gt;" vertex="1">
          <mxGeometry height="60" width="120" x="80" y="1080" as="geometry" />
        </mxCell>
        <mxCell id="8-fmPmYztAE00Lu3LuMn-33" edge="1" parent="1" source="8-fmPmYztAE00Lu3LuMn-24" style="edgeStyle=none;curved=1;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;fontSize=12;startSize=8;endSize=8;" target="8-fmPmYztAE00Lu3LuMn-29" value="">
          <mxGeometry relative="1" as="geometry" />
        </mxCell>
        <mxCell id="8-fmPmYztAE00Lu3LuMn-24" parent="1" style="whiteSpace=wrap;html=1;fillColor=#fff2cc;strokeColor=#d6b656;" value="2nd Glue job initialized&lt;div&gt;cleaned-enhanced&lt;/div&gt;" vertex="1">
          <mxGeometry height="60" width="120" x="270" y="1080" as="geometry" />
        </mxCell>
        <mxCell id="8-fmPmYztAE00Lu3LuMn-34" edge="1" parent="1" source="8-fmPmYztAE00Lu3LuMn-25" style="edgeStyle=none;curved=1;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;fontSize=12;startSize=8;endSize=8;" target="8-fmPmYztAE00Lu3LuMn-30" value="">
          <mxGeometry relative="1" as="geometry" />
        </mxCell>
        <mxCell id="8-fmPmYztAE00Lu3LuMn-25" parent="1" style="whiteSpace=wrap;html=1;fillColor=#fff2cc;strokeColor=#d6b656;" value="3rd Glue job initializes&lt;div&gt;enhanced-summarized&lt;/div&gt;" vertex="1">
          <mxGeometry height="60" width="120" x="460" y="1080" as="geometry" />
        </mxCell>
        <mxCell id="8-fmPmYztAE00Lu3LuMn-35" edge="1" parent="1" source="8-fmPmYztAE00Lu3LuMn-26" style="edgeStyle=none;curved=1;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;fontSize=12;startSize=8;endSize=8;" target="8-fmPmYztAE00Lu3LuMn-31" value="">
          <mxGeometry relative="1" as="geometry" />
        </mxCell>
        <mxCell id="8-fmPmYztAE00Lu3LuMn-26" parent="1" style="whiteSpace=wrap;html=1;fillColor=#fff2cc;strokeColor=#d6b656;" value="Last Glue job initialized&lt;div&gt;summarized-final&lt;/div&gt;" vertex="1">
          <mxGeometry height="60" width="120" x="650" y="1080" as="geometry" />
        </mxCell>
        <mxCell id="8-fmPmYztAE00Lu3LuMn-28" parent="1" style="whiteSpace=wrap;html=1;fillColor=#fff2cc;strokeColor=#d6b656;" value="Results get stored in cleaned folder&lt;br&gt;&amp;lt;bucket&amp;gt;/cleaned" vertex="1">
          <mxGeometry height="60" width="120" x="80" y="1190" as="geometry" />
        </mxCell>
        <mxCell id="8-fmPmYztAE00Lu3LuMn-29" parent="1" style="whiteSpace=wrap;html=1;fillColor=#fff2cc;strokeColor=#d6b656;" value="Results get stored in enhanced folder&lt;div&gt;&amp;lt;bucket&amp;gt;/enhanced&amp;nbsp;&lt;/div&gt;" vertex="1">
          <mxGeometry height="60" width="120" x="269" y="1190" as="geometry" />
        </mxCell>
        <mxCell id="8-fmPmYztAE00Lu3LuMn-30" parent="1" style="whiteSpace=wrap;html=1;fillColor=#fff2cc;strokeColor=#d6b656;" value="Results get stored in summarized folder&lt;div&gt;&amp;lt;bucket&amp;gt;/summarized&lt;/div&gt;" vertex="1">
          <mxGeometry height="60" width="120" x="460" y="1190" as="geometry" />
        </mxCell>
        <mxCell id="8-fmPmYztAE00Lu3LuMn-31" parent="1" style="whiteSpace=wrap;html=1;fillColor=#fff2cc;strokeColor=#d6b656;" value="Results get stored in final folder&lt;div&gt;&amp;lt;bucket&amp;gt;/final&lt;/div&gt;" vertex="1">
          <mxGeometry height="60" width="120" x="650" y="1190" as="geometry" />
        </mxCell>
        <mxCell id="8-fmPmYztAE00Lu3LuMn-37" edge="1" parent="1" style="edgeStyle=none;curved=1;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;exitX=1;exitY=0.5;exitDx=0;exitDy=0;entryX=0;entryY=0.5;entryDx=0;entryDy=0;fontSize=12;">
          <mxGeometry relative="1" as="geometry">
            <Array as="points">
              <mxPoint x="250" y="1220" />
              <mxPoint x="240" y="1110" />
            </Array>
            <mxPoint x="200" y="1220" as="sourcePoint" />
            <mxPoint x="270" y="1110" as="targetPoint" />
          </mxGeometry>
        </mxCell>
        <mxCell id="8-fmPmYztAE00Lu3LuMn-38" edge="1" parent="1" style="edgeStyle=none;curved=1;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;exitX=1;exitY=0.5;exitDx=0;exitDy=0;entryX=0;entryY=0.5;entryDx=0;entryDy=0;fontSize=12;">
          <mxGeometry relative="1" as="geometry">
            <Array as="points">
              <mxPoint x="630" y="1219" />
              <mxPoint x="620" y="1109" />
            </Array>
            <mxPoint x="580" y="1219" as="sourcePoint" />
            <mxPoint x="650" y="1109" as="targetPoint" />
          </mxGeometry>
        </mxCell>
        <mxCell id="8-fmPmYztAE00Lu3LuMn-39" parent="1" style="rounded=0;whiteSpace=wrap;html=1;textOpacity=10;opacity=10;strokeColor=#82b366;fillColor=#d5e8d4;strokeWidth=5;gradientColor=#97d077;" value="Re" vertex="1">
          <mxGeometry height="230" width="780" x="40" y="1050" as="geometry" />
        </mxCell>
        <mxCell id="8-fmPmYztAE00Lu3LuMn-42" edge="1" parent="1" source="8-fmPmYztAE00Lu3LuMn-40" style="edgeStyle=none;curved=1;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;fontSize=12;startSize=8;endSize=8;" target="8-fmPmYztAE00Lu3LuMn-9" value="">
          <mxGeometry relative="1" as="geometry" />
        </mxCell>
        <mxCell id="8-fmPmYztAE00Lu3LuMn-45" edge="1" parent="1" source="8-fmPmYztAE00Lu3LuMn-40" style="edgeStyle=none;curved=1;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;fontSize=12;startSize=8;endSize=8;" target="8-fmPmYztAE00Lu3LuMn-44" value="">
          <mxGeometry relative="1" as="geometry" />
        </mxCell>
        <mxCell id="8-fmPmYztAE00Lu3LuMn-40" parent="1" style="rhombus;whiteSpace=wrap;html=1;fillColor=#dae8fc;strokeColor=#6c8ebf;" value="Lambda=&lt;div&gt;Success&lt;/div&gt;" vertex="1">
          <mxGeometry height="80" width="80" x="100" y="240" as="geometry" />
        </mxCell>
        <mxCell id="8-fmPmYztAE00Lu3LuMn-43" edge="1" parent="1" style="edgeStyle=none;curved=1;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;exitX=1;exitY=0.5;exitDx=0;exitDy=0;entryX=0;entryY=0.5;entryDx=0;entryDy=0;fontSize=12;">
          <mxGeometry relative="1" as="geometry">
            <Array as="points">
              <mxPoint x="440" y="1220" />
              <mxPoint x="430" y="1110" />
            </Array>
            <mxPoint x="390" y="1220" as="sourcePoint" />
            <mxPoint x="460" y="1110" as="targetPoint" />
          </mxGeometry>
        </mxCell>
        <mxCell id="8-fmPmYztAE00Lu3LuMn-44" parent="1" style="ellipse;whiteSpace=wrap;html=1;fillColor=#f8cecc;strokeColor=#b85450;" value="Failed" vertex="1">
          <mxGeometry height="80" width="80" x="505" y="240" as="geometry" />
        </mxCell>
        <mxCell id="8-fmPmYztAE00Lu3LuMn-49" edge="1" parent="1" source="8-fmPmYztAE00Lu3LuMn-46" style="edgeStyle=none;curved=1;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;fontSize=12;startSize=8;endSize=8;" target="8-fmPmYztAE00Lu3LuMn-48" value="">
          <mxGeometry relative="1" as="geometry" />
        </mxCell>
        <mxCell id="8-fmPmYztAE00Lu3LuMn-46" parent="1" style="whiteSpace=wrap;html=1;fillColor=#fff2cc;strokeColor=#d6b656;rounded=0;strokeWidth=1;" value="Final data gets stored in Glue DB in table format&lt;div&gt;iot_simulator_data_db&lt;/div&gt;" vertex="1">
          <mxGeometry height="60" width="120" x="160" y="1340" as="geometry" />
        </mxCell>
        <mxCell id="8-fmPmYztAE00Lu3LuMn-51" edge="1" parent="1" source="8-fmPmYztAE00Lu3LuMn-48" style="edgeStyle=none;curved=1;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;fontSize=12;startSize=8;endSize=8;" target="8-fmPmYztAE00Lu3LuMn-50" value="">
          <mxGeometry relative="1" as="geometry" />
        </mxCell>
        <mxCell id="8-fmPmYztAE00Lu3LuMn-48" parent="1" style="whiteSpace=wrap;html=1;fillColor=#fff2cc;strokeColor=#d6b656;rounded=0;strokeWidth=1;" value="Performed queries on optimized data in Athena" vertex="1">
          <mxGeometry height="60" width="120" x="160" y="1440" as="geometry" />
        </mxCell>
        <mxCell id="8-fmPmYztAE00Lu3LuMn-53" edge="1" parent="1" source="8-fmPmYztAE00Lu3LuMn-50" style="edgeStyle=none;curved=1;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;fontSize=12;startSize=8;endSize=8;" target="8-fmPmYztAE00Lu3LuMn-52" value="">
          <mxGeometry relative="1" as="geometry" />
        </mxCell>
        <mxCell id="8-fmPmYztAE00Lu3LuMn-50" parent="1" style="whiteSpace=wrap;html=1;fillColor=#fff2cc;strokeColor=#d6b656;rounded=0;strokeWidth=1;" value="Visualisation done with PowerBI" vertex="1">
          <mxGeometry height="60" width="120" x="160" y="1540" as="geometry" />
        </mxCell>
        <mxCell id="8-fmPmYztAE00Lu3LuMn-52" parent="1" style="ellipse;whiteSpace=wrap;html=1;fillColor=#f8cecc;strokeColor=#b85450;rounded=0;strokeWidth=1;" value="End" vertex="1">
          <mxGeometry height="80" width="80" x="180" y="1650" as="geometry" />
        </mxCell>
        <mxCell id="8-fmPmYztAE00Lu3LuMn-56" edge="1" parent="1" source="8-fmPmYztAE00Lu3LuMn-54" style="edgeStyle=none;curved=1;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;fontSize=12;startSize=8;endSize=8;" target="8-fmPmYztAE00Lu3LuMn-55" value="">
          <mxGeometry relative="1" as="geometry" />
        </mxCell>
        <mxCell id="8-fmPmYztAE00Lu3LuMn-54" parent="1" style="whiteSpace=wrap;html=1;fillColor=#fff2cc;strokeColor=#d6b656;" value="EventBridge rule gets triggered&lt;div&gt;workflow-status&lt;/div&gt;" vertex="1">
          <mxGeometry height="60" width="120" x="485" y="1340" as="geometry" />
        </mxCell>
        <mxCell id="8-fmPmYztAE00Lu3LuMn-55" parent="1" style="whiteSpace=wrap;html=1;fillColor=#fff2cc;strokeColor=#d6b656;" value="SNS topic generates&amp;nbsp; completion message&lt;br&gt;pipeline-status-notification" vertex="1">
          <mxGeometry height="60" width="120" x="485" y="1440" as="geometry" />
        </mxCell>
        <mxCell id="8-fmPmYztAE00Lu3LuMn-59" edge="1" parent="1" source="8-fmPmYztAE00Lu3LuMn-46" style="endArrow=none;html=1;rounded=0;fontSize=12;startSize=8;endSize=8;curved=0;exitX=0.5;exitY=0;exitDx=0;exitDy=0;entryX=0.5;entryY=0;entryDx=0;entryDy=0;" target="8-fmPmYztAE00Lu3LuMn-54" value="">
          <mxGeometry height="50" relative="1" width="50" as="geometry">
            <Array as="points">
              <mxPoint x="220" y="1310" />
              <mxPoint x="545" y="1310" />
            </Array>
            <mxPoint x="220" y="1330" as="sourcePoint" />
            <mxPoint x="580" y="1310" as="targetPoint" />
          </mxGeometry>
        </mxCell>
        <mxCell id="8-fmPmYztAE00Lu3LuMn-60" edge="1" parent="1" style="endArrow=none;html=1;rounded=0;fontSize=12;startSize=8;endSize=8;curved=1;entryX=0.441;entryY=1.009;entryDx=0;entryDy=0;entryPerimeter=0;" target="8-fmPmYztAE00Lu3LuMn-39" value="">
          <mxGeometry height="50" relative="1" width="50" as="geometry">
            <mxPoint x="384" y="1310" as="sourcePoint" />
            <mxPoint x="430" y="1260" as="targetPoint" />
          </mxGeometry>
        </mxCell>
      </root>
    </mxGraphModel>
  </diagram>
</mxfile>
