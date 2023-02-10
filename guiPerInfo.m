function varargout = guiPerInfo(varargin)
% GUIPERINFO MATLAB code for guiPerInfo.fig
%      GUIPERINFO, by itself, creates a new GUIPERINFO or raises the existing
%      singleton*.
%
%      H = GUIPERINFO returns the handle to a new GUIPERINFO or the handle to
%      the existing singleton*.
%
%      GUIPERINFO('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GUIPERINFO.M with the given input arguments.
%
%      GUIPERINFO('Property','Value',...) creates a new GUIPERINFO or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before guiPerInfo_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to guiPerInfo_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help guiPerInfo

% Last Modified by GUIDE v2.5 26-Dec-2014 19:02:25

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @guiPerInfo_OpeningFcn, ...
                   'gui_OutputFcn',  @guiPerInfo_OutputFcn, ...
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


% --- Executes just before guiPerInfo is made visible.
function guiPerInfo_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to guiPerInfo (see VARARGIN)
set(handles.axesProPic,'xtick',[],'ytick',[]);
set(handles.axesThumPic,'xtick',[],'ytick',[]);
% Choose default command line output for guiPerInfo
handles.output = hObject;
clc;

% Update handles structure
guidata(hObject, handles);
set(handles.btnBrowProPic,'Enable','off')
set(handles.txtAddress,'Enable','off')
set(handles.txtName,'Enable','off')
set(handles.txtFName,'Enable','off')
set(handles.txtEmail,'Enable','off')
set(handles.txtContact,'Enable','off')
set(handles.btnSaveRec,'Enable','off')
 set(handles.txtCNIC,'Enable','off')
% global nameflag
% global ffnameflag
% global cnicflag
% nameflag=0;
% ffnameflag=0;
% cnicflag=0;
% UIWAIT makes guiPerInfo wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = guiPerInfo_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function txtFName_Callback(hObject, eventdata, handles)
% hObject    handle to txtFName (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txtFName as text
%        str2double(get(hObject,'String')) returns contents of txtFName as a double

%global fnameflag
% ffnameflag=11
name = (get(hObject, 'String'));
n = name;

n = str2double(n);
if ~isnan(n)
    errordlg('You must enter a String!!!','Bad Input for Father Name','modal')
 
 uicontrol(hObject)

return
end

% --- Executes during object creation, after setting all properties.
function txtFName_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txtFName (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function txtName_Callback(hObject, eventdata, handles)
% hObject    handle to txtName (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
 
% Hints: get(hObject,'String') returns contents of txtName as text
%        str2double(get(hObject,'String')) returns contents of txtName as a double
% global nameflag
% nameflag=11;
name = (get(hObject, 'String'));
n = name;

n = str2double(n);
if ~isnan(n)
   errordlg('You must enter a String!!!','Bad Input for Name','modal')
 
 uicontrol(hObject)

return
end

% --- Executes during object creation, after setting all properties.
function txtName_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txtName (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function txtCNIC_Callback(hObject, eventdata, handles)
% hObject    handle to txtCNIC (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txtCNIC as text
%        str2double(get(hObject,'String')) returns contents of txtCNIC as a double
% global cnicflag
% cnicflag=11;
user_entry_X = str2double(get(hObject,'string'));
if isnan(user_entry_X)
 errordlg('You must enter a numeric value!!!','Bad Input for CNIC','modal')
 
 uicontrol(hObject)

return
end
% --- Executes during object creation, after setting all properties.
function txtCNIC_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txtCNIC (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function txtAddress_Callback(hObject, eventdata, handles)
% hObject    handle to txtAddress (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txtAddress as text
%        str2double(get(hObject,'String')) returns contents of txtAddress as a double


% --- Executes during object creation, after setting all properties.
function txtAddress_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txtAddress (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function txtContact_Callback(hObject, eventdata, handles)
% hObject    handle to txtContact (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txtContact as text
%        str2double(get(hObject,'String')) returns contents of txtContact as a double
user_entry_X = str2double(get(hObject,'string'));
if isnan(user_entry_X)
 errordlg('You must enter a numeric value','Bad Input for Contact','modal')
 
 uicontrol(hObject)

return
end

% --- Executes during object creation, after setting all properties.
function txtContact_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txtContact (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function txtEmail_Callback(hObject, eventdata, handles)
% hObject    handle to txtEmail (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txtEmail as text
%        str2double(get(hObject,'String')) returns contents of txtEmail as a double


% --- Executes during object creation, after setting all properties.
function txtEmail_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txtEmail (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in btnBrowProPic.
function btnBrowProPic_Callback(hObject, eventdata, handles)
% hObject    handle to btnBrowProPic (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global proPic;
[name Path] = uigetfile( {'*.*'}, 'Select Profile  image'  );
 proPicAdd= strcat(Path, name);  % set image path
proPic = imread(proPicAdd);
axes(handles.axesProPic);
imshow(proPic)
set(handles.btnBrowProPic,'Enable','on')
set(handles.txtAddress,'Enable','on')
set(handles.txtName,'Enable','on')
set(handles.txtFName,'Enable','on')
set(handles.txtEmail,'Enable','on')
set(handles.txtContact,'Enable','on')
set(handles.btnSaveRec,'Enable','on')
set(handles.txtCNIC,'Enable','on')





% --- Executes on button press in btnBrowThumPic.
function btnBrowThumPic_Callback(hObject, eventdata, handles)
% hObject    handle to btnBrowThumPic (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global thumbPic;
[name Path] = uigetfile( {'*.*'}, 'Select Finger Print image'  );
 thumbPicAdd= strcat(Path, name);  % set image path
thumbPic = imread(thumbPicAdd);
axes(handles.axesThumPic);
imshow(thumbPic)
set(handles.btnBrowProPic,'Enable','on')






% --- Executes on button press in btnSaveRec.
function btnSaveRec_Callback(hObject, eventdata, handles)
% hObject    handle to btnSaveRec (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

checknic = (get(handles.txtCNIC, 'String'));
if length(checknic)~=13
     errordlg('CNIC must have 13 digits!!!','Bad Input for CNIC','modal')
     uicontrol(handles.txtCNIC)
   return;
end
 if isempty(get(handles.txtName,'String'));
   errordlg('Please enter Name!!!','Bad Input for Name','modal')
     uicontrol(handles.txtName)
   return;
 elseif isempty(get(handles.txtCNIC,'String'));
   errordlg('Please enter CNIC!!!','Bad Input for CNIC','modal')
     uicontrol(handles.txtCNIC)
   return;
   elseif isempty(get(handles.txtFName,'String'));
   errordlg('Please enter Father Name!!!','Bad Input for Father Name','modal')
     uicontrol(handles.txtFName)
   return;
   elseif isempty(get(handles.txtAddress,'String'));
   errordlg('Please enter Address!!!','Bad Input for Address','modal')
     uicontrol(handles.txtAddress)
   return;
   elseif isempty(get(handles.txtContact,'String'));
   errordlg('Please enter Contact#!!!','Bad Input for Contact#','modal')
     uicontrol(handles.txtContact)
   return;
   elseif isempty(get(handles.txtEmail,'String'));
   errordlg('Please enter Email!!!','Bad Input for Email','modal')
     uicontrol(handles.txtEmail)
   return;
 end
% result=questdlg('Do you want to save the record?','Save Record','Save','Cancel','Save');
% 
% switch result
%   case 'Save'
       % disp(' i want to save the record ');
    
dbpath = 'E:\Education\MATLAB\myRecord.mdb';
conurl = ['jdbc:odbc:Driver={Microsoft Access Driver (*.mdb)}; DBQ=' dbpath];
con = database('','','','sun.jdbc.odbc.JdbcOdbcDriver', conurl);
global thumbPic;
global proPic;
tNIC = get(handles.txtCNIC,'String');
tName = get(handles.txtName,'String');
tFName = get(handles.txtFName,'String');
tEmail = get(handles.txtEmail,'String');
tContact = get(handles.txtContact,'String');
tAddress = get(handles.txtAddress,'String');
addFingPrint='E:\Education\MATLAB\fingerPrint\';
addProPic='E:\Education\MATLAB\profilePic\';
addFingPrint = strcat(addFingPrint,tNIC,'.tif');
addProPic = strcat(addProPic,tNIC,'.tif');
% addFingPrint
% addProPic
imwrite(thumbPic,addFingPrint,'tif');
imwrite(proPic,addProPic,'tif');
try
 colnames = {'NIC','Name','Father_Name','Address','Email','Contact','Finger_Print','Profile_Pic'};
data = {tNIC,tName,tFName,tAddress,tEmail,tContact,addFingPrint,addProPic};
tablename = 'myTable';
insert(con,tablename,colnames,data);
catch
  errordlg('CNIC Already Exists!!!!','Bad Input','modal')
 
    
end
get(con,'AutoCommit');

close(con);
close('guiPerInfo');
 guiSaveRec();
    
%     case'Cancel'
%        
% end

% --- Executes on button press in btnCancelGMain.
function btnCancelGMain_Callback(hObject, eventdata, handles)
% hObject    handle to btnCancelGMain (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
guiMain();
close('guiPerInfo');

% --- Executes on button press in btnBackGOpsOpt.
function btnBackGOpsOpt_Callback(hObject, eventdata, handles)
% hObject    handle to btnBackGOpsOpt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
guiOpsOpt();
close('guiPerInfo');


% --- Executes on key press with focus on figure1 or any of its controls.
function figure1_WindowKeyPressFcn(hObject, eventdata, handles)
% hObject    handle to figure1 (see GCBO)
% eventdata  structure with the following fields (see FIGURE)
%	Key: name of the key that was pressed, in lower case
%	Character: character interpretation of the key(s) that was pressed
%	Modifier: name(s) of the modifier key(s) (i.e., control, shift) pressed
% handles    structure with handles and user data (see GUIDATA)
% global nameflag
% global ffnameflag
% global cnicflag
% keycode=double(get(handles.figure1,'CurrentCharacter'));
% if nameflag==11
% %keycode=double(get(handles.figure1,'CurrentCharacter'));
% if keycode>=97 && keycode<=122
% elseif keycode>=65 && keycode<=90
% elseif keycode==8
% else
%    errordlg('Please enter Only characters!!!','Bad Input for Name','modal')
%      uicontrol(handles.txtName)
%       cnicflag=0;
%      ffnameflag=0;
%      nameflag=0;
% end
% end
% if ffnameflag==11
% %keycode=double(get(handles.figure1,'CurrentCharacter'));
% if keycode>=97 && keycode<=122
% elseif keycode>=65 && keycode<=90
% elseif keycode==8
% else
%    errordlg('Please enter Only characters!!!','Bad Input for Father Name','modal')
%      uicontrol(handles.txtFName)
%      cnicflag=0;
%      ffnameflag=0;
%      nameflag=0;
% end
% end
% if cnicflag==11
% %keycode=double(get(handles.figure1,'CurrentCharacter'));
% if keycode>=97 && keycode<=122
% elseif keycode>=65 && keycode<=90
% elseif keycode==8
% else
%    errordlg('Please enter Only characters!!!','Bad Input for Father Name','modal')
%      uicontrol(handles.txtFName)
%      cnicflag=0;
%      ffnameflag=0;
%      nameflag=0;
% end
% end


% --- Executes on key press with focus on txtName and none of its controls.
function txtName_KeyPressFcn(hObject, eventdata, handles)
% hObject    handle to txtName (see GCBO)
% eventdata  structure with the following fields (see UICONTROL)
%	Key: name of the key that was pressed, in lower case
%	Character: character interpretation of the key(s) that was pressed
%	Modifier: name(s) of the modifier key(s) (i.e., control, shift) pressed
% handles    structure with handles and user data (see GUIDATA)
 
keycode=double(get(handles.figure1,'CurrentCharacter'));
if keycode>=97 && keycode<=122
elseif keycode>=65 && keycode<=90  
elseif keycode==28
elseif keycode==29
    elseif keycode==8
        elseif keycode==127
            elseif keycode==32
else
      errordlg('Please enter Only characters!!!','Bad Input for Name','modal')
     uicontrol(handles.txtName)
     
end


% --- Executes on key press with focus on txtFName and none of its controls.
function txtFName_KeyPressFcn(hObject, eventdata, handles)
% hObject    handle to txtFName (see GCBO)
% eventdata  structure with the following fields (see UICONTROL)
%	Key: name of the key that was pressed, in lower case
%	Character: character interpretation of the key(s) that was pressed
%	Modifier: name(s) of the modifier key(s) (i.e., control, shift) pressed
% handles    structure with handles and user data (see GUIDATA)
keycode=double(get(handles.figure1,'CurrentCharacter'));
if keycode>=97 && keycode<=122
elseif keycode>=65 && keycode<=90  
elseif keycode==28
elseif keycode==29
    elseif keycode==8
         elseif keycode==127
            elseif keycode==32
else
      errordlg('Please enter Only characters!!!','Bad Input for Father Name','modal')
     uicontrol(handles.txtFName)
     
end


% --- Executes on key press with focus on txtCNIC and none of its controls.
function txtCNIC_KeyPressFcn(hObject, eventdata, handles)
% hObject    handle to txtCNIC (see GCBO)
% eventdata  structure with the following fields (see UICONTROL)
%	Key: name of the key that was pressed, in lower case
%	Character: character interpretation of the key(s) that was pressed
%	Modifier: name(s) of the modifier key(s) (i.e., control, shift) pressed
% handles    structure with handles and user data (see GUIDATA)
keycode=double(get(handles.figure1,'CurrentCharacter'));
if keycode>=48 && keycode<=57
elseif keycode==8
    elseif keycode==28
elseif keycode==29
     elseif keycode==127
            elseif keycode==32
else
   errordlg('Please enter Only numbers!!!','Bad Input for CNIC','modal')
     uicontrol(handles.txtCNIC)
     
end


% --- Executes on key press with focus on txtContact and none of its controls.
function txtContact_KeyPressFcn(hObject, eventdata, handles)
% hObject    handle to txtContact (see GCBO)
% eventdata  structure with the following fields (see UICONTROL)
%	Key: name of the key that was pressed, in lower case
%	Character: character interpretation of the key(s) that was pressed
%	Modifier: name(s) of the modifier key(s) (i.e., control, shift) pressed
% handles    structure with handles and user data (see GUIDATA)
keycode=double(get(handles.figure1,'CurrentCharacter'));
if keycode>=48 && keycode<=57
elseif keycode==8
    elseif keycode==28
elseif keycode==29
     elseif keycode==127
            elseif keycode==32
else
   errordlg('Please enter Only numbers!!!','Bad Input for Contact','modal')
     uicontrol(handles.txtContact)
     
end
