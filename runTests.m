function runTests  
    lil_pump_neutral_1 = 'celeb_PLY/lil_pump_neutral_1.ply';
    lil_pump_neutral_2 = 'celeb_PLY/lil_pump_neutral_2.ply';
    lil_pump_smiling_1 = 'celeb_PLY/lil_pump_smiling_1.ply';
    lil_pump_smiling_2 = 'celeb_PLY/lil_pump_smiling_2.ply';
    
    emma_watson_neutral_1 = 'celeb_PLY/emma_watson_neutral_1.ply';
    emma_watson_neutral_2 = 'celeb_PLY/emma_watson_neutral_2.ply';
    emma_watson_smiling_1 = 'celeb_PLY/emma_watson_smiling_1.ply';
    emma_watson_smiling_2 = 'celeb_PLY/emma_watson_smiling_2.ply';
    
    kevin_hart_neutral_1 = 'celeb_PLY/kevin_hart_neutral_1.ply';
    kevin_hart_neutral_2 = 'celeb_PLY/kevin_hart_neutral_2.ply';
    kevin_hart_smiling_1 = 'celeb_PLY/kevin_hart_smiling_1.ply';
    kevin_hart_smiling_2 = 'celeb_PLY/kevin_hart_smiling_2.ply';
    
    bella_hadid_neutral_1 = 'celeb_PLY/bella_hadid_neutral_1.ply';
    bella_hadid_neutral_2 = 'celeb_PLY/bella_hadid_neutral_2.ply';
    
    
    tic;
    disp(['Comparing Lil Pump neutral 1 to Lil Pump neutral 2'])
    calculateDifferences(lil_pump_neutral_1, lil_pump_neutral_2, 3, 0)   
    toc
    disp(' ')
    
    tic;
    disp(['Comparing Lil Pump smiling 1 to Lil Pump smiling 2'])
    calculateDifferences(lil_pump_smiling_1, lil_pump_smiling_2, 3, 0)   
    toc
    disp(' ')
    
    tic;
    disp(['Comparing Emma Watson neutral 1 to Emma Watson neutral 2'])
    calculateDifferences(emma_watson_neutral_1, emma_watson_neutral_2, 3, 0)   
    toc
    disp(' ')
    
    tic;
    disp(['Comparing Emma Watson smiling 1 to Emma Watson smiling 2'])
    calculateDifferences(emma_watson_smiling_1, emma_watson_smiling_2, 3, 0)   
    toc
    disp(' ')
    
    tic;
    disp(['Comparing Kevin Hart neutral 1 to Kevin Hart neutral 2'])
    calculateDifferences(kevin_hart_neutral_1, kevin_hart_neutral_2, 3, 0)   
    toc
    disp(' ')
    
    tic;
    disp(['Comparing Kevin Hart smiling 1 to Kevin Hart smiling 2'])
    calculateDifferences(kevin_hart_smiling_1, kevin_hart_smiling_2, 3, 0)   
    toc
    disp(' ')
    
    tic;
    disp(['Comparing Bella Hadid neutral 1 to Bella Hadid neutral 2'])
    calculateDifferences(bella_hadid_neutral_1, bella_hadid_neutral_2, 3, 0)   
    toc
    disp(' ')
    
    tic;
    disp(['Comparing Kevin Hart neutral 2 to Kevin Hart smiling 2 '])
    calculateDifferences(kevin_hart_neutral_2, kevin_hart_smiling_2, 3, 0)   
    toc
    disp(' ')
    
    tic;
    disp(['Comparing Emma Watson neutral 2 to Emma Watson smiling 1'])
    calculateDifferences(emma_watson_neutral_2, emma_watson_smiling_1, 3, 0)   
    toc
    disp(' ')
    tic;
    disp(['Comparing Daniel Radcliff Neutral 1 to Daniel Radcliff Neutral 2'])
    calculateDifferences('celeb_PLY/daniel_radcliff_neutral_1.ply', 'celeb_PLY/daniel_radcliff_neutral_2.ply', 3, 0)   
    toc
    disp(' ')
    
    tic;
    disp(['Comparing Daniel Radcliff Smiling 1 to Daniel Radcliff Smiling 2'])
    calculateDifferences('celeb_PLY/daniel_radcliff_smiling_1.ply', 'celeb_PLY/daniel_radcliff_smiling_2.ply', 3, 0)   
    toc
    disp(' ')
    
    tic;
    disp(['Comparing Keanu Reeves Neutral 1 to Keanu Reeves Neutral 2'])
    calculateDifferences('celeb_PLY/keanu_neutral_1.ply', 'celeb_PLY/keanu_neutral_2.ply', 3, 0)   
    toc
    disp(' ')
    
    tic;
    disp(['Comparing Keanu Reeves Smiling 1 to Keanu Reeves Smiling 2'])
    calculateDifferences('celeb_PLY/keanu_smiling_1.ply', 'celeb_PLY/keanu_smiling_2.ply', 3, 0)   
    toc
    disp(' ')
    
    tic;
    disp(['Comparing Obama Neutral 1 to Obama Neutral 2'])
    calculateDifferences('celeb_PLY/obama_neutral_1.ply', 'celeb_PLY/obama_neutral_2.ply', 3, 0)   
    toc
    disp(' ')
    
    tic;
    disp(['Comparing Obama Smiling 1 to Obama Smiling 2'])
    calculateDifferences('celeb_PLY/obama_smiling_1.ply', 'celeb_PLY/obama_smiling_2.ply', 3, 0)   
    toc
    disp(' ')
    
    tic;
    disp(['Comparing Nick Minaj Neutral 1 to Nick Minaj Neutral 2'])
    calculateDifferences('celeb_PLY/nicki_minaj_neutral_1.ply', 'celeb_PLY/nicki_minaj_neutral_2.ply', 3, 0)   
    toc
    disp(' ')
    
    tic;
    disp(['Comparing Nicki Minaj Smiling 1 to Nicki Minaj Smiling 2'])
    calculateDifferences('celeb_PLY/nicki_minaj_smiling_1.ply', 'celeb_PLY/nicki_minaj_smiling_2.ply', 3, 0)   
    toc
    disp(' ')
    
    tic;
    disp(['Comparing Rihanna Neutral 1 to Rihanna Neutral 2'])
    calculateDifferences('celeb_PLY/rihanna_neutral_1.ply', 'celeb_PLY/rihanna_neutral_2.ply', 3, 0)   
    toc
    disp(' ')
    
    tic;
    disp(['Comparing Rihanna Smiling 1 to Rihanna Smiling 2'])
    calculateDifferences('celeb_PLY/rihanna_smiling_1.ply', 'celeb_PLY/rihanna_smiling_2.ply', 3, 0)   
    toc
    disp(' ')
    
    tic;
    disp(['Comparing Elijah Wood Neutral 1 to Elijah Wood Neutral 2'])
    calculateDifferences('celeb_PLY/elijah_neutral_1.ply', 'celeb_PLY/elijah_neutral_2.ply', 3, 0)   
    toc
    disp(' ')
    
    tic;
    disp(['Comparing Elijah Wood Smiling 1 to Elijah Wood Smiling 2'])
    calculateDifferences('celeb_PLY/elijah_smiling_1.ply', 'celeb_PLY/elijah_smiling_2.ply', 3, 0)   
    toc
    disp(' ')

    tic;
    disp(['Comparing Daniel Radcliff Neutral 1 to Daniel Radcliff Smiling 2'])
    calculateDifferences('celeb_PLY/daniel_radcliff_neutral_1.ply', 'celeb_PLY/daniel_radcliff_smiling_2.ply', 3, 0)   
    toc
    disp(' ')
    
    tic;
    disp(['Comparing Elijah Wood Neutral 1 to Elijah Wood Smiling 2'])
    calculateDifferences('celeb_PLY/elijah_neutral_1.ply', 'celeb_PLY/elijah_smiling_2.ply', 3, 0)   
    toc
    disp(' ')
    
    tic;
    disp(['Comparing Keanu Reeves Neutral 2 to Keanu Reeves Smiling 2'])
    calculateDifferences('celeb_PLY/keanu_neutral_2.ply', 'celeb_PLY/keanu_smiling_2.ply', 3, 0)   
    toc
    disp(' ')
    
    tic;
    disp(['Comparing Rihanna Smiling 1 to Rihanna Neutral 1'])
    calculateDifferences('celeb_PLY/rihanna_smiling_1.ply', 'celeb_PLY/rihanna_neutral_1.ply', 3, 0)   
    toc
    disp(' ')

    tic;
    disp(['Comparing Obama Smiling 2 to Obama Neutral 2'])
    calculateDifferences('celeb_PLY/obama_neutral_2.ply', 'celeb_PLY/obama_smiling_2.ply', 3, 0)   
    toc
    disp(' ')
    
    tic;
    disp(['Comparing Nicki Minaj Smiling 1 to Nicki Minaj Neutral 2'])
    calculateDifferences('celeb_PLY/nicki_minaj_smiling_1.ply', 'celeb_PLY/nicki_minaj_neutral_2.ply', 3, 0)   
    toc
    disp(' ')
end