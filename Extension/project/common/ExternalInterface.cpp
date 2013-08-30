#ifndef STATIC_LINK
#define IMPLEMENT_API
#endif

#if defined(HX_WINDOWS) || defined(HX_MACOS) || defined(HX_LINUX)
#define NEKO_COMPATIBLE
#endif


#include <hx/CFFI.h>
#include "Extension.h"


using namespace extension;



static value extension_sample_method (value inputValue) {

	int returnValue = SampleMethod(val_int(inputValue));
	return alloc_int(returnValue);

}
DEFINE_PRIM (extension_sample_method, 1);





void extension_init_textfield (value text) {
	const char* cStr = val_get_string(text);
	initTextfield(cStr);	
}
DEFINE_PRIM (extension_init_textfield, 1);



extern "C" void extension_main () {}
DEFINE_ENTRY_POINT (extension_main);



extern "C" int extension_register_prims () { return 0; }
