#include "Code-Quest.h"
#include "MainFrame.h"
#include <wx/wx.h>

bool CodeQuest::OnInit()
{
    MainFrame* mainFrame = new MainFrame("Code Quest");
    mainFrame->SetClientSize(1920, 1080);
    mainFrame->Center();
    mainFrame->Show();
    return true;
}