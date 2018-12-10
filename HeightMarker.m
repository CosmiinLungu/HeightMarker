	%{
OpenCV based height marker.

	1. Run 
	HeightMarker.exe cam01.avi cam01.txt

	2. Keys
	Space: play/pause
	A: go backward by 1 frame
	D: go foreward by 1 frame
	Q: go backward by 30 frame
	E: go backward by 30 frame
	V: show marking result
	S: save current mark
	V+F: save marks to file

 (C) 2015 Shengzhe Li <lishengzhe@gmail.com>

This code is free software; you can redistribute it and/or modify
it under the terms of the GNU General Public License version 2 as
published by the Free Software Foundation.
%}

step = 30;
subjectHeight = -1;

HeightMarker.frameNo;
HeightMarker.pt1;%head, feet points
HeightMarker.pt2;
HeightMarker.subjectHeight;%in centimeter

%vector<HeightMarker> heightMakerList






