function varargout = guiIdnVerComp(varargin)
% GUIIDNVERCOMP MATLAB code for guiIdnVerComp.fig
%      GUIIDNVERCOMP, by itself, creates a new GUIIDNVERCOMP or raises the existing
%      singleton*.
%
%      H = GUIIDNVERCOMP returns the handle to a new GUIIDNVERCOMP or the handle to
%      the existing singleton*.
%
%      GUIIDNVERCOMP('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GUIIDNVERCOMP.M with the given input arguments.
%
%      GUIIDNVERCOMP('Property','Value',...) creates a new GUIIDNVERCOMP or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before guiIdnVerComp_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to guiIdnVerComp_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help guiIdnVerComp

% Last Modified by GUIDE v2.5 25-Dec-2014 09:24:47

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @guiIdnVerComp_OpeningFcn, ...
                   'gui_OutputFcn',  @guiIdnVerComp_OutputFcn, ...
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


% --- Executes just before guiIdnVerComp is made visible.
function guiIdnVerComp_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to guiIdnVerComp (see VARARGIN)
set(handles.axesProPic,'xtick',[],'ytick',[]);
set(handles.axesThumbPic,'xtick',[],'ytick',[]);
% Choose default command line output for guiIdnVerComp
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes guiIdnVerComp wait for user response (see UIRESUME)
% uiwait(handles.figure1);
global cursGMain;
set(handles.txtCnic,'String',cursGMain.Data{1})
set(handles.txtName,'String',cursGMain.Data{2})
set(handles.txtFName,'String',cursGMain.Data{3})

set(handles.txtaddres,'String',cursGMain.Data{4})
set(handles.txtEmail,'String',cursGMain.Data{5})
set(handles.txtConact,'String',cursGMain.Data{6})

axes(handles.axesProPic);
imshow(cursGMain.Data{8})
axes(handles.axesThumbPic);
imshow(cursGMain.Data{7})


% --- Outputs from this function are returned to the command line.
function varargout = guiIdnVerComp_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in btnOkGmain.
function btnOkGmain_Callback(hObject, eventdata, handles)
% hObject    handle to btnOkGmain (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
guiMain();
close('guiIdnVerComp')

% --- Executes on button press in btnExit.
function btnExit_Callback(hObject, eventdata, handles)
% hObject    handle to btnExit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

close('guiIdnVerComp');
