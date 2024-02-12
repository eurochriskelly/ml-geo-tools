const wellknown = require('wellknown');

// Example WKT for a point
const wkt = 'POINT (30 10)';

// Convert WKT to GeoJSON
const geojson = wellknown.parse(wkt);

console.log(geojson);

