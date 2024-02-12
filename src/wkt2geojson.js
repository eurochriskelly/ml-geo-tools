const wellknown = require("wellknown");

// Example WKT for a point
const wkt = process.argv[2];
// Convert WKT to GeoJSON
const geojson = wellknown.parse(wkt);

console.log(`{
  "type": "FeatureCollection",
  "features": [ { "type": "Feature", "geometry": ${JSON.stringify(geojson)}}]
}`);
