object Form1: TForm1
  Left = 227
  Top = 107
  Width = 544
  Height = 425
  Caption = 'Processador - Easy Writer'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  PopupMenu = PopupMenu1
  OnActivate = LimpaTexto
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object RichEdit1: TRichEdit
    Left = 0
    Top = 29
    Width = 536
    Height = 331
    Align = alClient
    Lines.Strings = (
      'RichEdit1')
    ScrollBars = ssVertical
    TabOrder = 0
    OnChange = RichEdit1Change
  end
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 536
    Height = 29
    Caption = 'ToolBar1'
    Flat = True
    Images = ImageList1
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    object ToolButton1: TToolButton
      Left = 0
      Top = 0
      Hint = 'Abre um novo documento'
      Caption = 'ToolButton1'
      ImageIndex = 0
      OnClick = Novo1Click
    end
    object ToolButton2: TToolButton
      Left = 23
      Top = 0
      Hint = 'Carrega documento'
      Caption = 'ToolButton2'
      ImageIndex = 1
      OnClick = Abrir1Click
    end
    object ToolButton3: TToolButton
      Left = 46
      Top = 0
      Hint = 'Grava documento'
      Caption = 'ToolButton3'
      ImageIndex = 2
      OnClick = Salvar1Click
    end
    object ToolButton4: TToolButton
      Left = 69
      Top = 0
      Hint = 'Imprimir documento'
      Caption = 'ToolButton4'
      ImageIndex = 3
      OnClick = Imprimir1Click
    end
    object ToolButton5: TToolButton
      Left = 92
      Top = 0
      Width = 8
      Caption = 'ToolButton5'
      ImageIndex = 4
      Style = tbsSeparator
    end
    object ToolButton6: TToolButton
      Left = 100
      Top = 0
      Hint = 'Desfazer altera��o'
      Caption = 'ToolButton6'
      ImageIndex = 4
      OnClick = Desfazer1Click
    end
    object ToolButton7: TToolButton
      Left = 123
      Top = 0
      Hint = 'Remover sele��o'
      Caption = 'ToolButton7'
      ImageIndex = 5
      OnClick = Recortar1Click
    end
    object ToolButton8: TToolButton
      Left = 146
      Top = 0
      Hint = 'Copiar sele��o'
      Caption = 'ToolButton8'
      ImageIndex = 6
      OnClick = Copiar1Click
    end
    object ToolButton9: TToolButton
      Left = 169
      Top = 0
      Hint = 'Colar conte�do'
      Caption = 'ToolButton9'
      ImageIndex = 7
      OnClick = Colar1Click
    end
    object ToolButton10: TToolButton
      Left = 192
      Top = 0
      Width = 8
      Caption = 'ToolButton10'
      ImageIndex = 8
      Style = tbsSeparator
    end
    object ToolButton11: TToolButton
      Left = 200
      Top = 0
      Hint = 'Formatar fonte'
      Caption = 'ToolButton11'
      ImageIndex = 8
      OnClick = Fonte1Click
    end
    object ToolButton12: TToolButton
      Left = 223
      Top = 0
      Hint = 'Selecionar cor'
      Caption = 'ToolButton12'
      ImageIndex = 9
      OnClick = Cor1Click
    end
    object ToolButton13: TToolButton
      Left = 246
      Top = 0
      Hint = 'Alinhamento esquerdo'
      Caption = 'ToolButton13'
      ImageIndex = 10
      OnClick = Esquerda1Click
    end
    object ToolButton14: TToolButton
      Left = 269
      Top = 0
      Hint = 'Alinhamento centro'
      Caption = 'ToolButton14'
      ImageIndex = 11
      OnClick = Centro1Click
    end
    object ToolButton15: TToolButton
      Left = 292
      Top = 0
      Hint = 'Alinhamento direito'
      Caption = 'ToolButton15'
      ImageIndex = 12
      OnClick = Direita1Click
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 360
    Width = 536
    Height = 19
    Panels = <>
    SimplePanel = True
  end
  object OpenDialog1: TOpenDialog
    Filter = 
      'Arquivos Exemplo (*.xxx)|*.xxx|Arquivos Texto (*.txt)|*.txt|Todo' +
      's os Arquivos (*.*)|*.*'
    Left = 136
    Top = 72
  end
  object SaveDialog1: TSaveDialog
    Filter = 
      'Arquivos Exemplo (*.xxx)|*.xxx|Arquivos Texto (*.txt)|*.txt|Todo' +
      's os Arquivos (*.*)|*.*'
    Left = 176
    Top = 72
  end
  object MainMenu1: TMainMenu
    Left = 216
    Top = 72
    object Arquivo1: TMenuItem
      Caption = '&Arquivo'
      object Novo1: TMenuItem
        Caption = '&Novo'
        ShortCut = 16463
        OnClick = Novo1Click
      end
      object Abrir1: TMenuItem
        Caption = 'A&brir'
        ShortCut = 16449
        OnClick = Abrir1Click
      end
      object Salvar1: TMenuItem
        Caption = '&Salvar'
        ShortCut = 16467
        OnClick = Salvar1Click
      end
      object Salvarcomo1: TMenuItem
        Caption = 'Salvar &como'
        ShortCut = 16450
        OnClick = Salvarcomo1Click
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object Imprimir1: TMenuItem
        Caption = '&Imprimir'
        ShortCut = 16464
        OnClick = Imprimir1Click
      end
      object N5: TMenuItem
        Caption = '-'
      end
      object Sair1: TMenuItem
        Caption = 'Sai&r'
        ShortCut = 32883
        OnClick = Sair1Click
      end
    end
    object Editar1: TMenuItem
      Caption = '&Editar'
      object Desfazer1: TMenuItem
        Caption = '&Desfazer'
        ShortCut = 16459
        OnClick = Desfazer1Click
      end
      object N3: TMenuItem
        Caption = '-'
      end
      object Recortar1: TMenuItem
        Caption = '&Recortar'
        ShortCut = 16472
        OnClick = Recortar1Click
      end
      object Copiar1: TMenuItem
        Caption = '&Copiar'
        ShortCut = 16451
        OnClick = Copiar1Click
      end
      object Colar1: TMenuItem
        Caption = 'C&olar'
        ShortCut = 16470
        OnClick = Colar1Click
      end
      object N4: TMenuItem
        Caption = '-'
      end
      object Selecionartudo1: TMenuItem
        Caption = '&Selecionar tudo'
        ShortCut = 16468
        OnClick = Selecionartudo1Click
      end
    end
    object Formatar1: TMenuItem
      Caption = '&Formatar'
      object Fonte1: TMenuItem
        Caption = '&Fonte'
        ShortCut = 16454
        OnClick = Fonte1Click
      end
      object Cor1: TMenuItem
        Caption = '&Cor'
        ShortCut = 16466
        OnClick = Cor1Click
      end
      object N2: TMenuItem
        Caption = '-'
      end
      object Estilos1: TMenuItem
        Caption = '&Estilos'
        object Negrito1: TMenuItem
          Caption = '&Negrito'
          ShortCut = 16462
          OnClick = Negrito1Click
        end
        object Itlico1: TMenuItem
          Caption = '&It�lico'
          ShortCut = 16457
          OnClick = Itlico1Click
        end
        object Sublinhado1: TMenuItem
          Caption = '&Sublinhado'
          ShortCut = 16469
          OnClick = Sublinhado1Click
        end
      end
      object Alinhamento1: TMenuItem
        Caption = '&Alinhamento'
        object Esquerda1: TMenuItem
          Caption = '&Esquerda'
          ShortCut = 16453
          OnClick = Esquerda1Click
        end
        object Direita1: TMenuItem
          Caption = '&Direita'
          ShortCut = 16452
          OnClick = Direita1Click
        end
        object Centro1: TMenuItem
          Caption = '&Centro'
          ShortCut = 16461
          OnClick = Centro1Click
        end
      end
    end
    object Sobre1: TMenuItem
      Caption = '&Sobre...'
      OnClick = Sobre1Click
    end
  end
  object FontDialog1: TFontDialog
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    MinFontSize = 0
    MaxFontSize = 0
    Left = 136
    Top = 136
  end
  object ColorDialog1: TColorDialog
    Ctl3D = True
    Left = 176
    Top = 136
  end
  object PrintDialog1: TPrintDialog
    Left = 216
    Top = 136
  end
  object PopupMenu1: TPopupMenu
    Images = ImageList2
    Left = 256
    Top = 72
    object Fonte2: TMenuItem
      Caption = 'Fonte'
      ImageIndex = 0
      OnClick = Fonte1Click
    end
    object Cor2: TMenuItem
      Caption = 'Cor'
      ImageIndex = 1
      OnClick = Cor1Click
    end
    object N6: TMenuItem
      Caption = '-'
    end
    object Negrito2: TMenuItem
      Caption = 'Negrito'
      ImageIndex = 2
      OnClick = Negrito1Click
    end
    object Itlico2: TMenuItem
      Caption = 'It�lico'
      ImageIndex = 3
      OnClick = Itlico1Click
    end
    object Sublinhado2: TMenuItem
      Caption = 'Sublinhado'
      ImageIndex = 4
      OnClick = Sublinhado1Click
    end
    object N7: TMenuItem
      Caption = '-'
    end
    object Esquerda2: TMenuItem
      Caption = 'Esquerda'
      ImageIndex = 5
      OnClick = Esquerda1Click
    end
    object Direita2: TMenuItem
      Caption = 'Direita'
      ImageIndex = 6
      OnClick = Direita1Click
    end
    object Centro2: TMenuItem
      Caption = 'Centro'
      ImageIndex = 7
      OnClick = Centro1Click
    end
  end
  object ImageList1: TImageList
    Left = 256
    Top = 136
    Bitmap = {
      494C01010D000E00040010001000FFFFFFFF0110FFFFFFFFFFFFFFFF424D7600
      0000000000007600000028000000400000004000000001000400000000000008
      0000000000000000000000000000000000000000000000008000008000000080
      8000800000008000800080800000C0C0C000808080000000FF0000FF000000FF
      FF00FF000000FF00FF00FFFF0000FFFFFF0000000000000000000FFF08800000
      FFFFF2FFFF89430CB201A130682420E8EE70EEEEEEEEEEEEEEE08B5508E80874
      FEFF33C05A5959648910683DA001208D450CE0000000000000E071FEFFEBF08B
      C3807DFF00740FE84671FEFF648F05000000E0F88888888880E05B59595DC20C
      0090558BEC51535684D2740883C4F0E80E71E0F00000000080E0F08B45FCE8B7
      73FEFF8B4510E8AF73FEFF8B450CE8A773FEE0F00000000080E02064FF306489
      208B4510E8A5DEFFFF508B450C508B450850E0F00000000080E08BC833D28BC6
      E8ADFEFFFF33C05A595964891068F0A00120E0F00000000080E08D450CE84073
      FEFF8D4510E83873FEFFC3E9C270FEFFEBE0E0F00000000080E070FEFF648F05
      0000000083C40C8BC65E5B595DC20C008BC0E0F00000000080E0FF8BDA8BE88B
      45108B70084E85F67C164633FF8BD78B4510E0F00000000080E0501C474E75ED
      8B4510E8CA6FFEFF8B451C85C0740A8B4010E0F00000000080E0450CE8B16FFE
      FF8B4524E8A96FFEFF84DB7E078BC5E81670E0F00000000080E051C604240154
      8B400CE8A2F8FFFF5AC3558BEC515356578BE0FFFFFFFFFFF0E0FCE89A72FEFF
      33C05568F2A1012064FF3064892080FB0175E0000000000000E045FCE875DDFF
      FF8BF08BC68B15B8672420E8526FFEFF84C0EEEEEEEEEEEEEEE0ACF2FFFF33C0
      5A595964891068F9A101208D45FCE82F72FE0000000000000000009999999990
      0000000000000000000000000000000000000000000000000000000999999900
      0000EEEEEEEEEEEEEEE0EEEEEEEEEEEEEEE00000000000000000000000000000
      0900E0000000000000E0E0000000000000E00000000000000000000000009900
      0190E0F88888888880E0E0F88888888880E00000008000000000000000000000
      0199E0F00000000080E0E0F00000000080E00000080000008000000000000000
      0190E0F00000000080E0E0F00000000080E00000000000000000000000000000
      0F90E0F00000000080E0E0F00000000080E00000000800000000000000000000
      0000E0F00000000080E0E0F00000000080E0000000800008000000000000000F
      F000E0F00000000080E0E0F00000000080E00000000000000000000000000007
      F000E0F00000000080E0E0F00000000080E00000000000000000000000080000
      0000E0F00000000080E0E0F00000000080E00000000800800000000000800008
      0000E0F00000000080E0E0F00000000080E00000000000000000000080000800
      0000E0F00000000080E0E0F00000000080E00000000000000000000800080000
      0000E0FFFFFFFFFFF0E0E0FFFFFFFFFFF0E00000000000000000080008000000
      0000E0000000000000E0E0000000000000E00000000000000000000800000000
      0000EEEEEEEEEEEEEEE0EEEEEEEEEEEEEEE00000000000000000000000000000
      00000000000B8FFFFFB00000000FFFFFFFF00000099999000000000000000000
      00000000000B8FFFFFB00000000F0000F0F00009999999990000000000000008
      80000000000B8FFFFFB00000000FFFFFFFF000990000009990000C0000000088
      00000000000B8FFFFFB08000000008F000000999900000099900C0CC00000880
      000000000000008800800BBBBBBBB0F0FF000909990000009900C000C00088FF
      FFF00FFFFFFFF00088B00B88888BB0F0F0009900999000000990CC00000F8888
      88800FFFFFFFF0008BB00B8FFFFFB0F0000099000999000009900CCCCC000000
      00000F00F000F00090080B8FFFFFB00090009900009990000990000000000FFF
      FFF00FFFFFFFF00999000B8FFFFFB00999009900000999000990000C0C000F00
      F0F00F0000F0F09999900B8FFFFFB0999990990000009990099000C00C000FFF
      FFF00FFFFFFFF99999990B8FFFFFB9999999099000000999090000C00C000F0F
      FFF00F00F000000999000B8FFFFFB0099900099900000099990000C000000FFF
      00000FFFF0FF0009990008008800800999000099900000099000000CCC000F0F
      0FF00F07F0F0008999000B880088B00999000009999999990000000000000FFF
      0F000FFFF000999990000BB8008BB99990000000099999000000000000000000
      00000000000000000000800000000800000000000000B000000B000000000000
      0000000000000000000000000000000000000BB0888BB8888BB0000000000000
      00000000088888880000077777777777777000B0000000000B00000000000000
      0000000008777777000007777777777777700000FFFFFFFF0800000000000000
      0000000008700777000000000000000000000000FFFFFFFF0800000000000000
      000000000870077700000F7F7F7F7F7F7F700000FFFFFFFF0800000B7B7B7B7B
      0000000008777777000007F7F7F7F7F7F9F00000FFFFFFFF080000F0B7B7B7B7
      B00000000000000000000F7F7F7F7F7F7F70BBB0FFFFFFFF0BB000BF0B7B7B7B
      7B00000000000000000000000000000000000BB0FFFFFFFF0BBB00FBF0000000
      0000000FFFFFFFFF00000000FFFFFFFF00000000FFFF0000000000BFBFBFBFB0
      0000000FFFFFFFFF00000000F0000F0F00000000FFFF0FF0000000FBFBFBFBF0
      0000000FFFFFFFFF00000000FFFFFFFF00000000FFFF0F0B000000BFBFBF0000
      0000000FFFFFFFFF00000000F00F000000000000FFFF000BB000000BFBF00000
      0000000FFFFFFFFF00000000FFFF0FF0000000B000000000BB00008000080000
      0000000FFFFFFFFF08000000F07F0F0000000BB0000BB0000BB0000000000000
      0000000FFFFFFFFF00000000FFFF00000000B000000B0000000B000000000000
      000000099999999900000000000000000000424D3E000000000000003E000000
      2800000040000000400000000100010000000000000200000000000000000000
      000000000000000000000000FFFFFF00FFFF007448807D080001FCA1F8052420
      00013064892033C0000155683B0709201FF15333C08945F81FF10090558BEC83
      1971FFEBF059595D19310DF7FFC3E90519110609208D45F819315A5959648910
      1971108B55FC89101FF1508B00FF50501FF1E84DA2FFFF8B00010524208B008B
      0001450C508D55F800014514508D45FCFFFFC01FFFFFFFFFFFFFE02F00010001
      F183FFE300010001FBC7FF3100010001F9C7FFF01FF11FF1F807FFF01FF11FF1
      FD8FFFF01D311931FC8FFFE119311931FC8FFFC311311931FE1FFF8319311931
      FE1FFE071D311931FE1FFC0F1FF11FF1FF3FF03F1FF11FF1FF7FE0FF00010001
      FFFF83FF00010001FFFF0FFF00010001FFFFFFFFFC00FC00F83FFFE7FC00FC00
      E00FFFC7FC00FC00CFC78F8FFC00000087E3070000000001A3F3320000000003
      31F900000000000738F98000000000073C79F900002300233E39E10000010001
      3F19C900000000009F8BC900002300238FC3C30000630023C7E7E30000C30023
      E00FFF0101070007F83FFF0303FF003FFF7EFFFFFFFF80019001FFFF80030000
      C003FFFF00010000E003FFFF00010000E003C00F00010000E003800700010000
      E0038003000100000001800100010000800080010001E007E007800F0001E007
      E00F800F0001E007E00F801F0001E007E027C0FF0001E00FC073C0FF0001E01F
      9E79FFFF0001E03F7EFEFFFF8003E07F00000000000000000000000000000000
      000000000000}
  end
  object ImageList2: TImageList
    Left = 136
    Top = 200
    Bitmap = {
      494C010108000900040010001000FFFFFFFF0110FFFFFFFFFFFFFFFF424D7600
      0000000000007600000028000000400000003000000001000400000000000006
      0000000000000000000000000000000000000000000000008000008000000080
      8000800000008000800080800000C0C0C000808080000000FF0000FF000000FF
      FF00FF000000FF00FF00FFFF0000FFFFFF00E44DB3818895B281999FFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9999999F0FFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000FF00000FFFFFFFFFFFFF009FF00F0
      000000F0000000F0000F000FF000FFFFF0FFFF000FFFFFFFFFFF99FF019F0FFF
      00F00FFF000F0FFF00FFF80FF80FFFFFF08FFF000FFFFFFFFFFFFFFF01998000
      08FF000000FF800008FFFF00000FFFFFF80000008FFFFFFFFFFFFFFF0190F0F0
      0FFF00F000FFF0F00FFFFFF0F80FFFFFFF0FF000FFFFFFFFFFFFFFFF0F90F0F0
      8FFFF0F00FFFF0F08FFFFFFF080FFFFFFF08F000FFFFFFFFFFFFFFF0000FF800
      8FFFF0000FFFF8008FFFFFFFF00FFFFFFF80F008FFFFFFFFFFFFFF0FF0FFFF00
      FFFFF000FFFFFF00FFFFFFFFF00FFFFFFFF0000FFFFFFFFFFFFFF007F0FFFF08
      FFFFFF00FFFFFF08FFFFFFFFFF0FFFFFFFF0000FFFFFFFFFFFF800000FFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8008FFFFFFFFFFF800008FFFFFFF9
      8FFFFFF89FFFFFF98FFFFFFF89FFFFFFFFFF00FFFFFFFFFF800008FFFFFFFFF9
      99FFFF999FFFFFF999FFFFF999FFFFFFFFFF0FFFFFFFFFF80008FFFFFFFFFFF9
      9FFFFFF99FFFFFF99FFFFFFF99FFFFFFFFFFFFFFFFFFF80008FFFFFFFFFFFFF9
      F98FF89F9FFFFFF9F98FFF89F9FFFFFFFFFFFFFFFFFF0008FFFFFFFFFFFFFFFF
      FF9999FFFFFFFFFFFF99999FFFFF450400A00000000000000000000000000000
      000000000000000000000000000000000000000000B000000000EEEEEEEEEEEE
      EEE0EEEEEEEEEEEEEEE0EEEEEEEEEEEEEEE0000000F000000000E00000000000
      00E0E0000000000000E0E0000000000000E0000000B000000000E0F888888888
      80E0E0F88888888880E0E0F88888888880E0000000F0F0000000E0F000000000
      80E0E0F00000000080E0E0F00000000080E0000000B0B0B00000E0F000000000
      80E0E0F00000000080E0E0F00000000080E0000000F0F0F00000E0F000000000
      80E0E0F00000000080E0E0F00000000080E00000B0BFBFB00000E0F000000000
      80E0E0F00000000080E0E0F00000000080E00000F0FBFBF00000E0F000000000
      80E0E0F00000000080E0E0F00000000080E00000BFBFBFB00000E0F000000000
      80E0E0F00000000080E0E0F00000000080E000000BFBFB000000E0F000000000
      80E0E0F00000000080E0E0F00000000080E00000000000000000E0F000000000
      80E0E0F00000000080E0E0F00000000080E000000EEEEEE00000E0F000000000
      80E0E0F00000000080E0E0F00000000080E00000000000000000E0FFFFFFFFFF
      F0E0E0FFFFFFFFFFF0E0E0FFFFFFFFFFF0E000000000000B0000E00000000000
      00E0E0000000000000E0E0000000000000E00000000000000000EEEEEEEEEEEE
      EEE0EEEEEEEEEEEEEEE0EEEEEEEEEEEEEEE00000000000000000009999999990
      0000000000000000000000000000000000000000000000000000000999999900
      0000000000000000000000000000000000000000000000000000000000000000
      0900000000000000000000000000000000000000000000000000000000009900
      0190000000000000000000000000080008000000008000000000000000000000
      0199800008000000000080000800000000000000080000008000000000000000
      0190000000000000000000000000000008000000000000000000000000000000
      0F90000080000000000000008000000008000000000800000000000000000000
      000008008000000000000800800000000000000000800008000000000000000F
      F000000000000000000000000000000000000000000000000000000000000007
      F000000800000000000000080000000000000000000000000000000000080000
      0000000000000000000000000000000000000000000800800000000000800008
      0000000980000008900000098000000089000000000000000000000080000800
      0000000999000099900000099900000999000000000000000000000800080000
      0000000990000009900000099000000099000000000000000000080008000000
      0000000909800890900000090980008909000000000000000000000800000000
      000000000099990000000000009999900000424D3E000000000000003E000000
      2800000040000000300000000100010000000000800100000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FDFFFFFFFFFFFFFFF8FF000100010001
      F8FF000100010001F87F000100010001F81F1FF11FF11FF1F80F1FF11FF11FF1
      F00F1D3119711931E00F193119311931E00F113119111931E00F193119311931
      F01F1D3119711931F00F1FF11FF11FF1F00F1FF11FF11FF1F007000100010001
      F007000100010001F007000100010001FFFFC01FFFFFFFFFFFFFE02FFFFFFFFF
      F183FFE320202118FBC7FF3172717399F9C7FFF0030303C1F807FFF0A723A7E9
      FD8FFFF0A7A7A7F1FC8FFFE1878787F9FC8FFFC3CF8FCFF9FE1FFF83CFCFCFFD
      FE1FFE07FFFFFFFFFE1FFC0FE7E7E7F3FF3FF03FE3C7E3E3FF7FE0FFE7E7E7F3
      FFFF83FFE997E9CBFFFF0FFFFC3FFC1F00000000000000000000000000000000
      000000000000}
  end
end
