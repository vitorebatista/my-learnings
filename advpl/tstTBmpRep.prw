#include 'protheus.ch'

Static cCodEmp := '02' //<<<<<<<COLOQUE AQUI O CÓDIGO DA SUA EMPRESA>>>>>>>>>>
Static cCodFil := '01' //<<<<<<<COLOQUE AQUI O CÓDIGO DA SUA FILIAL>>>>>>>>>>
Static cPhoto  := "FOTONGTESTE" //<<<<<<<COLOQUE AQUI O NOME DA IMAGEM NO SIGAADV.BMR>>>>>>>>>>
Static cFile   := "C:/temp/IMG001.JPG" //<<<<<<<COLOQUE AQUI O LOCAL EM QUE DESEJA EXTRAIR>>>>>>>>>>

user function tstTBmpRep()

	//JOB utilizando a classe TBmpRep
	StartJob("U_TstImgRep",GetEnvServer(),.T.,'1')
	
	
	//JOB utilizando a classe FwBmpRep
	StartJob("U_TstImgRep",GetEnvServer(),.T.,'2')

	
	//JOB utilizando função RepExtract
	StartJob("U_TstImgRep",GetEnvServer(),.T.,'3')
	
return


User Function TstImgRep(cParam)
	
	Local cImage := ""
	Local oTeste
	
	Local oReposit
	Local lGravou := .F.
	
	conout('','','','',"[Executando teste "+cParam+"]")
	conout("Empresa: "+cCodEmp)
	conout("Filial.: "+cCodFil)
	
	RPCSetType(3)
	RPCSetEnv(cCodEmp,cCodFil,"","","CFG")

	//JOB utilizando a classe TBmpRep
	If cParam == '1'
	
		oReposit := tBmpRep():New ( 0, 0, 0, 0, "", .T., /*oDlg*/, Nil, Nil, .F., .F. )
		oReposit:Extract(cPhoto, cFile)
		
	//JOB utilizando a classe FwBmpRep
	ElseIf cParam == '2'
		oReposit := FwBmpRep():New()
		oReposit:Extract(cPhoto, cFile)
	
	//JOB utilizando função RepExtract
	ElseIf cParam == '3'

		RepExtract(cPhoto,cFile,.T.,.T.)

	EndIf
	
	
	conout("[Término do teste "+cParam+" com sucesso!!!]")
return