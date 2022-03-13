function varargout = SimpleCalculator(varargin)
% SIMPLECALCULATOR MATLAB code for SimpleCalculator.fig
%      SIMPLECALCULATOR, by itself, creates a new SIMPLECALCULATOR or raises the existing
%      singleton*.
%
%      H = SIMPLECALCULATOR returns the handle to a new SIMPLECALCULATOR or the handle to
%      the existing singleton*.
%
%      SIMPLECALCULATOR('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in SIMPLECALCULATOR.M with the given input arguments.
%
%      SIMPLECALCULATOR('Property','Value',...) creates a new SIMPLECALCULATOR or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before SimpleCalculator_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to SimpleCalculator_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help SimpleCalculator

% Last Modified by GUIDE v2.5 19-Jan-2022 14:40:43

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @SimpleCalculator_OpeningFcn, ...
                   'gui_OutputFcn',  @SimpleCalculator_OutputFcn, ...
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


% --- Executes just before SimpleCalculator is made visible.
function SimpleCalculator_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to SimpleCalculator (see VARARGIN)

% Choose default command line output for SimpleCalculator
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes SimpleCalculator wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = SimpleCalculator_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in Clear.
function Clear_Callback(hObject, eventdata, handles)
% hObject    handle to Clear (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.Screen,'string',' ');

% --- Executes on button press in Number7.
function Number7_Callback(hObject, eventdata, handles)
% hObject    handle to Number7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
s = get(handles.Screen,'string');
set(handles.Screen,'string',strcat(s,'7'));


% --- Executes on button press in Number4.
function Number4_Callback(hObject, eventdata, handles)
% hObject    handle to Number4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
s = get(handles.Screen,'string');
set(handles.Screen,'string',strcat(s,'4'));

% --- Executes on button press in Number1.
function Number1_Callback(hObject, eventdata, handles)
% hObject    handle to Number1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
s = get(handles.Screen,'string');
set(handles.Screen,'string',strcat(s,'1'));

% --- Executes on button press in Pie.
function Pie_Callback(hObject, eventdata, handles)
% hObject    handle to Pie (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if strcmp(get(handles.Screen,'string'),' ')
    set(handles.Screen,'string','3.14');
end
% --- Executes on button press in Percentage.
function Percentage_Callback(hObject, eventdata, handles)
% hObject    handle to Percentage (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.Screen,'string',num2str(str2num(get(handles.Screen,'string'))/100));

% --- Executes on button press in Number8.
function Number8_Callback(hObject, eventdata, handles)
% hObject    handle to Number8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
s = get(handles.Screen,'string');
set(handles.Screen,'string',strcat(s,'8'));

% --- Executes on button press in Number5.
function Number5_Callback(hObject, eventdata, handles)
% hObject    handle to Number5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
s = get(handles.Screen,'string');
set(handles.Screen,'string',strcat(s,'5'));

% --- Executes on button press in Number2.
function Number2_Callback(hObject, eventdata, handles)
% hObject    handle to Number2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
s = get(handles.Screen,'string');
set(handles.Screen,'string',strcat(s,'2'));

% --- Executes on button press in Number0.
function Number0_Callback(hObject, eventdata, handles)
% hObject    handle to Number0 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
s = get(handles.Screen,'string');
set(handles.Screen,'string',strcat(s,'0'));

% --- Executes on button press in Square.
function Square_Callback(hObject, eventdata, handles)
% hObject    handle to Square (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.Screen,'string',num2str(str2num(get(handles.Screen,'string'))^2));

% --- Executes on button press in Number9.
function Number9_Callback(hObject, eventdata, handles)
% hObject    handle to Number9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
s = get(handles.Screen,'string');
set(handles.Screen,'string',strcat(s,'9'));

% --- Executes on button press in Number6.
function Number6_Callback(hObject, eventdata, handles)
% hObject    handle to Number6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
s = get(handles.Screen,'string');
set(handles.Screen,'string',strcat(s,'6'));

% --- Executes on button press in Number3.
function Number3_Callback(hObject, eventdata, handles)
% hObject    handle to Number3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
s = get(handles.Screen,'string');
set(handles.Screen,'string',strcat(s,'3'));

% --- Executes on button press in Point.
function Point_Callback(hObject, eventdata, handles)
% hObject    handle to Point (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
s = get(handles.Screen,'string');
set(handles.Screen,'string',strcat(s,'.'));

% --- Executes on button press in Division.
function Division_Callback(hObject, eventdata, handles)
% hObject    handle to Division (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global A Selector
A = str2num(get(handles.Screen,'string'));
Selector = 1;
set(handles.Screen,'string',' ');


% --- Executes on button press in Multiply.
function Multiply_Callback(hObject, eventdata, handles)
% hObject    handle to Multiply (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global B Selector
B = str2num(get(handles.Screen,'string'));
Selector = 2;
set(handles.Screen,'string',' ');


% --- Executes on button press in Minus.
function Minus_Callback(hObject, eventdata, handles)
% hObject    handle to Minus (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global C Selector
if strcmp(get(handles.Screen,'string'),' ')
    set(handles.Screen,'string','-');
else
C = str2num(get(handles.Screen,'string'));
Selector = 3;
set(handles.Screen,'string',' ');
end 

% --- Executes on button press in Addition.
function Addition_Callback(hObject, eventdata, handles)
% hObject    handle to Addition (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global D Selector
D = str2num(get(handles.Screen,'string'));
Selector = 4;
set(handles.Screen,'string',' ');


% --- Executes on button press in Equal.
function Equal_Callback(hObject, eventdata, handles)
% hObject    handle to Equal (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global A B C D Selector
switch Selector
    case 1
        A = A/str2num(get(handles.Screen,'string'));
        set(handles.Screen,'string',num2str(A));
    case 2
        B = B*str2num(get(handles.Screen,'string'));
        set(handles.Screen,'string',num2str(B));
    case 3
        C = C-str2num(get(handles.Screen,'string'));
        set(handles.Screen,'string',num2str(C));
    case 4
        D = D+str2num(get(handles.Screen,'string'));
        set(handles.Screen,'string',num2str(D))
end
function Screen_Callback(hObject, eventdata, handles)
% hObject    handle to Screen (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Screen as text
%        str2double(get(hObject,'String')) returns contents of Screen as a double


% --- Executes during object creation, after setting all properties.
function Screen_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Screen (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
