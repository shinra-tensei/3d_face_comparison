function realignedPointCloud = realignFace(pc)
    %{
    In dieser Funktion werd die übergebene Point Cloud mittels SVD so
    normalisiert, dass sie am Nullpunkt und auf der X-Achse liegt.
    %}

    showPlots = 0;
    
    pc0 = mean(pc.Location);
    A=bsxfun(@minus,pc.Location,pc0); %center the data
    pcCentered = pointCloud([A(:,1),A(:,2),A(:,3)]);
    
    [U,S,V]=svd(A,0);
    A_rot = A*V; %V(:,1) is the direction of most variance
    A_final = bsxfun(@minus,A_rot,[min(A_rot(:,1)) 0 0]);
    pcRotated = pointCloud([A(:,1),A(:,2),A(:,3)]);
    pcFinal = pointCloud([A_final(:,1),A_final(:,2),A_final(:,3)]);
    
    sectionBottomROI = [pcFinal.XLimits(1) pcFinal.XLimits(2) pcFinal.YLimits(1) pcFinal.YLimits(2) pcFinal.ZLimits(1) pcFinal.ZLimits(1)+10];
    indices = findPointsInROI(pcFinal,sectionBottomROI);
    sectionBottomPC = select(pcFinal,indices);
    varBottomPC = var(sectionBottomPC.Location);
    
    sectionTopROI = [pcFinal.XLimits(1) pcFinal.XLimits(2) pcFinal.YLimits(1) pcFinal.YLimits(2) pcFinal.ZLimits(2)-10 pcFinal.ZLimits(2)];
    indices = findPointsInROI(pcFinal,sectionTopROI);
    sectionTopPC = select(pcFinal,indices);
    varTopPC = var(sectionTopPC.Location);
    
    if showPlots == 1
        figure('name','Original point cloud')
        pcshow(pc)
        
        figure('name','Centered point cloud')
        pcshow(pcCentered)
        
        figure('name','Rotated point cloud')
        pcshow(pcRotated)
        
        figure('name','Normalized point cloud')
        pcshow(pcFinal)
        
        figure('name','Topsection in red, bottom section in green')
        pcshow(pcFinal)
        hold on
        pcshow(sectionTopPC.Location,'r');
        pcshow(sectionBottomPC.Location,'g');
        hold off
    end
    
    if varTopPC(1) < varBottomPC(1)
        X = [1 0 0 0; ...
        0  cos(pi)  -sin(pi)  0
        0  sin(pi)  cos(pi)  0; ...
        0          0 0        1];
        tform = affine3d(X);
        pcFinal = pctransform(pcFinal, tform);  
    end
    
    if showPlots == 1
        figure('name','Final point cloud')
        pcshow(pcFinal)
    end
    
    realignedPointCloud = pcFinal;
end