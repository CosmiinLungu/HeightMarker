function peopleDetect()
	%Load the upright people detector.

    detector = peopleDetectorACF;
    %Read an image. Detect people in the image.
    I = imread('cam123.png');
    [bboxes,scores] = detect(detector,I);
    
%Annotate detected people with bounding boxes and their detection scores.
    I = insertObjectAnnotation(I,'rectangle',bboxes,scores);
    figure
    imshow(I)
    title('Detected People and Detection Scores')
end



