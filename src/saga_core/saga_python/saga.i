%module(directors="1") saga
%{
#include <saga_api/api_core.h>
#include <saga_api/module.h>
%}

class CSG_Module
{
	friend class CSG_Module_Interactive_Base;

public:

	CSG_Module(void);
	virtual ~CSG_Module(void);

	virtual void Destroy (void);

	virtual TSG_Module_Type Get_Type (void);

	const SG_Char * Get_Name(void);
	const SG_Char *	Get_Description (void);
	const SG_Char *	Get_Author (void);
	const SG_Char * Get_Icon(void);

	virtual const SG_Char *	Get_MenuPath (void);

	int Get_Parameters_Count (void);
	CSG_Parameters *Get_Parameters(void);
	CSG_Parameters *Get_Parameters(int i);
	CSG_Parameters *Get_Parameters(const SG_Char *Identifier);
#ifdef _SAGA_UNICODE
	CSG_Parameters *Get_Parameters(const char *Identifier);
#endif

	int Garbage_Get_Count(void);
	CSG_Data_Object *Garbage_Get_Item(int i);
	CSG_Data_Object *Garbage_Del_Item(int i, bool bFromListOnly = true);
	void Garbage_Clear(void);

	virtual bool is_Interactive(void);
	bool is_Progress(void);
	bool is_Executing(void);
	void Set_Translation(CSG_Translator &Translator);
	void Set_Managed(bool bOn = true);
	void Set_Show_Progress(bool bOn = true);

	virtual bool On_Before_Execution(void);
	virtual bool On_After_Execution(void);
	bool Execute (void);
protected:
	virtual bool On_Execute(void) = 0;
};
