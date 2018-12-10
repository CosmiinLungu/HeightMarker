function main(argc, argv )%argv->char**-->string
	if argc ~= 3%argc->int
		disp('Not enough parameters\n');
		return ;
	end

	videoFileName = argv(1);           % the videoFileName 
	heightFileName = argv(2);
	
	inputVideo.open(videoFileName);
	
	warning_message = sprintf('Could not open the input video: %s \n', videoFileName);
	if ~inputVideo.isOpened()
		uiwait(warnglg(warning_message));
        %popup message box with warning message and return
		return
	end

	heightMakerList = vector<HeightMarker>();
	loadMarkerLog(heightFileName, &heightMakerList);
	if heightMakerList.size()>0
		subjectHeight = heightMakerList.at(0).subjectHight;
	end
	rows=inputVideo.get(CV_CAP_PROP_FRAME_HEIGHT);
	rows= cast(rows,'int');
	
	cols=inputVideo.get(CV_CAP_PROP_FRAME_WIDTH);
	cols = cast(cols, 'int');
	
	currentFrame = 0;
	totalFrames = inputVideo.get(CV_CAP_PROP_FRAME_COUNT);

	namedWindow(videoFileName, CV_WINDOW_NORMAL);
	createTrackbar('Frame', videoFileName, &currentFrame, totalFrames, onTrackbar);
	setMouseCallback(videoFileName,onMouse);

	inputKey='0';
	currentAction='0';
	
	%infinite loop
	while true
		onKeyboard();

		inputKey=waitKey( 1 );			
		if inputKey~=-1 %have a keyboard input
			currentAction=inputKey;
		end
		if currentAction == 27 %esc
			break;		
		end
	end	
	return
end



