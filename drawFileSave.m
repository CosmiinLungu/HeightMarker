function [RGB] = drawFileSave(Mat* overlay)%I need to specify the parameter, right?
	%overlay is the image received
	%putText(*overlay, 'File saved!' ,Point(40,65),  FONT_HERSHEY_SIMPLEX, 0.7, Scalar(0,255,0),1.5);
	
	position =  [40 65];
	value = 'File saved!';
	RGB = insertText(I,position,value,'AnchorPoint','LeftTop');
	
end


