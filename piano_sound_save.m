fs=44100; % sampling frequency
amp=1
freq_i=440;%initial freq
duration = 1
i=0 %note 0 will be 440 (A_5). This will be the lowest note available.

%So I've written the code such that each time we increase i by 1, the tone
%changes by 1 semitone. The lowest note here is denoted with i=0 and i
%denotes how many semitones the note is away from A5. There are a total of
%36 notes = 3 octaves. 

%IMPORTANT-ish: you may wanna mute it when you run the program because
%it'll create all of the sounds in a 'canon' LOL 

    freq = freq_i*2^(i/12)
    values=0:1/fs:duration
    a=amp*sin(2*pi*freq*values)
    sound(a,fs)
    filename = 'note_0.mp4'
    audiowrite(filename,a,fs)
i=1 
    freq = freq_i*2^(i/12)
    values=0:1/fs:duration
    a=amp*sin(2*pi*freq*values)
    sound(a,fs)
    filename = 'note_1.mp4'
    audiowrite(filename,a,fs)
    
i=2 
    freq = freq_i*2^(i/12)
    values=0:1/fs:duration
    a=amp*sin(2*pi*freq*values)
    sound(a,fs)
    filename = 'note_2.mp4'
    audiowrite(filename,a,fs)
    
    
    
    
    
i=3 
    freq = freq_i*2^(i/12)
    values=0:1/fs:duration
    a=amp*sin(2*pi*freq*values)
    sound(a,fs)
    filename = 'note_3.mp4'
    audiowrite(filename,a,fs)    
    
    
    
i=4 
    freq = freq_i*2^(i/12)
    values=0:1/fs:duration
    a=amp*sin(2*pi*freq*values)
    sound(a,fs)
    filename = 'note_4.mp4'
    audiowrite(filename,a,fs)
    
    
    
i=5 
    freq = freq_i*2^(i/12)
    values=0:1/fs:duration
    a=amp*sin(2*pi*freq*values)
    sound(a,fs)
    filename = 'note_5.mp4'
    audiowrite(filename,a,fs)
    
    
    
i=6
    freq = freq_i*2^(i/12)
    values=0:1/fs:duration
    a=amp*sin(2*pi*freq*values)
    sound(a,fs)
    filename = 'note_6.mp4'
    audiowrite(filename,a,fs)
    
    
    
 i=7 
    freq = freq_i*2^(i/12)
    values=0:1/fs:duration
    a=amp*sin(2*pi*freq*values)
    sound(a,fs)
    filename = 'note_7.mp4'
    audiowrite(filename,a,fs)
    
    
    
    
i=8 
    freq = freq_i*2^(i/12)
    values=0:1/fs:duration
    a=amp*sin(2*pi*freq*values)
    sound(a,fs)
    filename = 'note_8.mp4'
    audiowrite(filename,a,fs)
    
    
    
i=9 
    freq = freq_i*2^(i/12)
    values=0:1/fs:duration
    a=amp*sin(2*pi*freq*values)
    sound(a,fs)
    filename = 'note_9.mp4'
    audiowrite(filename,a,fs)
    
    
    
 i=10 
    freq = freq_i*2^(i/12)
    values=0:1/fs:duration
    a=amp*sin(2*pi*freq*values)
    sound(a,fs)
    filename = 'note_10.mp4'
    audiowrite(filename,a,fs)
    
i=11 
    freq = freq_i*2^(i/12)
    values=0:1/fs:duration
    a=amp*sin(2*pi*freq*values)
    sound(a,fs)
    filename = 'note_11.mp4'
    audiowrite(filename,a,fs)
    
    
    
