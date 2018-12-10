function loadMarkerLog(heightFileName, vector<HeightMarker>* heightMakerList)
	%{
	ifstream heightFile;

	char temp[100];
	heightFile.open (heightFileName, fstream::in);
	%}
	fileID = fopen(heightFileName,'r');
	
	formatSpec = '%f';%Use '%f' to specify floating-point numbers.
	sizeA = [2 Inf];%Read to the end of the file.
	
	%heightFile.getline(temp,100);
	%A = fscanf(fileID,formatSpec)
	A = fscanf(fileID,formatSpec,sizeA);
	
	%{
	while heightFile.good())
		HeightMarker hMarker;
			heightFile >> hMarker.frameNo
			heightFile >> hMarker.pt1.x >> hMarker.pt1.y ;
			heightFile >> hMarker.pt2.x >> hMarker.pt2.y ;
			heightFile >> hMarker.subjectHight;

			(*heightMakerList).push_back(hMarker);
	%}
	fclose(fileID);
	%heightFile.close();
end


