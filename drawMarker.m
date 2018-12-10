function drawMarker(Mat* overlay, Point pt1, Point pt2)
		
		%{
		circle(*overlay,pt1,5,Scalar(0,255,0),1,CV_AA);
		circle(*overlay,pt2,5,Scalar(0,255,0),1,CV_AA);
		line(*overlay,pt1,pt2,Scalar(0,255,0),1,CV_AA);
		%rectangle(*overlay,pt1,pt2,Scalar(0,255,0));
		%}
		
		
		hold on%draw on the image
		
		%draw a circle
		r = 5;
		th = 0:pi/50:2*pi;
		xunit = r * cos(th) + pt1.x;
		yunit = r * sin(th) + pt2.y;
		h = plot(xunit, yunit);
		
		
		%I need to divide the point into two coordinates: x and y
		%draw the line
		line([pt1.x pt2.x], [pt1.y pt2.y])
		%Draw the line from the x pt1 to x pt2; the same with y
		hold off
end


