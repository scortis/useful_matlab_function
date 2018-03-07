function lasted = pauseUI( time )
if time<=1
    pause(time);
else
%     t = tic;
    tm = round(time);
    figure(314159);
    title(['Paused, ' num2str(round(tm)) ' sec' ],'FontSize',52);
    while(ishandle(314159) && tm>0)
        tm = tm-1;
        title(['Paused, ' num2str(round(tm)) ' sec' ],'FontSize',52);
        pause(1);
    end
    if(ishandle(314159))
        close(314159);
        if(nargout == 1)
            lasted = 1;
        end
    else 
        if(nargout == 1)
            lasted = 0;
        end
    end
end

