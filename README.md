# importply

import.ply() Narimane Chatar 26/11/2021

Automatically import all the ply in ASCII format files in your working directory as 'Large mesh3d'

ONLY SUPPORT PLY ASCII FILE FORMAT

          When provided other file format the function will return:
          Error in read.ply(file = plylist[i], ShowSpecimen = FALSE) : 
          PLY file is not ASCII format: format = binary_little_endian1.0
          
Requires geomorph package, if not installed the function will donwload it and call the required librairies:

          > import.ply()
          Le chargement a nécessité le package : geomorph
          Le chargement a nécessité le package : RRPP
          Le chargement a nécessité le package : rgl
          Le chargement a nécessité le package : Matrix
          
Example with mesh from from Chatar & al 2021

Chatar, N., Fischer, V., Siliceo, G. et al. Morphometric Analysis of the Mandible of Primitive Sabertoothed Felids from the late Miocene of Spain. J Mammal Evol 28, 753–771 (2021). https://doi.org/10.1007/s10914-021-09541-0

Importing ply files might take a while depending on the number of mesh and their size.  

          import.ply()
          
Returns different objects:

1. One 'Large mesh3d' object for each ASCII ply file in your directory that you can plot using plot3d(), adjusting the aspect3d ratio:

          > plot3d(Machairodus_aphanistus_BAT_3_13_1916b, aspect3d(1,2,1))
          
 ![image](https://user-images.githubusercontent.com/73315118/187656211-41098507-696f-422e-bcb4-35dc6bfec17d.png)
         

2. 'plylist', a list of all the ply files stored in your working directory:

          > plylist
           [1] "Acinonyx_rhm_MNCN COMP-3438.ply"         "Amphimachairodus_G_c_BC-102.ply"         "Caracal_c_MAV-1518.ply"                 
           [4] "F_AM_14349_M7786-9732 ASCII.ply"         "F_AM_14349_M7786-9732.ply"               "Felis_c_MAV-965.ply"                    
           [7] "Homotherium_c_CB-06.ply"                 "Machairodus_c_B 2230.ply"                "Machairodus_c_BAT-1´05 E6-42.ply"       
          [10] "Machairodus_c_BAT-1´05 F6-265.ply"       "Machairodus_c_BAT-1´06 F8 80.ply"        "Machairodus_c_BAT-3'09 1017.ply"        
          [13] "Machairodus_c_BAT-3´07 698.ply"          "Machairodus_c_BAT-3´09 1017.ply"         "Machairodus_c_BAT-3´09 1344.ply"        
          [16] "Machairodus_c_BAT-3´11 970a.ply"         "Machairodus_c_BAT-3´13 1916b.ply"        "Machairodus_lhm_BAT-1`01 E7-82.ply"     
          [19] "Machairodus_lhm_BAT-1`06 E4-52.ply"      "Machairodus_lhm_BAT-3`08 252.ply"        "Machairodus_lhm_BAT-3´07 672.ply"       
          [22] "Machairodus_rhm_B-382.ply"               "Machairodus_rhm_B-3974.ply"              "Machairodus_rhm_B-8630.ply"             
          [25] "Megantereon_c_CB-20.ply"                 "Neofelis_c_BC-005.ply"                   "Panthera_l_c_MNCN COMP-255.ply"         
          [28] "Panthera_o_c_MAV-2415.ply"               "Panthera_t_c_MNCN COMP-999.ply"          "Panthera_u_c_BC-56.ply"                 
          [31] "Promegantereon_c_B-134.ply"              "Promegantereon_c_B-2376.ply"             "Promegantereon_c_B-3109.ply"            
          [34] "Promegantereon_c_B-5264.ply"             "Promegantereon_c_B-7042.ply"             "Promegantereon_c_B-732.ply"             
          [37] "Promegantereon_c_B-751.ply"              "Promegantereon_c_BAT-1'07 E5-102.ply"    "Promegantereon_c_BAT-1´02 E7-66.ply"    
          [40] "Promegantereon_c_BAT-1´04 E4-115.ply"    "Promegantereon_c_BAT-1´07-E5-97.ply"     "Promegantereon_c_BAT-107-E5-102.ply"    
          [43] "Promegantereon_c_BAT-107-E5-102_bis.ply" "Promegantereon_c_BAT-107-E5-102_tre.ply" "Promegantereon_c_BAT-3´05 D8-755.ply"   
          [46] "Promegantereon_c_BAT-3´09 1250.ply"      "Promegantereon_c_BAT-3´09 207.ply"       "Promegantereon_c_BAT-3´09 779.ply"      
          [49] "Promegantereon_c_BAT-3´10-1773.ply"      "Promegantereon_c_BAT-3´11-1144.ply"      "Promegantereon_c_BAT-3´11-2020.ply"     
          [52] "Promegantereon_c_BAT_3_11_2339.ply"      "Promegantereon_lhm_BAT-3´14-94.ply"      "Promegantereon_rhm_B-5198.ply"          
          [55] "Promegantereon_rhm_B462.ply"             "Promegantereon_rhm_B4708.ply"            "Promegantereon_rhm_BAT-1`01 E5-17.ply"  
          [58] "Promegantereon_rhm_BAT-3`11 132.ply"     "Promegantereon_rhm_BAT-3`13 2057.ply"    "Promegantereon_rhm_BAT-3`13 2070.ply"   
          [61] "Promegantereon_rhm_BAT-3´13-1596.ply"    "Xenosmilus-c-BC-113.ply"  
