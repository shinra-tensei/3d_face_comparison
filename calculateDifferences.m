function calculateDifferences(pathPC1, pathPC2, registerIterations, showPlots)
    %{
    Diese Funktion steuert prinzipiell den generellen Ablauf eines
    Vergleichs. Zuerst wird registriert, dann die Hausdorff Distanz
    berechnet. Als nächstes werden die Gesichter normalisiert und die
    Features extrahiert um die Modified Hausdorff Distanz zu berechnen. Als
    letztes wird das Ergebnis noch von 0-100 gestreckt.
    %}
    pcOrig1 = pcread(pathPC1);
    pcOrig2 = pcread(pathPC2);
    [tform, registered, rmse, original, moving] = fitFaces(pcOrig1, pcOrig2, registerIterations, showPlots);
    
    gridStep = 0.5;
    pcDS1 = pcdownsample(original,'gridAverage',gridStep);
    pcDS2 = pcdownsample(registered,'gridAverage',gridStep);
    [hd,mindst] = hausdorff(pcDS1.Location,pcDS2.Location);
    
    mhd = featureSimilarity(pcOrig1, pcOrig2, 3);
    disp(['RMSE from the registration is ' num2str(rmse)])
    disp(['Hausdorff distance is ' num2str(hd)])
    disp(['Modified Hausdorff distance for features is ' num2str(mhd)])

    maxNew = 100;
    minNew = 0;
    maxOld = 10;
    minOld = 1;
    res = (1*rmse+1.5*hd+2*mhd)/3;
    res = 100 - ((maxNew-minNew)/(maxOld-minOld) * (res-minOld) + minNew);
    disp(['Calculated similarity score is ' num2str(round(res, 2)) '%'])
end