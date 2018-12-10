function [] = drawSubjectHeight(Mat* overlay, actionlabel)
	%char txtBuffer[50];%matlab will know that will be a text?
	%I don't know how can I save the txtbuffer... that comes from the command line in matlab
	%sprintf (txtBuffer, 'Subject Height(cm) is %d.',actionlabel);
	%I don't know also what does the actionLabel...
	%Why do I need also the action label?
	
	txtBuffer = getCurrentSubjectHeight;
	%buffer of the height returned from the getFunction
	sprintf (txtBuffer, 'Subject Height(cm) is %d.',actionlabel);
	position =  [40 40];
	value = 'File saved!';
	RGB = insertText(I,position,value,'AnchorPoint','LeftTop');
	
	%putText(*overlay, txtBuffer ,Point(40,40),  FONT_HERSHEY_SIMPLEX, 0.7, Scalar(0,255,0),1.5);
		
end

