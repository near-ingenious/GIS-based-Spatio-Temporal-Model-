<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis styleCategories="Symbology">
  <renderer-v2 type="categorizedSymbol" forceraster="0" attr="Deployment_Type">
    <categories>
      <category render="true" symbol="0" value="Rooftop" label="Rooftop"/>
      <category render="true" symbol="1" value="Floating" label="Floating"/>
      <category render="true" symbol="2" value="Ground_Degraded" label="Ground (Degraded)"/>
    </categories>
    <symbols>
      <symbol name="0" type="marker" clip_to_extent="1">
        <layer class="SimpleMarker" pass="0" enabled="1" locked="0">
          <prop v="circle" k="name"/>
          <prop v="#ff6b6b" k="color"/>
          <prop v="2" k="size"/>
          <prop v="0.8" k="opacity"/>
        </layer>
      </symbol>
      <symbol name="1" type="marker" clip_to_extent="1">
        <layer class="SimpleMarker" pass="0" enabled="1" locked="0">
          <prop v="circle" k="name"/>
          <prop v="#4ecdc4" k="color"/>
          <prop v="2" k="size"/>
          <prop v="0.8" k="opacity"/>
        </layer>
      </symbol>
      <symbol name="2" type="marker" clip_to_extent="1">
        <layer class="SimpleMarker" pass="0" enabled="1" locked="0">
          <prop v="circle" k="name"/>
          <prop v="#ffa07a" k="color"/>
          <prop v="2" k="size"/>
          <prop v="0.8" k="opacity"/>
        </layer>
      </symbol>
    </symbols>
  </renderer-v2>
</qgis>