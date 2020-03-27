fn drawBoxes numBoxes boxColour = (
    xLoc = -((numBoxes * 10) + (numBoxes-1)*10)/2 + 5
    for i = 1 to numBoxes do (
        box length:10 height:10 width:10 pos:[xLoc,0,0] wirecolor:boxColour
        xLoc +=20
    )

)
try(destroyDialog myUIExample )catch()
rollout myUIExample "Awesome Box Drawer" (
    group "Controls" (
        spinner numBoxSpinner "Number of Boxes:" type:#integer
        colorpicker boxColourPicker "Box Colour:"
        button createBoxButton "Generate"
    )
    on createBoxButton pressed do(
        drawBoxes numBoxSpinner.value boxColourPicker.color
    )
)
createDialog myUIExample 200 300