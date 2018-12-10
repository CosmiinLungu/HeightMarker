function [subjectHeight] = getCurrentSubjectHeight()
	subjectHeight = input ('Enter subject height(cm): ');
    if subjectHeight<0
        subjectHeight = input ('Please Enter subject height > 0(cm): ');
    end
end


