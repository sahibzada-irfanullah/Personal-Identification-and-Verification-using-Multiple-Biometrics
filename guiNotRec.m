function varargout = guiNotRec(varargin)
% GUINOTREC MATLAB code for guiNotRec.fig
%      GUINOTREC, by itself, creates a new GUINOTREC or raises the existing
%      singleton*.
%
%      H = GUINOTREC returns the handle to a new GUINOTREC or the handle to
%      the existing singleton*.
%
%      GUINOTREC('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GUINOTREC.M with the given input arguments.
%
%      GUINOTREC('Property','Value',...) creates a new GUINOTREC or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before guiNotRec_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to guiNotRec_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help guiNotRec

% Last Modified by GUIDE v2.5 25-Dec-2014 01:27:13

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @guiNotRec_OpeningFcn, ...
                   'gui_OutputFcn',  @guiNotRec_OutputFcn, ...
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


% --- Executes just before guiNotRec is made visible.
function guiNotRec_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to guiNotRec (see VARARGIN)

% Choose default command line output for guiNotRec
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes guiNotRec wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = guiNotRec_OutputFcn(hObject, eventdata, handles) 
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
close('guiNotRec');
guiOpsOpt();




% --- Executes on button press in btnCancelGMain.
function btnCancelGMain_Callback(hObject, eventdata, handles)
% hObject    handle to btnCancelGMain (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close('guiNotRec');
guiMain();




% --- Executes on button press in btnExit.
function btnExit_Callback(hObject, eventdata, handles)
% hObject    handle to btnExit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close('guiNotRec');
