//@landover: #EFFFDF; //light green
@landover: #EEE; //light gray
@wood: #f0ffea;
@scrub: #ddd;
@grass: #ddd;
@crop: #fdfcda;
@snow: #fff;

#landcover {
  //polygon-opacity: 0.4;
  [zoom>=11]{ polygon-opacity: 0.2; }
  polygon-fill: @landover;
  [class='wood']{ polygon-fill: @wood; }
  [class='scrub']{ polygon-fill: @scrub; }
  [class='crop']{ polygon-fill: @crop; }
  [class='grass']{ 
    polygon-fill: @grass; 
    polygon-opacity: 0.4; 
    polygon-comp-op: multiply;
  }
  line-color: #aaa;
  line-width: 0.6;
  line-opacity: 0.6;
  [class='snow']{ 
    polygon-opacity: 1;
    polygon-fill: @snow; 
    line-color: #fff;
    line-width: 0.8;
    line-opacity: 0.8;
  }
}