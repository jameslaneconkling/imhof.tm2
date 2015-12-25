@contour: #A45F4F; //#8B4626;
@glacier: #1C4C80;
//satellite afternoon
/*@med-shadow: #46a;
@full-shadow: #246;
@med-highlight: #ea8;
@full-highlight: #fea;*/

//imhof
@med-shadow: #bbddef;
@full-shadow: #9ebcd7;
@med-highlight: #eff5fa;
@full-highlight: #fbfdff;
@wood: #f0ffea;
@scrub: transparent;
@grass: #ffa;
@crop: transparent;
@snow: #fff;

Map{ background-color: #FFFDFC; }

/*
// mapbox.mapbox-terrain-v1
#hillshade {
  ::0,
  ::1[zoom>=11],
  ::2[zoom>=14][zoom<=16],
  ::3[zoom>=17][zoom<=18],
  ::4[zoom>=19] {
  polygon-comp-op: multiply;
  //image-filters-inflate: true;
  //direct-image-filters: blur(); 
  polygon-opacity: 0.6;
  [class='medium_shadow'] { polygon-fill: @med-shadow; }
  [class='full_shadow'] { polygon-fill: @full-shadow; }
  [class='medium_highlight'] { polygon-fill: @med-highlight; }
  [class='full_highlight'] { polygon-fill: @full-highlight; }
  }
  ::1 { image-filters: agg-stack-blur(2,2); }
  ::2 { image-filters: agg-stack-blur(8,8); }
  ::3 { image-filters: agg-stack-blur(16,16); }
  ::4 { image-filters: agg-stack-blur(32,32); }
}*/

#hillshade{
  [class='shadow'] {
    //polygon-fill: fadeout(@contour,80%);
    [zoom<=8]{ polygon-fill: #d2cbc9; }
    [zoom>8] { polygon-fill: #e0e0e0; }
    polygon-comp-op: multiply;
    [level=89] { polygon-opacity: 0.15; }
    [level=78] { polygon-opacity: 0.3; }
    [level=67] { polygon-opacity: 0.4; }
    [level=56] { polygon-opacity: 0.6; }
  }
}

/*#landcover{
  opacity: 0.2;
  comp-op: multiply;
  //[class='scrub']{ polygon-fill: #fdc; }
  //[class='wood']{ polygon-fill: #dfb; }
  //[class='crop']{ polygon-fill: #ffd; }
  //[class='grass']{ polygon-fill: #fea; }
}*/

#contour {
  [zoom<=11],
  [zoom=12][index=2],
  [zoom=12][index=10],
  [zoom>=13][index=5],
  [zoom>=13][index=10]{
    line-color: @contour;
    line-opacity: 0.8;
    line-width: 0.2;
    [zoom=10]{ line-width: 0.3;}
    [zoom=11]{ line-width: 0.4;}
    [zoom=12]{ line-width: 0.5;}
    [zoom=13]{ line-width: 0.8;}
    [zoom>=14]{ line-width: 1.0;}
  }
  // blue hypsometric
  /*::hypso{
    polygon-fill: #aaf;
    polygon-opacity: 0.2;
    polygon-comp-op: multiply;
  }*/
}

#glaciers {
  ::fill{ 
    polygon-fill: fadeout(lighten(@glacier,100%), 99%); 
    polygon-smooth: 1;
  }
  polygon-fill: lighten(@glacier, 10%);
  polygon-opacity: 1;
  polygon-comp-op: color;
  line-color: #aaa;
  line-smooth: 1;
  [zoom>=9]{ line-width: 0.3; line-dasharray:1,0; }
  [zoom>=10]{ line-width: 0.5; line-dasharray:1,1; }
  [zoom>=12]{ line-width: 0.5; line-dasharray:2,1; line-color: #888; }
  [zoom>=14]{ line-width: 0.8; line-dasharray:3,2; }
}
/*
#glaciers.casing::outline {
  line-color: #aaa;
  line-width: 1;
  line-offset: 2;
}

#glaciers.casing::mask {
  line-width: 1;
  line-color: white;
  line-comp-op: 
}*/

