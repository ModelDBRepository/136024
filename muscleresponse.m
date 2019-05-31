function [A Q] = muscleresponse(l)
    frs = 0;
    frf = 0;
    fds = 0;
    fdf = 0;
    fneg = 0;
    for i = 1:1:length(l)
        if l(i,1) >= 200
            if fneg == 0
                if l(i,2) < 0
                    fneg = 1;
                end
            elseif fneg == 1
                if frs == 0
                    if l(i,2) > 0
                        frs = l(i,1);
                    end
                else
                    if l(i,2) > 0
                        frf = l(i,1);
                    else
                        fds = l(i,1);
                        fneg = 2;
                    end
                end
            elseif fneg == 2
                if l(i,2) < 0
                    fdf = l(i,1);
                else
                    fneg = 3;
                end
            end
        end
    end
    sprintf('Activity = %g (from %g to %g)\nQuiescence = %g (form %g to %g)', (frf - frs), frs, frf, (fdf - fds), fds, fdf)
	if nargout>0
		A = frf - frs;
		Q = fdf - fds;
	end
end