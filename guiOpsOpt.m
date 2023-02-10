function varargout = guiOpsOpt(varargin)
% GUIOPSOPT MATLAB code for guiOpsOpt.fig
%      GUIOPSOPT, by itself, creates a new GUIOPSOPT or raises the existing
%      singleton*.
%
%      H = GUIOPSOPT returns the handle to a new GUIOPSOPT or the handle to
%      the existing singleton*.
%
%      GUIOPSOPT('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GUIOPSOPT.M with the given input arguments.
%
%      GUIOPSOPT('Property','Value',...) creates a new GUIOPSOPT or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before guiOpsOpt_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to guiOpsOpt_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help guiOpsOpt

% Last Modified by GUIDE v2.5 24-Dec-2014 12:56:00

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @guiOpsOpt_OpeningFcn, ...
                   'gui_OutputFcn',  @guiOpsOpt_OutputFcn, ...
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


% --- Executes just before guiOpsOpt is made visible.
function guiOpsOpt_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to guiOpsOpt (see VARARGIN)

% Choose default command line output for guiOpsOpt
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes guiOpsOpt wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = guiOpsOpt_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in btnAddRec.
function btnAddRec_Callback(hObject, eventdata, handles)
% hObject    handle to btnAddRec (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close('guiOpsOpt');
guiPerInfo();

% --- Executes on button press in btnUpDelRec.
function btnUpDelRec_Callback(hObject, eventdata, handles)
% hObject    handle to btnUpDelRec (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close('guiOpsOpt');
guiSearch();




% --- Executes on button press in btnBackGMain.
function btnBackGMain_Callback(hObject, eventdata, handles)
% hObject    handle to btnBackGMain (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
 close('guiOpsOpt');
guiMain();

