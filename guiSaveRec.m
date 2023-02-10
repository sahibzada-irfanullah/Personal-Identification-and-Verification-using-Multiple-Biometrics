function varargout = guiSaveRec(varargin)
% GUISAVEREC MATLAB code for guiSaveRec.fig
%      GUISAVEREC, by itself, creates a new GUISAVEREC or raises the existing
%      singleton*.
%
%      H = GUISAVEREC returns the handle to a new GUISAVEREC or the handle to
%      the existing singleton*.
%
%      GUISAVEREC('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GUISAVEREC.M with the given input arguments.
%
%      GUISAVEREC('Property','Value',...) creates a new GUISAVEREC or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before guiSaveRec_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to guiSaveRec_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help guiSaveRec

% Last Modified by GUIDE v2.5 24-Dec-2014 12:46:39

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @guiSaveRec_OpeningFcn, ...
                   'gui_OutputFcn',  @guiSaveRec_OutputFcn, ...
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


% --- Executes just before guiSaveRec is made visible.
function guiSaveRec_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to guiSaveRec (see VARARGIN)

% Choose default command line output for guiSaveRec
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes guiSaveRec wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = guiSaveRec_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in btnBackGOpsOpt.
function btnBackGOpsOpt_Callback(hObject, eventdata, handles)
% hObject    handle to btnBackGOpsOpt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close('guiSaveRec');
guiOpsOpt();



% --- Executes on button press in btnOkGMain.
function btnOkGMain_Callback(hObject, eventdata, handles)
% hObject    handle to btnOkGMain (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close('guiSaveRec');
guiMain();


