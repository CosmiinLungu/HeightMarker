function [] = saveMarkerLog(heightFileName, vector<HeightMarker> heightList)
	%ofstream heightFile;%
	%heightFileName->String
	fileID  = fopen(heightFileName,'w');
	heightFile.open (heightFileName, fstream::in | fstream::out | ofstream::app );
	fprintf('Frame\t Head.X\t Head.Y\t');
	fprintf('Feet.X\t Feet.Y\t Height\n');

	HeightMarker hMarker;
	for i=0:heightList.size()
		hMarker = heightList.at(i);

		fprintf('hMarker.frameNo\t heightFile hMarker.pt1.x\t');
		fprintf('hMarker.pt1.y\t heightFile hMarker.pt2.x\t');
		fprintf('hMarker.pt2.y\t hMarker.subjectHight\n');
	end
	fprintf('\n');	
	fclose(heightFile);

	DrawFileSave(overlayFrame);
end


