
function varargout = piano_gui(varargin)
% PIANO_GUI MATLAB code for piano_gui.fig
%      PIANO_GUI, by itself, creates a new PIANO_GUI or raises the existing
%      singleton*.
%
%      H = PIANO_GUI returns the handle to a new PIANO_GUI or the handle to
%      the existing singleton*.
%
%      PIANO_GUI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in PIANO_GUI.M with the given input arguments.
%
%      PIANO_GUI('Property','Value',...) creates a new PIANO_GUI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before piano_gui_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to piano_gui_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help piano_gui

% Last Modified by GUIDE v2.5 05-Apr-2018 11:49:56

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @piano_gui_OpeningFcn, ...
                   'gui_OutputFcn',  @piano_gui_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before piano_gui is made visible.
function piano_gui_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to piano_gui (see VARARGIN)

% Global variables
global notes numNotes;
numNotes = 37;

% INITIALIZATION GOES HERE
for i = 1:numNotes
    filename = strcat('notes/note_',num2str(i-1),'.mp4');
    [y, Fs] = audioread(filename);
    notes(i).y = y;
    notes(i).Fs = Fs;
end
notes

% Choose default command line output for piano_gui
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes piano_gui wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = piano_gui_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in C2.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global notes;
sound(notes(13).y,notes(13).Fs);



% --- Executes on button press in D2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global notes;
sound(notes(15).y,notes(15).Fs);


% --- Executes on button press in C#2.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global notes;
sound(notes(14).y,notes(14).Fs);


% --- Executes on button press in E2.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global notes;
sound(notes(17).y,notes(17).Fs);


% --- Executes on button press in D#2.
function pushbutton6_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global notes;
sound(notes(16).y,notes(16).Fs);


% --- Executes on button press in F2.
function pushbutton7_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global notes;
sound(notes(18).y,notes(18).Fs);


% --- Executes on button press in G2.
function pushbutton8_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global notes;
sound(notes(20).y,notes(20).Fs);


% --- Executes on button press in A.
function pushbutton9_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global notes;
sound(notes(22).y,notes(22).Fs);


% --- Executes on button press in B2.
function pushbutton10_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global notes;
sound(notes(24).y,notes(24).Fs);


% --- Executes on button press in F#2.
function pushbutton11_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global notes;
sound(notes(19).y,notes(19).Fs);


% --- Executes on button press in G#2.
function pushbutton12_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global notes;
sound(notes(21).y,notes(21).Fs);


% --- Executes on button press in A#2.
function pushbutton13_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global notes;
sound(notes(23).y,notes(23).Fs);


% --- Executes on button press in C3.
function pushbutton14_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global notes;
sound(notes(25).y,notes(25).Fs);


% --- Executes on button press in D3.
function pushbutton15_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton15 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global notes;
sound(notes(27).y,notes(27).Fs);


% --- Executes on button press in C#3.
function pushbutton16_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton16 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global notes;
sound(notes(26).y,notes(26).Fs);


% --- Executes on button press in D#3.
function pushbutton17_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton17 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global notes;
sound(notes(29).y,notes(29).Fs);


% --- Executes on button press in D#3.
function pushbutton18_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton18 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global notes;
sound(notes(28).y,notes(28).Fs);


% --- Executes on button press in F3.
function pushbutton19_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton19 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global notes;
sound(notes(30).y,notes(30).Fs);


% --- Executes on button press in G3.
function pushbutton20_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton20 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global notes;
sound(notes(32).y,notes(32).Fs);


% --- Executes on button press in A3.
function pushbutton21_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton21 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global notes;
sound(notes(34).y,notes(34).Fs);


% --- Executes on button press in B3.
function pushbutton22_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton22 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global notes;
sound(notes(36).y,notes(36).Fs);


% --- Executes on button press in F#3.
function pushbutton23_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton23 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global notes;
sound(notes(31).y,notes(31).Fs);


% --- Executes on button press in G#3.
function pushbutton24_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton24 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global notes;
sound(notes(33).y,notes(33).Fs);


% --- Executes on button press in A#3.
function pushbutton25_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton25 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global notes;
sound(notes(35).y,notes(35).Fs);


% --- Executes on button press in C1.
function pushbutton38_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton38 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global notes;
sound(notes(1).y,notes(1).Fs);


% --- Executes on button press in D2.
function pushbutton39_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton39 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global notes;
sound(notes(3).y,notes(3).Fs);


% --- Executes on button press in C#1.
function pushbutton40_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton40 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global notes;
sound(notes(2).y,notes(2).Fs);



% --- Executes on button press in E2.
function pushbutton41_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton41 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global notes;
sound(notes(5).y,notes(5).Fs);


% --- Executes on button press in D#1.
function pushbutton42_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton42 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global notes;
sound(notes(4).y,notes(4).Fs);


% --- Executes on button press in F1.
function pushbutton43_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton43 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global notes;
sound(notes(6).y,notes(6).Fs);


% --- Executes on button press in G1.
function pushbutton44_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton44 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global notes;
sound(notes(8).y,notes(8).Fs);


% --- Executes on button press in A1.
function pushbutton45_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton45 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global notes;
sound(notes(10).y,notes(10).Fs);


% --- Executes on button press in B1.
function pushbutton46_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton46 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global notes;
sound(notes(12).y,notes(12).Fs);


% --- Executes on button press in F#1.
function pushbutton47_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton47 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global notes;
sound(notes(7).y,notes(7).Fs);


% --- Executes on button press in G#1.
function pushbutton48_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton48 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global notes;
sound(notes(9).y,notes(9).Fs);


% --- Executes on button press in A#1.
function pushbutton49_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton49 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global notes;
sound(notes(11).y,notes(11).Fs);
