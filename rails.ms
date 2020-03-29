fn main = (
	outsidelength=1000
	railwidth=100
	outsideRadius = (outsidelength*8)/(2*PI)
	insideRadius=  outsideRadius-railwidth
	insidelength = (2*PI*insideRadius)/8
	--delete objects
	b1= box width:outsidelength widthsegs:10 length:5 height:5
    addModifier b1 (Bend bendAngle:45 bendAxis:0)
	b2= box width:insidelength widthsegs:10 length:5 height:5
    addModifier b2 (Bend bendAngle:45 bendAxis:0)

	rotateZQ= quat 22.5 [0, 0 , 1]
	rotateXNinety = quat 90 [1, 0, 0]
	rotate b1 rotateXNinety
--	rotate b1 rotateZQ
	rotate b2 rotateXNinety
--	rotate b2 rotateZQ
	move b2 [0,railwidth,0]
)
main()