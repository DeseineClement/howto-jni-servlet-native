#include <string>
#include "Concat.h"

JNIEXPORT jstring JNICALL Java_Concat_concat
  (JNIEnv *jEnv, jclass, jstring jstr, jint jnum) {
      const char *str = jEnv->GetStringUTFChars(jstr, nullptr);
      const int num = jnum;

      std::string res(str);
      res += std::to_string(num);
      jEnv->ReleaseStringUTFChars(jstr, str);
      return jEnv->NewStringUTF(res.c_str());
}