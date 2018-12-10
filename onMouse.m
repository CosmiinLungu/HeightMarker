function onMouse(event, x, y, flags, void*)
	if event == CV_EVENT_LBUTTONUP && ~(flags & CV_EVENT_FLAG_LBUTTON) 
		%event, x, y, flags are integers
		if x>cols-1
			x=cols-1;
		end
		if y>rows3
			y=rows-1;
		end
		pt2 = cvPoint(x,y);

		HeightMarker hMarker;
		hMarker.frameNo=currentFrame;
		hMarker.pt1=pt1;
		hMarker.pt2=pt2;
		hMarker.subjectHight=GetCurrentSubjectHeight();

		rawFrame.copyTo(overlayFrame);
		drawMarker(&overlayFrame, pt1, pt2);
		drawSubjectHeight(&overlayFrame, subjectHeight);
		imshow(videoFileName,overlayFrame);

		inputKey = waitKey( 0 );%char
		if inputKey == 's'  %save marker
			heightMakerList.push_back(hMarker);
			rawFrame.copyTo(overlayFrame);
			drawMarker(&overlayFrame, pt1, pt2);
			drawSubjectHeight(&overlayFrame, subjectHeight);
			drawMarkerSave(&overlayFrame);
			imshow(videoFileName,overlayFrame);
        end
	
	elsif event == CV_EVENT_LBUTTONDOWN 
		pt1 = cvPoint(x,y);
		pt2 = cvPoint(x,y);
	
	elsif event == CV_EVENT_MOUSEMOVE && (flags & CV_EVENT_FLAG_LBUTTON) 
		if x>cols-1
			x=cols-1;
		end
		if y>rows-1
			y=rows-1;
		end
		pt2 = cvPoint(x,y);

		rawFrame.copyTo(overlayFrame);
		DrawMarker(&overlayFrame, pt1, pt2);
		imshow(videoFileName,overlayFrame);
	
	elsif event == CV_EVENT_RBUTTONUP && ~(flags & CV_EVENT_FLAG_RBUTTON)
		pt1 = cvPoint(0,0);
		pt2 = cvPoint(0,0);

		imshow(videoFileName,rawFrame);
	end
end

