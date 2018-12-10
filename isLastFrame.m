function [res] = isLastFrame()
	if currentFrame > totalFrames-1
		currentFrame = totalFrames-1;
		setTrackbarPos('Frame',videoFileName, currentFrame);
		currentAction = (inputKey=waitKey( 0 ))==' '?'0':inputKey;
		res = 1;%True statement;matlab doesn't have boolean 
	end
	res = 0;%False statement
end
