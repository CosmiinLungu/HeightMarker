function [] = onTrackbar(trackPos, void*)%I don't know what does this void*
	if trackPos~=prevFrame+1%trackPos is an integer
		inputVideo.set(CV_CAP_PROP_POS_FRAMES,currentFrame);
	end
	prevFrame = currentFrame;
end


