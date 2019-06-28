function featureHausdorffDistance = featureSimilarity(pc1, pc2, iterations)
    %{
    Hier wird die ähnlichkeit der Features im Gesicht berechnet.
    Zuerst werden die eingehenden Point Clouds mit der Funktion "realignFace" 
    normiert. Dessen Funktionsweise ist im File beschrieben. Dann wird aus
    beiden Gesichtern ein Bereich ausgeschnitten, der mittig platziert ist
    und horizontal von den Augenbrauen bis zum Mundende bzw. vertikal von
    einem Auge zum anderen. Somit sind die wichtigsten Eigenheiten des
    Gesichtes, die Features, in diesem Bereich enthalten. Die Berechnung 
    der entsprechenenden Indizes für das Ausschneiden sind emprisisch
    ermittelt worden. Die Indizes für das selektieren des Featurebereiches 
    werden approximativ proportional für jedes Gesicht gleich gewählt.
    Die ausgeschnittenen Bereiche werden als eigene Punktwolken gespeichert
    und dann aufeinander registriert. Im letzten Schritt wird nach dem
    registrieren die Modified Hausdroff Distance errechnet und diese als
    Score zurückgeschickt.
    %}
    % Zwecks Debuggen (auf 1 setzen zeigt Zwischenergebnisse in Plots an)
    showPlots = 1;
    %% Gesichter normieren
    pc1 = realignFace(pc1); 
    pc2 = realignFace(pc2);
    %% Die entsprechenden Features als eigene Point Clouds speichern
    roi1 = [pc1.XLimits(2)/4.5 pc1.XLimits(2)/1.25 pc1.YLimits(1)/1.5 pc1.YLimits(2)/1.5 pc1.ZLimits(1) pc1.ZLimits(2)/2];
    indices = findPointsInROI(pc1,roi1);
    featurePC1 = select(pc1,indices);
    
    roi2 = [pc2.XLimits(2)/4.5 pc2.XLimits(2)/1.25 pc2.YLimits(1)/1.5 pc2.YLimits(2)/1.5 pc2.ZLimits(1) pc2.ZLimits(2)/2];
    indices = findPointsInROI(pc2,roi2);
    featurePC2 = select(pc2,indices);    
    %% Für Debug Zwecke können die normierten Point Clouds und der ausgewählte Bereich geplottet werden
    if showPlots == 1
        figure(5)
        pcshow(pc1)
        hold on
        pcshow(featurePC1.Location,'r');
        hold off
    
        figure(6)
        pcshow(pc2)
        hold on
        pcshow(featurePC2.Location,'r');
        hold off
        
        figure(7)
        pcshow(featurePC1)
        
        figure(8)
        pcshow(featurePC2)
    end
    %% Die ausgeschnittenen Teile werden aneinander registriert
%    [tform, registered, rmse, original, moving] = fitFaces(featurePC1, featurePC2, 5, 0);
%     registered = pcdownsample(registered,'gridAverage',0.1);
%     original = pcdownsample(original,'gridAverage',0.1);
%     %% Modified Hausdroff Distanz wird für die registrierten Features berechnet
%     featureHausdorffDistance = ModHausdorffDist(registered.Location,original.Location);
end