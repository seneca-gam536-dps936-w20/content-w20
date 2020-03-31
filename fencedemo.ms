
fn drawFence = (
	delete objects
	position = [0,0,0]
	heading = [1,0,0]
	b = box length:10 width:100 height:10
	b2 = box length:10 width:100 height:10

	q = quat 90 [0,0,1]
	invq = inverse q
	heading = heading * invq

	rotate b q
	boxposition = position + 50*heading
	move b boxposition

	position=position+100*heading
--  position = [0,0,0] + 100 *[0,1,0]
--  position = [0,0,0] + [0,100,0]
--  position = [0,100,0]
	
	rotate b2 q
	boxposition = position + 50*heading
	move b2 boxposition
)
drawFence()