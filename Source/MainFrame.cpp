#include "MainFrame.h"
#include <wx/wx.h>

MainFrame::MainFrame(const wxString& title) : wxFrame(nullptr, wxID_ANY, title)
{
    wxPanel* panel = new wxPanel(this, wxID_ANY, wxDefaultPosition, wxDefaultSize, wxWANTS_CHARS);
    wxButton* button01 = new wxButton(panel, wxID_ANY, "Button01", wxPoint(300, 150), wxSize(200, 100));
    wxButton* button02 = new wxButton(panel, wxID_ANY, "Button02", wxPoint(300, 350), wxSize(200, 100));
    panel->Bind(wxEVT_CHAR_HOOK, &MainFrame::OnKeyEvent, this);

    CreateStatusBar();
}

void MainFrame::OnKeyEvent(wxKeyEvent& event)
{
    wxChar keyChar = event.GetUnicodeKey();

    if (keyChar == WXK_NONE)
    {
        int keyCode = event.GetKeyCode();
        wxLogStatus("Key With Code \"%d\" Pressed" , keyCode);
    }
    else
        wxLogStatus("Key \"%c\" Pressed", event.GetUnicodeKey());
}