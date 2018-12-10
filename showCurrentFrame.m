function [] = showCurrentFrame()
	
	fig = implay(videoFileName) %Play the video
	fig = 
    UnifiedScope with properties:
      InstanceNumber: 1
       Specification: [1x1 iptscopes.IMPlayScopeCfg]
          MessageLog: []
          DataSource: [1x1 matlabshared.scopes.source.FileSource]
              Visual: [1x1 iptscopes.VideoVisual]
              Parent: [1x1 Figure]
	%Get the current frame number
	CurrentFrameNumber = fig.DataSource.Controls.CurrentFrame
	
	%{setTrackbarPos('Frame',videoFileName, currentFrame);
	inputVideo >> rawFrame ;
	if rawFrame.empty()
        return;
	end;
	%}
	frame_show = sprintf('Current Frame: %d \n', currentFrame);
    disp(frame_show);
	imshow(videoFileName,rawFrame);
end

	