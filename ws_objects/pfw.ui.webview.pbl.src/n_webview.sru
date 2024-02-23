﻿$PBExportHeader$n_webview.sru
$PBExportComments$PowerFramework~r~n(c)飞沃共享(深圳)科技有限公司
forward
global type n_webview from nonvisualobject
end type
end forward

global type n_webview from nonvisualobject native "pfw.dll"
public function string Copyright()
public function string GetVersion()
public function boolean IsValid()
public function boolean IsVisible()
public function boolean IsEnabled()
public function boolean IsActive()
public function boolean IsFocused()
public function boolean IsPopupMode()
public function ulong GetHandle()
public function ulong CreateWindow(readonly ulong flags)
public function ulong CreateWindow(readonly ulong flags,readonly window owner)
public function ulong CreateWindow(readonly ulong flags,readonly real width,readonly real height)
public function ulong CreateWindow(readonly ulong flags,readonly real width,readonly real height,readonly window owner)
public function ulong CreateWindow(readonly ulong flags,readonly real xpos,readonly real ypos,readonly real width,readonly real height)
public function ulong CreateWindow(readonly ulong flags,readonly real xpos,readonly real ypos,readonly real width,readonly real height,readonly window owner)
public function long Close()
public function long Show()
public function long Show(readonly ulong flags)
public function long Hide()
public function long Popup()
public function long ClosePopup()
public function long ClosePopup(readonly long exitcode)
public function long SetVisible(readonly boolean visible)
public function long SetEnabled(readonly boolean enabled)
public function long SetActive()
public function long SetFocus()
public function long Move(readonly real xpos,readonly real ypos)
public function long Resize(readonly real width,readonly real height)
public function long SetPos(readonly real xpos,readonly real ypos,readonly real width,readonly real height)
public function long Center()
public function long GetSize(ref real width,ref real height)
public function long GetPos(ref real xpos,ref real ypos)
public function long GetPos(ref real xpos,ref real ypos,ref real width,ref real height)
public function string GetTitle()
public function long SetTitle(readonly string title)
public function string GetIcon()
public function long SetIcon(readonly string icon)
public function long SetOption(readonly ulong option,readonly boolean value)
public function long SetDebugOutput(readonly boolean enable)
public function long LoadEngine()
public function long LoadFile(readonly string uri)
public function long LoadHtml(readonly string html)
public function long LoadHtml(readonly string html, readonly string baseurl)
public function long LoadUrl(readonly string url)
public function long ShowDevTools()
public function long SetAgent(readonly string name)
public function string GetAgent()
public function long SetCookie(readonly string domain,readonly string name,readonly string value)
public function string GetCookie(readonly string domain)
public function string GetCookies()
public function long SetZoom(readonly long zoom)
public function long GetZoom()
public function boolean IsLoading()
public function boolean IsDocumentReady()
public function long Stop()
public function long Reload()
public function boolean CanGoBack()
public function long GoBack()
public function boolean CanGoForward()
public function long GoForward()
public function string GetUrl()
public function string GetContentTitle()
public function string Evaluate(readonly string scripting)
public function long EvaluateAsync(readonly string scripting)
event type long OnNavigationStart(string url)
event OnNavigationEnd(string url,boolean succ)
event OnUrlChanged(string url)
event OnLoading()
event OnDocumentReady()
event OnTitleChanged(string newtitle)
event OnFaviconChanged(string url,blob data)
event OnAlert(string msg)
event type long OnConfirm(string msg)
event type long OnPrompt(string msg,string default,ref string result)
event type ulong OnCreateView(string url,real xpos,real ypos,real viewwidth,real viewheight)
event type string OnInvoke(string method,string args[])
event OnDebugOutput(string url,string source,string level,string info,long line,string stacktrace)
end type
global n_webview n_webview

on n_webview.create
call super::create
TriggerEvent( this, "constructor" )
end on

on n_webview.destroy
TriggerEvent( this, "destructor" )
call super::destroy
end on

