function [res] = currAct_check()
    res = (inputKey=waitKey( 0 ))==' ';
            if res
                res = '0';
            elsif
                res = inputkey;
            end
end
