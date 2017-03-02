VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   6150
   ClientLeft      =   5220
   ClientTop       =   3225
   ClientWidth     =   5430
   LinkTopic       =   "Form1"
   ScaleHeight     =   6150
   ScaleWidth      =   5430
   Begin VB.CommandButton iniciar 
      Caption         =   "INICIAR"
      Height          =   495
      Left            =   1080
      TabIndex        =   1
      Top             =   1200
      Width           =   2535
   End
   Begin VB.CommandButton parar 
      Caption         =   "PARAR"
      Height          =   495
      Left            =   1080
      TabIndex        =   0
      Top             =   1800
      Width           =   2535
   End
   Begin VB.Timer timer1 
      Enabled         =   0   'False
      Interval        =   50
      Left            =   3720
      Top             =   1920
   End
   Begin VB.Timer verdaderotop 
      Enabled         =   0   'False
      Interval        =   50
      Left            =   3720
      Top             =   1200
   End
   Begin VB.Shape bororxito 
      BackColor       =   &H00000000&
      BorderColor     =   &H00404040&
      Height          =   975
      Left            =   2880
      Shape           =   2  'Oval
      Top             =   120
      Width           =   975
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Private Sub iniciar_Click()
    verdaderotop.Enabled = True
      
End Sub

Private Sub parar_Click()
    timer1.Enabled = True
End Sub

Private Sub verdaderotop_Timer()

If timer1.Enabled Then
    verdaderotop.Enabled = False
ElseIf bororxito.Top < 8400 Then
    bororxito.Top = bororxito.Top + 200
ElseIf bororxito.Top > 8400 Then
    bororxito.Left = bororxito.Left + 200
       
End If
If bororxito.Left > 8400 Then
bororxito.Top = bororxito.Top - 400




End If


End Sub


Private Sub falsotop_Timer()
If verdaderotop.Enabled Then
    timer1.Enabled = False
    

    
   

End If



End Sub




