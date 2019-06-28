function [tform, movingReg, rmse, pcFixed, pcMoving] = fitFaces(fixed, moving, iterations, showPlots)
    %{
    In dieser Funktion werden zwei Point Clouds registriert.
    %}
    gridStep = 0.5;
    pcFixed = fixed;
    %pcFixed = realignFace(pcFixed);
    pcMoving = moving;
    %pcMoving = realignFace(pcMoving);
    
    movingReg = pcMoving;
    movingReg = pcdownsample(movingReg,'gridAverage',0.1);
    tform = [];
    rmse = 0;
    
    for i=0:iterations
        [tform,movingReg, rmse] = pcregisterndt(movingReg, pcFixed, 0.1);
    end
    
    movingReg = pcdownsample(movingReg,'gridAverage',0.1);
    [tform,movingReg,rmse] = pcregistericp(movingReg, pcFixed);
    
    if showPlots == 1
        figure('name','Befor registration')
        pcshowpair(pcMoving,pcFixed,'VerticalAxis','Y','VerticalAxisDir','Down')
        view([340 -15])
        
        figure('name','After registration')
        pcshowpair(movingReg,pcFixed,'VerticalAxis','Y','VerticalAxisDir','Down')
        view([340 -15])
    end

end

