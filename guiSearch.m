function varargout = guiSearch(varargin)
% GUISEARCH MATLAB code for guiSearch.fig
%      GUISEARCH, by itself, creates a new GUISEARCH or raises the existing
%      singleton*.
%
%      H = GUISEARCH returns the handle to a new GUISEARCH or the handle to
%      the existing singleton*.
%
%      GUISEARCH('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GUISEARCH.M with the given input arguments.
%
%      GUISEARCH('Property','Value',...) creates a new GUISEARCH or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before guiSearch_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to guiSearch_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help guiSearch

% Last Modified by GUIDE v2.5 25-Dec-2014 18:34:01

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @guiSearch_OpeningFcn, ...
                   'gui_OutputFcn',  @guiSearch_OutputFcn, ...
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


% --- Executes just before guiSearch is made visible.
function guiSearch_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to guiSearch (see VARARGIN)

% Choose default command line output for guiSearch
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);
clc;

% UIWAIT makes guiSearch wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = guiSearch_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function txtSearch_Callback(hObject, eventdata, handles)
% hObject    handle to txtSearch (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txtSearch as text
%        str2double(get(hObject,'String')) returns contents of txtSearch as a double


% --- Executes during object creation, after setting all properties.
function txtSearch_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txtSearch (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in btnSearch.
function btnSearch_Callback(hObject, eventdata, handles)
% hObject    handle to btnSearch (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global cursSearch

 tNIC = get(handles.txtSearch,'String');
dbpath = 'E:\Education\MATLAB\myRecord.mdb';
conurl = ['jdbc:odbc:Driver={Microsoft Access Driver (*.mdb)}; DBQ=' dbpath];
con = database('','','','sun.jdbc.odbc.JdbcOdbcDriver', conurl);
cursSearch = exec(con,['select * from myTable where NIC = ' '''' tNIC '''']);
 cursSearch = fetch(cursSearch);
 cursSearch.Data
 a=char(cursSearch.Data);
%  a
 if strcmp('No Data',a)
    guiNotRec();
    close('guiSearch');
 else
     guiUp(); 
close('guiSearch');
 end
%close(cursSearch);
%close(con);






% --- Executes on button press in btnBackGOpsOpt.
function btnBackGOpsOpt_Callback(hObject, eventdata, handles)
% hObject    handle to btnBackGOpsOpt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close('guiSearch');
guiOpsOpt();



% --- Executes on button press in btnCancelGMain.
function btnCancelGMain_Callback(hObject, eventdata, handles)
% hObject    handle to btnCancelGMain (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
 close('guiSearch');
guiMain();
