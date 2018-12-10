function onKeyboard()
	switch currentAction
        %Matlab doesn't need a "break" after a case or an if
		case '0'
			%play
			currentFrame=currentFrame + 1;
			if isLastFrame()
				%break
			end
			showCurrentFrame();
                
		case ' '
			%pause
            %currentAction = (inputKey=waitKey( 0 ))==' '?'0':inputKey;
            currentAction = currAct_check;
            
		case 'q'
			%back 30 frames
			currentFrame=currentFrame-step;
			showCurrentFrame();
            currentAction = currAct_check;
            
		case 'e'
			%foreward 30 frames
			currentFrame=currentFrame+step;
            if isLastFrame()
            end
			showCurrentFrame();
			currentAction = currAct_check;
            
		case 'a'
			%back 1 frames
			currentFrame=currentFrame-1;
			showCurrentFrame();
			currentAction = currAct_check;
		
        case 'd'
			%forward 1 frames
			currentFrame=currentFrame+1;
			if isLastFrame()
            end
			showCurrentFrame();
			currentAction = currAct_check;
                        
		case 'v'
			%show marks
			rawFrame.copyTo(overlayFrame);
			for i=0:heightMakerList.size()
				drawMarker(&overlayFrame, heightMakerList.at(i).pt1, heightMakerList.at(i).pt2);
				break;
			end
			imshow(videoFileName,overlayFrame);			
			if (inputKey=waitKey(0)) =='f'
				%save as file
				saveMarkerLog( heightFileName, heightMakerList);
				imshow(videoFileName,overlayFrame);
			end
			currentAction = currAct_check;
            
		otwerwise
			currentAction='0';
		end
end


