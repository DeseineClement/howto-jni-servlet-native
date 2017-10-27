//
// Created by clement on 27/10/17.
//

#include <string>
#include "TestJNI.h"

_jstring *Java_TestJNI_concat(JNIEnv *jEnv, jclass, jstring jA, jint jB) {
    const char *a = jEnv->GetStringUTFChars(jA, nullptr);
    const int b = jB;

    std::string res(a);
    res += std::to_string(b);
    jEnv->ReleaseStringUTFChars(jA, a);
    return jEnv->NewStringUTF(res.c_str());
}
