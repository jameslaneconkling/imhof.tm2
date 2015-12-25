// Common Colors //
@water: #f0f7ff; //#dce8f1;
@admin: #666;
@8:0.4;
@10:0.8;
@12:2;
@14:4;

#water.casing::casing{
  line-color: darken(@water,20%);
  line-width: 1;
  [zoom>=8]{ line-width: @8 + 0.2; }
  [zoom>=10]{ line-width: @10; }
  [zoom>=12]{ line-width: @12 - 0.8; }
  [zoom>=14]{ line-width: @14 - 0.6; }
}

#water.fill::fill {
  polygon-fill: @water;
}

#waterway.casing::casing{ //not sure why this needs the ::selector//
  line-color: darken(@water,20%);
  line-join: round;
  line-cap: round;
  line-smooth:0.5;
  [zoom>=8]{ line-width: @8+0.6; }
  [zoom>=10]{ line-width: @10+0.6; }
  [zoom>=12]{ line-width: @12+0.6; }
  [zoom>=14]{ line-width: @14+0.6; }
}

#waterway.fill{
  line-color: @water;
  line-join: round;
  line-cap: round;
  line-smooth:0.5;
  [zoom>=8]{ line-width: @8; }
  [zoom>=10]{ line-width: @10; }
  [zoom>=12]{ line-width: @12; }
  [zoom>=14]{ line-width: @14; }
}

#building {
  polygon-fill: #444;
}


#road[zoom>=10], #bridge[zoom>=10] {
  line-color: #555;
  line-width: 0.6;
  [zoom>=12]{ line-width: 1.4; }
  #bridge[zoom>=12]{
    line-width: 2.4;
  }
}

#admin[admin_level=4][maritime=0] {
  ::case {
    line-color: @admin; 
    line-join: round;
    line-cap: round;
    line-width: 0.8;
    line-smooth: 1;
    [zoom>=9] { line-width: 1; }
    [zoom>=11]{ line-width: 3; }
  }
  ::fill {
    line-color: white;
    line-join: round;
    line-dasharray: 3,2;
    line-width: 0.4;
    line-smooth: 1;
    [zoom>=9] { line-width: 0.6; }
    [zoom>=11]{ line-width: 1.5; line-dasharray: 5,3; }
  }
}

#admin[admin_level=2] {
  [maritime=0] {
    opacity: 0.8;
    line-color: @admin;
    line-join: round;
    line-cap: round;
    line-width: 1;
    line-smooth: 1;
    [zoom>=9] { line-width: 1.6; }
    [zoom>=11]{ line-width: 2.6; }
  }
  [maritime=1] { line-color: #345; line-dasharray: 3,2; }
}
