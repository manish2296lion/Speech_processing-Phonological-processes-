% Test a certain configuration.
% See http://en.wikipedia.org/wiki/Precision_and_recall for a description
% of recall and precision.
% 
% threshold=2.0;
% [D, recall, precision, ...
%  specifity, fmeasure,suggested_threshold] = distance_table(4,6,threshold);
% 
% D<threshold
% 
% str = sprintf('Recall: %f',recall);
% disp(str);
% str = sprintf('Precision: %f',precision);
% disp(str);
% str = sprintf('Fmeasure: %f',fmeasure);
% disp(str);
% str = sprintf('Max-Min Distance: %f',suggested_threshold);
% disp(str);

figure;
% check out a single sample pair in debug mode
dtw_mfcc_distance('samples/02-pullover-2.wav',...
                  'samples/02-pullover-3.wav',...
                  true)
              
dtw_mfcc_distance('samples/02-pullover-2.wav',...
                  'samples/04-blumentopf-3.wav',...
                  true)              
              
              
cpp_mfcc = [0.620253, 2.92625, 3.59927, 3.48603, 2.68514, 2.82138, 3.09229, 3.35027, 3.17953, 3.97205, 4.28254, 4.34214, 5.15357, 5.14957, 5.56116, 5.71972, 6.78749, 6.79146, 6.46682, 6.20971, 6.43304, 6.25101, 5.30359, 4.46778, 4.55438, 5.10805, 4.80842, 5.08384, 5.75327, 5.80334, 5.64614, 5.58317, 5.096, 4.93842, 5.06808, 5.44879, 5.33778, 5.66266, 6.31944, 5.76213, 5.13999, 5.73832, 6.2777, 5.73232, 5.2658, 4.77022, 4.835, -1.06212, -2.52589, -2.74287, -1.20712, 0.237123, 3.264, 4.6208, 4.43225, 4.79348, 4.79435, 6.23054, 5.92548, 6.49129, 6.68815, 6.73119, 6.21885, 6.32904, 5.85266, 5.81815, 5.76524, 6.05616, 5.80031, 5.02925, 5.41265, 4.12569, 2.83316, 3.61877, 3.39173, 3.06595, -0.00216022, -1.17543, -1.37041, -1.35592, -4.28492, -5.09881, -4.88861, -5.2925, -5.16389, -4.66835, -5.03805, -6.28959, -5.61488, -5.76558, -6.34063, -5.83697, -4.05741, -4.75112, -4.61889, -4.67225, -2.53611; -1.03647, -2.14566, -1.36289, -0.910594, -1.32836, -1.1383, -1.06235, -1.04034, -0.723653, -1.47386, -0.788985, 0.368034, 1.19622, 1.63443, 1.97586, 1.78111, 1.65161, 1.9261, 1.95623, 2.05121, 1.81892, 1.91763, 0.457432, -0.206588, 0.13887, -0.530907, -1.91504, -2.10363, -2.33509, -2.80192, -3.89427, -4.26006, -3.64763, -3.46079, -2.97117, -3.09929, -3.62765, -2.81544, -2.04027, -2.35655, -2.99348, -3.5126, -3.10364, -3.48236, -2.98387, -3.79972, -2.86282, -0.67922, -0.448825, 0.0500421, -0.947339, -0.81939, -0.124784, -1.00034, -1.34662, -0.673854, -0.469349, -0.0859113, -0.275255, -0.542484, -0.355185, -0.0781388, -1.19608, -1.29649, -1.03337, -0.360768, -0.571293, -0.0133843, 0.206967, -0.132772, -0.156999, -1.05451, -1.39541, -0.525619, 0.0994965, -0.0609651, -0.603446, -1.21628, -0.390223, -1.25336, -1.09162, -0.798118, -1.07837, -1.5274, -1.85922, -1.94632, -1.46449, -2.00515, -1.45023, -1.99174, -2.8726, -2.70988, -2.32196, -2.63702, -3.78957, -3.36863, -2.54965; 0.56279, 0.0527393, -0.380559, -0.609335, -0.357739, -0.14701, 0.155885, 0.330064, 0.342477, 0.415602, 0.222009, 0.170171, 0.309656, 0.51223, 0.284927, -0.148206, 0.726414, 1.1953, 1.46722, 0.671041, 1.63219, 1.83236, 1.12207, 1.79552, 2.02091, 2.10893, 2.10576, 1.76243, 1.48889, 1.60037, 1.49996, 1.85008, 2.1773, 2.8844, 2.51081, 3.19536, 2.93666, 3.10432, 3.19667, 3.06247, 2.34911, 2.32639, 2.73459, 2.7112, 2.2364, 2.10279, 2.30232, 1.2615, 0.182066, -0.607833, -0.658378, -0.197827, -0.0763753, -0.327853, -0.065831, 0.576027, 0.437815, 1.191, 1.39773, 2.35965, 2.06871, 2.46372, 1.58262, 1.25303, 1.07188, 1.0442, 1.32121, 0.583505, 0.0321904, 0.606405, -0.00244486, -0.768175, -1.57423, -0.988653, -1.17215, -0.427216, -0.844411, -0.890723, -1.94431, -1.90396, -1.21382, -0.707701, -1.22048, -0.884668, -0.925368, -1.01425, -0.671717, -0.956374, -0.338057, -0.428318, -0.949642, -1.07349, -1.19064, -1.13304, -1.11726, -0.832149, -1.28577; 1.65932, 2.30466, 3.14591, 2.53517, 2.73484, 2.64572, 2.01287, 1.9881, 1.85747, 2.3302, 2.23652, 1.05969, 1.31084, 1.10959, 0.489111, 0.875531, 1.19667, 0.938982, 0.819528, 0.868323, 2.01612, 1.8961, 1.75988, 2.17373, 2.26478, 1.72116, 1.32313, 0.809747, 0.243514, 0.121433, 0.788666, 1.35192, 1.53809, 0.844088, 0.447207, 1.36674, 1.27238, 1.77034, 1.95622, 1.5151, 1.31788, 1.03327, 0.795606, 1.02049, 0.997908, 1.7448, 1.30743, -0.592139, -0.696407, -0.513774, -0.509157, -1.41722, -2.63271, -2.52649, -3.02181, -4.03647, -4.24828, -4.75257, -4.68222, -4.7925, -4.49494, -4.38385, -4.57791, -4.23293, -4.99357, -4.50893, -4.3319, -4.6435, -4.46868, -4.6075, -4.48144, -1.81874, -1.48815, -1.76367, -2.00356, -1.74097, -0.858893, 0.266223, -0.630534, -0.0526189, 0.430641, 0.268134, -0.533754, 0.248617, 0.057651, 0.394978, 1.29981, 1.10236, 1.91464, 1.77434, 1.30999, 1.48345, 1.23308, 1.15482, 1.54771, 1.49126, 0.606902; 0.274673, 0.0909451, 0.473944, 1.03831, 1.43599, 1.52196, 1.30737, 1.01745, 0.476088, -0.458002, -1.53217, -1.62238, -2.00441, -2.14044, -2.15767, -1.52893, -1.49631, -1.88832, -1.52781, -1.5862, -2.06804, -2.77501, -1.95728, -1.71642, -2.03767, -1.87134, -1.82187, -1.26583, -1.7066, -1.25817, -1.53226, -2.07026, -0.847439, -0.905962, -1.10294, -0.726088, -0.691252, -0.628309, -0.670667, -0.38819, -0.957671, -0.773087, -0.849551, -0.709242, -0.312747, -0.668733, -0.908482, 0.546119, -0.318581, -0.447641, 0.444931, 0.35188, -0.22891, -1.00629, -1.17928, -1.79187, -1.54675, -1.52014, -1.06674, -1.22278, -1.33392, -1.73727, -1.59334, -1.59366, -2.17932, -1.84611, -1.49469, -1.48115, -1.98419, -1.61351, -2.261, -2.42045, -2.44622, -2.47692, -2.65977, -2.64933, -4.19558, -2.84672, -1.38362, -1.21695, -1.08604, -0.704949, -0.384486, -1.17271, -1.45607, -1.19486, -1.05201, -0.956193, 0.147499, 0.208159, -0.34714, 0.158573, -0.869586, 0.425611, -0.110306, -0.0937452, -0.5999; 0.28763, -0.250489, -0.56526, 0.344456, 0.704748, 0.912381, 1.37731, 2.00331, 2.16618, 2.09014, 3.44949, 3.35863, 3.00399, 2.46652, 2.39941, 1.40225, 1.73432, 1.58043, 1.7341, 1.92954, 0.900527, 0.75621, 0.982033, 1.68968, 1.19355, 1.2348, 1.46397, 0.703231, 0.972108, 0.863175, 1.11788, 0.435063, -0.587996, 0.690236, 0.701661, 0.629759, 0.701643, 0.673614, 0.56153, -0.193835, 0.278915, 0.389853, -0.08587, -0.275409, 0.651602, 0.189144, 0.0498137, -0.491457, -1.58694, -1.48819, -0.415434, 0.404719, 0.729107, 0.24809, 0.6944, 0.911571, 0.768779, 0.696244, 0.807597, 0.415795, 0.83369, 0.939979, 0.31456, 1.32302, 0.482316, 1.3295, 1.71893, 1.43501, 1.47275, 1.75465, 0.523285, 0.131194, -0.446458, 0.221419, 0.280079, -0.516299, 0.486057, 0.523082, -0.528536, -0.666267, -1.06496, -1.49371, -0.871817, -1.27499, -0.916302, -1.50867, -1.34133, -1.02364, -0.466208, -0.429055, -0.390852, -0.349733, -1.51149, -0.598844, -0.853128, -0.976824, -1.08956; -1.09315, -1.16214, -1.51783, -2.66969, -3.10007, -3.6365, -3.41491, -2.80533, -3.52722, -2.63542, -2.0451, -1.84455, -2.00291, -2.33318, -2.15827, -1.79616, -2.40344, -2.06915, -2.03606, -1.33805, -1.43437, -1.01575, -0.289311, 0.246755, 0.347315, -0.34757, 0.341812, -0.39761, -1.82234, -2.90321, -3.34863, -3.24137, -2.04574, -1.4681, -1.22602, -2.00615, -1.00355, -1.19823, -1.76529, -1.76227, -1.7748, -1.0116, -1.2918, -1.81565, -1.0188, -1.34226, -1.18588, -1.48448, -1.64238, -0.747429, -0.593788, -1.14378, -1.26796, -0.72935, -0.736912, -0.562592, -0.489484, -0.848111, -0.769614, -0.988031, -0.889104, -0.541456, -0.702647, -0.184801, -0.818678, -0.670114, -0.667799, -1.35857, -0.316782, -0.182589, -0.761246, -0.418347, -0.0207995, 0.547563, 0.406582, -0.628121, -0.465112, -1.10663, -0.986885, -1.38233, -1.12312, -1.45898, -0.956834, -0.785056, -0.726581, -1.15764, -0.681957, -0.39096, -0.839255, -1.10125, -0.8545, -0.872446, -0.847311, -0.771933, -0.950727, -0.717829, -1.73166];              
figure;

show_mfcc_data(cpp_mfcc);