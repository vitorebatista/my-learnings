#Include "Protheus.ch"


#define X3_USADO_NAOUSADO "���������������" 
#define X3_RESERV_NAOUSADO "��"
//#define X3_USADO_EMUSO "���������������"
//#define X3_USADO_NAOALTERA "��������������� "
//#define X3_RESERV_OBRIGAT 'A�'


//---------------------------------------------------------------------
/*/{Protheus.doc} UPDTESTE
Update que cria campo TL_TESTE e demonstrar utiliza��o do NGCRIAUPD

@author Vitor Emanuel Batista
@since 25/06/2009
@version MP10
@return Nil
/*/
//---------------------------------------------------------------------
User Function UPDTESTE()
	//Modulo respons�vel pela atualizacao
	Local cModulo := "MNT"
	
	//Bloco de Codigo executado no inicio do update (por empresas). 
	//Utilizado para carregar arrays de atualizacao
	Local bPrepar := {|| UPDTESTEINI() } 

	//Versao do update
	Local nVersao := 1

	//Bloco do codigo executado na finalizacao do update (por empresa)
	Local bFinish := {||}
	
	//Bloco de codigo para verificar se empresa podera ser atualizada (retorno .t./.f.)
	Local bVerEmp := {|| UpdVerEmp()}
	
	//Observacoes no inicio do update
	Local cObs := "Coloque uma observacao ou deixe esta vari�vel nula"
	
	NGCriaUpd(cModulo,bPrepar,nVersao,bFinish,bVerEmp,cObs)	
Return 

//---------------------------------------------------------------------
/*/{Protheus.doc} UPDTESTEINI
Funcao que carrega vari�veis para altera��o do dicion�rio.

@author Vitor Emanuel Batista
@since 25/06/2009
@version MP10
@return Nil
/*/
//---------------------------------------------------------------------
Static Function UPDTESTEINI()
	
	aSX2 := {}
	aSIX := {}
	aSX3 := {}
	aSX6 := {}
	aSX7 := {}
	aSXB := {}
	aSX9 := {}
	aSx3Alter := {}

	//���������������ͻ
	//�PREPARANDO SX2 �
	//���������������ͼ	
	//aAdd(aSX2,{X2_CHAVE,X2_PATH,X2_NOME,X2_NOMESPA,X2_NOMEENG,X2_MODO,X2_UNICO})
	aAdd(aSX2,{'STL',Nil,Nil,Nil,Nil,Nil,Nil})
	
	//���������������ͻ
	//�PREPARANDO SIX �
	//���������������ͼ	    
	//aAdd(aSix,{INDICE,ORDEM,CHAVE,DESCRICAO,DESCSPA,DESCENG,PROPRI,SHOWPESQ})
	aAdd(aSix,{"STL","E","TL_ORDEM","Teste","Teste","Teste","S","S"})
	//aAdd(aSix,{"STL","E","TL_TESTE","Teste","Teste","Teste","S","S"})
	//���������������ͻ
	//�PREPARANDO SX3 �
	//���������������ͼ
	//cX3Coluna := "X3_VALID" //( poderia ser qualquer coluna do SX3 - "X3_TIPO", "X3_USADO" etc...)
	//cConteudo := "teste()" //conteudo da coluna especificada acima
	// aAdd(aSx3Alter,{X3_ARQUIVO,X3_CAMPO,cX3Coluna   ,cConteudo})	
	
	aAdd(aSX3, {'STL','99','TL_TESTE','C',10,0,; //Alias,Ordem,Campo,Tipo,Tamanho,Decimais
					'Teste','Teste','Teste',; //Tit. Port.,Tit.Esp.,Tit.Ing. 
					'Teste','Teste','Teste',;//Desc. Port.,Desc.Esp.,Desc.Ing.
					'',;//Picture
					'',;//Valid
					X3_USADO_NAOUSADO,;//Usado
					'',;//Relacao
					'',0,X3_RESERV_NAOUSADO,'','',;//F3,Nivel,Reserv,Check,Trigger
					' ','N',' ',' ',' ',;//Propri,Browse,Visual,Context,Obrigat
					'',;	//VldUser
					'','','',;//Box Port.,Box Esp.,Box Ing.
					'','','','','',; //PictVar,When,Ini BRW,GRP SXG,Folder		
					'','','','',' '}) //Pyme,CondSQL,ChkSQL,IdxSrv,Ortogra
	/*					
	aAdd(aSX3,{	Alias,Ordem,Campo,Tipo,Tamanho,Decimais,;
					Tit. Port.,Tit.Esp.,Tit.Ing. ,; //,,
					Desc. Port.,Desc.Esp.,Desc.Ing.,;
					Picture,;
					Valid,;
					Usado,;
					Relacao,;
					F3,Nivel,Reserv,Check,Trigger,;
					Propri,Browse,Visual,Context,Obrigat,;
					VldUser,;
					Box Port.,Box Esp.,Box Ing.,;
					PictVar,When,Ini BRW,GRP SXG,Folder,; 
					Pyme,CondSQL,ChkSQL,IdxSrv,Ortogra})*/


	//���������������ͻ
	//�PREPARANDO SX6 �
	//���������������ͼ	
/*	aAdd(aSX6, {X6_VAR,;
					X6_TIPO,;
					X6_DESCRIC,;
		 			X6_DSCSPA,;
					X6_DSCENG,;
		 			X6_DESC1,;
		 			X6_DSCSPA1,;
		 			X6_DSCENG1,;
		 			X6_DESC2,;
		 			X6_DSCSPA2,;
		 			X6_DSCENG2,;
		 			X6_CONTEUD;
		 			X6_CONTSPA,;
		 			X6_CONTENG;
		 			X6_PROPRI,;
		 			}) */
						 			

	//���������������ͻ
	//�PREPARANDO SXB �
	//���������������ͼ

	//aAdd(aSXB,{XB_ALIAS,XB_TIPO,XB_SEQ,XB_COLUNA ,XB_DESCRI ,XB_DESCSPA,XB_DESCENG,XB_CONTEM})



	//���������������ͻ
	//�PREPARANDO SX7 �
	//���������������ͼ
/*	aAdd(aSx7,{	X7_CAMPO,;
					X7_SEQUENC,;
					X7_REGRA,;
					X7_CDOMIN,;
					X7_TIPO,;
					X7_SEEK,;
					X7_ALIAS,;
					X7_ORDEM,;
					X7_CHAVE,;
					X7_CONDIC,;
					X7_PROPRI})*/

	//���������������ͻ
	//�PREPARANDO SX9 �
	//���������������ͼ
	//aAdd(aSX9,{X9_DOM,X9_IDENT,X9_CDOM,X9_EXPDOM,X9_EXPCDOM,X9_PROPRI,X9_LIGDOM,X9_LIGCDOM,X9_CONDSQL,X9_USEFIL,X9_ENABLE})

Return 

//---------------------------------------------------------------------
/*/{Protheus.doc} UpdVerEmp
Verifica se empresa poder� ser atualizada ou n�o

@author Vitor Emanuel Batista
@since 25/06/2009
@version MP10
@return Nil
/*/
//---------------------------------------------------------------------
Static Function UpdVerEmp()
	Local lRet := .t. 
	//lRet := funcao() 
	
	If !lRet
		NGUpdObserv("A empresa nao poder� ser atualiada porque ...", .t.) //.t. = indica que observacao sera adicionada no final do log
	EndIf

Return lRet