//
// Created by clement on 27/10/17.
//

#include <string>
#include "MyAppJNI.h"

_jstring *Java_MyAppJNI_concat(JNIEnv *jEnv, jclass, jstring jstr, jint jnum) {
    const char *str = jEnv->GetStringUTFChars(jstr, nullptr);
    const int num = jnum;

    std::string res(str);
    res += std::to_string(num);
    jEnv->ReleaseStringUTFChars(jstr, str);
    return jEnv->NewStringUTF(res.c_str());
}
