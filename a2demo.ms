struct Turtle(

	position_=[0,0,0],   -- where is turtle initially at origin
	heading_=[0,0,1],    -- unit length vector pointing to where turtle is going
	lineLength_=100,
	turnAngle_=60,
	rotationQuat_=quat 0 0 0 1,  --identity quaternion (0 degreen turn)

	fn drawA =(
		c = cone radius1:20 radius2:0 height:lineLength_
		rotate c rotationQuat_
		move c position_
		position_=((lineLength_*heading_) + position_)
	),
	fn drawB =(
		c = cone radius1:20 radius2:0 height:lineLength_
		rotate c rotationQuat_
		move c position_
		position_=((lineLength_*heading_) + position_)

	),
	fn drawPlus =(
		q = quat turnAngle_ [0,1,0]
		rotationQuat_=q * rotationQuat_
		invq =inverse q
		heading_ = heading_ * invq
	),
	fn drawMinus =(
		q = quat -turnAngle_ [0,1,0]
		rotationQuat_=q * rotationQuat_
		invq =inverse q
		heading_ = heading_ * invq

	)
)

fn draw codeString = (
	-- This is hardcoded for the codeString
	-- A+B+A-B-A-B-A+B+A

	t = Turtle()

	t.drawA()
	t.drawPlus()
	t.drawB()
	t.drawPlus()
	t.drawA()

	t.drawMinus()

	t.drawB()
	t.drawMinus()
	t.drawA()
	t.drawMinus()
	t.drawB()


	t.drawMinus()

	t.drawA()
	t.drawPlus()
	t.drawB()
	t.drawPlus()
	t.drawA()

)
fn main=(
	delete objects
	draw("")
)

main()




struct Turtle(
	position = [0,0,0],
	heading = [0,0,1],    -- unit length vector
	len = 100,
	turnAmount = 60,
	rotationQ = quat 0 0 0 1, -- identy quat. like setting to 0

	fn drawA = (
		c = cone radius1:20 radius2:0 height:100
		rotate c rotationQ
		move c position
		position = position + len *heading
	),
	fn drawB = (
		c = cone radius1:20 radius2:0 height:100
		rotate c rotationQ
		move c position
		position = position + len *heading
	),
	fn drawPlus = (
		q = quat turnAmount [0,1,0]
		invq = inverse q
		rotationQ = q * rotationQ
		heading = heading * invq
	),
	fn drawMinus = (
		q = quat -turnAmount [0,1,0]
		invq = inverse q
		rotationQ = q * rotationQ
		heading = heading * invq		
	)
)

fn draw codeString = (
	t = Turtle()
	t.drawA()
	t.drawPlus()
	t.drawB()
	t.drawPlus()
	t.drawA()
	t.drawMinus()
	t.drawB()
	t.drawMinus()
	t.drawA()
	t.drawMinus()
	t.drawB()
	t.drawMinus()
	t.drawA()
	t.drawPlus()
	t.drawB()
	t.drawPlus()
	t.drawA()
	
/*	for each letter of codeString(
		case of(
			(letter == 'A'): t.drawA()
			(letter == 'B'): t.drawB()
		    --..
)

	)*/
)
fn main = (
	delete objects
	draw "A+B+A-B-A-B-A+B+A"
)
main()
