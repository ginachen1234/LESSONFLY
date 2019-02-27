import "bootstrap";

// lines for mapbox to work
import 'mapbox-gl/dist/mapbox-gl.css'; // <-- you need to uncomment the stylesheet_pack_tag in the layout!
import { initMapbox } from '../plugins/init_mapbox';
initMapbox();


import { initUpdateNavbarOnScroll } from '../components/navbar';
initUpdateNavbarOnScroll();