i=12 
    freq = freq_i*2^(i/12)
    values=0:1/fs:duration
    a=amp*sin(2*pi*freq*values)
    sound(a,fs)
    filename = 'note_12.mp4'
    audiowrite(filename,a,fs)
    
    
    

    
    
    
 i=13 
    freq = freq_i*2^(i/12)
    values=0:1/fs:duration
    a=amp*sin(2*pi*freq*values)
    sound(a,fs)
    filename = 'note_13.mp4'
    audiowrite(filename,a,fs)
    
    
    
   i=14 
    freq = freq_i*2^(i/12)
    values=0:1/fs:duration
    a=amp*sin(2*pi*freq*values)
    sound(a,fs)
    filename = 'note_14.mp4'
    audiowrite(filename,a,fs)
    
  
    
    
    
  i=15 
    freq = freq_i*2^(i/12)
    values=0:1/fs:duration
    a=amp*sin(2*pi*freq*values)
    sound(a,fs)
    filename = 'note_15.mp4'
    audiowrite(filename,a,fs)
    
    
  i=16
    freq = freq_i*2^(i/12)
    values=0:1/fs:duration
    a=amp*sin(2*pi*freq*values)
    sound(a,fs)
    filename = 'note_16.mp4'
    audiowrite(filename,a,fs)
    
    
    
  i=17
    freq = freq_i*2^(i/12)
    values=0:1/fs:duration
    a=amp*sin(2*pi*freq*values)
    sound(a,fs)
    filename = 'note_17.mp4'
    audiowrite(filename,a,fs)
    
    
    
    
 i=18
    freq = freq_i*2^(i/12)
    values=0:1/fs:duration
    a=amp*sin(2*pi*freq*values)
    sound(a,fs)
    filename = 'note_18.mp4'
    audiowrite(filename,a,fs)
    
    
    
    
 i=19 
    freq = freq_i*2^(i/12)
    values=0:1/fs:duration
    a=amp*sin(2*pi*freq*values)
    sound(a,fs)
    filename = 'note_19.mp4'
    audiowrite(filename,a,fs)
    
    
 i=20 
    freq = freq_i*2^(i/12)
    values=0:1/fs:duration
    a=amp*sin(2*pi*freq*values)
    sound(a,fs)
    filename = 'note_20.mp4'
    audiowrite(filename,a,fs)
    
    
 i=21 
    freq = freq_i*2^(i/12)
    values=0:1/fs:duration
    a=amp*sin(2*pi*freq*values)
    sound(a,fs)
    filename = 'note_21.mp4'
    audiowrite(filename,a,fs)
    
    
    
  i=22 
    freq = freq_i*2^(i/12)
    values=0:1/fs:duration
    a=amp*sin(2*pi*freq*values)
    sound(a,fs)
    filename = 'note_22.mp4'
    audiowrite(filename,a,fs)
    
  i=23 
    freq = freq_i*2^(i/12)
    values=0:1/fs:duration
    a=amp*sin(2*pi*freq*values)
    sound(a,fs)
    filename = 'note_23.mp4'
    audiowrite(filename,a,fs)
    
    
 i=24 
    freq = freq_i*2^(i/12)
    values=0:1/fs:duration
    a=amp*sin(2*pi*freq*values)
    sound(a,fs)
    filename = 'note_24.mp4'
    audiowrite(filename,a,fs)
    
    
    
  i=25 
    freq = freq_i*2^(i/12)
    values=0:1/fs:duration
    a=amp*sin(2*pi*freq*values)
    sound(a,fs)
    filename = 'note_25.mp4'
    audiowrite(filename,a,fs)
    
    
     i=26
    freq = freq_i*2^(i/12)
    values=0:1/fs:duration
    a=amp*sin(2*pi*freq*values)
    sound(a,fs)
    filename = 'note_26.mp4'
    audiowrite(filename,a,fs)
    
    
    
     i=27 
    freq = freq_i*2^(i/12)
    values=0:1/fs:duration
    a=amp*sin(2*pi*freq*values)
    sound(a,fs)
    filename = 'note_27.mp4'
    audiowrite(filename,a,fs)
    
    
    
    
     i=28 
    freq = freq_i*2^(i/12)
    values=0:1/fs:duration
    a=amp*sin(2*pi*freq*values)
    sound(a,fs)
    filename = 'note_28.mp4'
    audiowrite(filename,a,fs)
    
    
    
     i=29
    freq = freq_i*2^(i/12)
    values=0:1/fs:duration
    a=amp*sin(2*pi*freq*values)
    sound(a,fs)
    filename = 'note_29.mp4'
    audiowrite(filename,a,fs)
    
    
    
     i=30 
    freq = freq_i*2^(i/12)
    values=0:1/fs:duration
    a=amp*sin(2*pi*freq*values)
    sound(a,fs)
    filename = 'note_30.mp4'
    audiowrite(filename,a,fs)
    
    
    i=31 
    freq = freq_i*2^(i/12)
    values=0:1/fs:duration
    a=amp*sin(2*pi*freq*values)
    sound(a,fs)
    filename = 'note_31.mp4'
    audiowrite(filename,a,fs)
    
    i=32 
    freq = freq_i*2^(i/12)
    values=0:1/fs:duration
    a=amp*sin(2*pi*freq*values)
    sound(a,fs)
    filename = 'note_32.mp4'
    audiowrite(filename,a,fs)
    
    
     i=33 
    freq = freq_i*2^(i/12)
    values=0:1/fs:duration
    a=amp*sin(2*pi*freq*values)
    sound(a,fs)
    filename = 'note_33.mp4'
    audiowrite(filename,a,fs)
    
    
     i=34 
    freq = freq_i*2^(i/12)
    values=0:1/fs:duration
    a=amp*sin(2*pi*freq*values)
    sound(a,fs)
    filename = 'note_34.mp4'
    audiowrite(filename,a,fs)
    
    
    
    
     i=35 
    freq = freq_i*2^(i/12)
    values=0:1/fs:duration
    a=amp*sin(2*pi*freq*values)
    sound(a,fs)
    filename = 'note_35.mp4'
    audiowrite(filename,a,fs)
    
    
     i=36 
    freq = freq_i*2^(i/12)
    values=0:1/fs:duration
    a=amp*sin(2*pi*freq*values)
    sound(a,fs)
    filename = 'note_36.mp4'
    audiowrite(filename,a,fs)
    