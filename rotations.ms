delete objects
c1 = cone radius1:20 radius2:0 height:100 wirecolour:blue
c2 = cone radius1:20 radius2:0 height:100 wirecolor:green
c3 = cone radius1:20 radius2:0 height:100 wirecolor:red

/*unit vectors towards positive axis*/
xaxis = [1,0,0]
yaxis = [0,1,0]
zaxis = [0,0,1]


/* flatten the cones*/
scale c1 [1,0.5,1]
scale c2 [1,0.5,1]
scale c3 [1,0.5,1]

/* turn green cone 60 ddegrees around an axis, translate it
   to the right to make it easier to see*/
turn = quat 60 zaxis
rotate c2 turn
move c2 [100,0,0]

/* turn red cone -60 ddegrees around an axis, translate it
   to the right to make it easier to see*/
turn = quat -60 zaxis
rotate c3 turn
move c3 [-100,0,0]


