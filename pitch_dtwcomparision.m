function [ minimum_distance,area,matrixX,matrixY,steps ] = pitch_dtwcomparision( y1,y2,Fs1,Fs2,Tw,Ts )
%DTW of Pitch and finds the area and horizontal and vertical segments
%y1 AND y2 are 2 signals and Fs1 and Fs2 are their sampling frequency,Tw-window length,Ts-window Shift
%area is the area between y=x and the minimum path curve
%matrixX and matrixY has 3 columns the length of the horizontal segment and
%starting and ending co-ordinates of the segment in other 2 columns

Nw1 = round( 1E-3*Tw*Fs1 );    % frame duration (samples)
Ns1 = round( 1E-3*Ts*Fs1 );    % frame shift (samples)

framevect1=vec2frames( y1, Nw1, Ns1);
framevect1=framevect1';

[r1,c1] = size(framevect1);

matrix_pitch1=[];

    for iter = 1:r1
        segment = framevect1(iter,1:end);
        [T0, F0, a1] = Pitch_Calculation(segment, Fs1);
        matrix_pitch1=[matrix_pitch1;F0(1)];
    end

    Nw2 = round( 1E-3*Tw*Fs2 );    % frame duration (samples)
    Ns2 = round( 1E-3*Ts*Fs2 );    % frame shift (samples)---->for testing purpose, both initial window and shift must be of same number of frames

    framevect2=vec2frames( y2, Nw2, Ns2);
    framevect2=framevect2';

    [r2,c2] = size(framevect2);

    matrix_pitch2=[];

    for iter = 1:r2
        segment = framevect2(iter,1:end);
        [T0, F0, a1] = Pitch_Calculation(segment, Fs2);
        matrix_pitch2=[matrix_pitch2;F0(1)];
    end


    [ minimum_distance,area,matrixX,matrixY,steps ] = dtwFeatureExtraction( matrix_pitch1.',matrix_pitch2.',Tw );


end
