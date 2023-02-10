function varargout = guiMain(varargin)
% GUIMAIN MATLAB code for guiMain.fig
%      GUIMAIN, by itself, creates a new GUIMAIN or raises the existing
%      singleton*.
%
%      H = GUIMAIN returns the handle to a new GUIMAIN or the handle to
%      the existing singleton*.
%
%      GUIMAIN('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GUIMAIN.M with the given input arguments.
%
%      GUIMAIN('Property','Value',...) creates a new GUIMAIN or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before guiMain_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to guiMain_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help guiMain

% Last Modified by GUIDE v2.5 25-Dec-2014 22:58:33

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @guiMain_OpeningFcn, ...
                   'gui_OutputFcn',  @guiMain_OutputFcn, ...
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


% --- Executes just before guiMain is made visible.
function guiMain_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to guiMain (see VARARGIN)
set(handles.axesExtImg,'xtick',[],'ytick',[]);
set(handles.axesTestImg,'xtick',[],'ytick',[]);
% Choose default command line output for guiMain
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);
set(handles.btnBinarize,'Enable','off')
set(handles.btnPatPlot,'Enable','off')
set(handles.btnThinning,'Enable','off')
set(handles.btnIdVar,'Enable','off')
clc;

% UIWAIT makes guiMain wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = guiMain_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in btnBinarize.
function btnBinarize_Callback(hObject, eventdata, handles)
% hObject    handle to btnBinarize (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global ImagePath;
global J1;
global K1;
J1=imread(ImagePath);
J1=imresize(J1,[400 300]);
J1=J1(:,:,1)>160;
K1=J1;
axes(handles.axesTestImg);
imshow(K1);





% --- Executes on button press in btnThinning.
function btnThinning_Callback(hObject, eventdata, handles)
% hObject    handle to btnThinning (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global J1;
global K1;
K1=bwmorph(~J1,'thin','inf');
axes(handles.axesTestImg);
K1=~K1;
imshow(K1);




% --- Executes on button press in btnPatPlot.
function btnPatPlot_Callback(hObject, eventdata, handles)
% hObject    handle to btnPatPlot (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global K1;
global J1;
a=[1 1 1;1 1 0;1 0 1];
K1=bwmorph(~J1,'thin','inf');
K1=~K1;
[r1 c1]=findsubmat(K1,a);
imshow(K1)
 hold on
plot(r1,c1,'og','LineWidth',1,'MarkerSize',4,'MarkerEdgeColor','blue')





% --- Executes on button press in btnDBOps.
function btnDBOps_Callback(hObject, eventdata, handles)
% hObject    handle to btnDBOps (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close('guiMain');
guiOpsOpt();





% --- Executes on button press in btnBrowTsImg.
function btnBrowTsImg_Callback(hObject, eventdata, handles)
% hObject    handle to btnBrowTsImg (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

global ImagePath;
global tstImg;
[name Path] = uigetfile( {'*.*'}, 'Select a Finger Print to Identify and varify'  );

ImagePath = strcat(Path, name);  % set image path
tstImg = imread(ImagePath);
tstImg = imresize(tstImg, [400 300] );
axes(handles.axesTestImg);
imshow(tstImg)
set(handles.btnBinarize,'Enable','on')
set(handles.btnPatPlot,'Enable','on')
set(handles.btnThinning,'Enable','on')
set(handles.btnIdVar,'Enable','on')




% --- Executes on button press in btnIdVar.
function btnIdVar_Callback(hObject, eventdata, handles)
% hObject    handle to btnIdVar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global ImagePath;
global cursGMain;
global pic;
pic=bin;
axes(handles.axesTestImg);
imshow(pic);
pic=thin;
axes(handles.axesTestImg);
imshow(pic);
pat=[1 1 1;1 1 0;1 0 1];
[pr pc]=findsubmat(pic,pat);
imshow(pic)
 hold on
plot(pr,pc,'og','LineWidth',1,'MarkerSize',4,'MarkerEdgeColor','blue')
% btnBinarize_Callback();
% btnThinning_Callback();
% btnPatPlot_Callback();
dbpath = 'E:\Education\MATLAB\myRecord.mdb';
conurl = ['jdbc:odbc:Driver={Microsoft Access Driver (*.mdb)}; DBQ=' dbpath];
con = database('','','','sun.jdbc.odbc.JdbcOdbcDriver', conurl);

%ImageName = strcat(pathFinPrint, name);  % set image path
% curs = exec(con,['select NIC,Finger_Print from myTable where NIC = ' '''2''']);
curs = exec(con,'select NIC,Finger_Print from myTable');
curs = fetch(curs);

retData=curs.Data;
[r c]=size(curs.Data);

 for i=1:r
 match(i)=picPatMach(ImagePath,char(retData(i,2))); 
 %retData(i,1)
 
nic(i)=cellstr(retData(i,1));
% nic(i)=char(retData(i,1));

 %***************************************
 %*********************
 %***************************************
 %*********************
 %***************************************
 %*********************
 ww=char(retData(i,2));
 
mj=imread(ww);
mj=imresize(mj,[400 300]);
mj=mj(:,:,1)>160;
mk=mj;
mk=bwmorph(~mk,'thin','inf');
mk=~mk;
axes(handles.axesExtImg);

p=[1 1 1;1 1 0;1 0 1];
[r1 c1]=findsubmat(mk,p);
imshow(mk)
 hold on
plot(r1,c1,'og','LineWidth',1,'MarkerSize',4,'MarkerEdgeColor','blue')





 %***************************************
 %*********************
 %***************************************
 %*********************
 %************************
 %***************
% retData(i,1)
% retData(i,2)
% imgPath(i)=retData(i,2) ;



% picPatMach(char(imgPath(i)));
 end
[nic match]=selectionsort(nic,match);
a=char(nic(1));
whos a
% match
% retData(2)
%[r c]=size(curs.Data);
if match(1)>60
% cursGMain = exec(con,['select * from myTable where NIC = ' '''' nic(1) '''']);
cursGMain = exec(con,['select * from myTable where NIC = ' '''' a '''']);
cursGMain = fetch(cursGMain);
guiIdnVerComp();
close('guiMain');
% retData=cursGMain.Data  ;
% retData(7);
else
    %disp('no match found');
    guiUnkRec();
close('guiMain');
end

% --- Executes on button press in btnExit.
function btnExit_Callback(hObject, eventdata, handles)
% hObject    handle to btnExit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% close(handles.tagOfTheGui) 
close('guiMain');


% --- Executes on mouse press over figure background, over a disabled or
% --- inactive control, or over an axes background.
function figure1_WindowButtonDownFcn(hObject, eventdata, handles)
% hObject    handle to figure1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


