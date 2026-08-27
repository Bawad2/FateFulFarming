
if y <= Y_og - 5 {  upPhase = false;} 
if y >= Y_og + 5  {  upPhase = true; }
if upPhase { y -= spd } else{ y += spd; }