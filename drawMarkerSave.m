function drawMarkerSave(Mat* overlay)
	%putText(*overlay, 'Marker saved!' ,Point(40,65),  FONT_HERSHEY_SIMPLEX, 0.7, Scalar(0,255,0),1.5);
	position =  [40 65];
	value = 'Marker saved!';
	RGB = insertText(I,position,value,'AnchorPoint','LeftTop');
end

