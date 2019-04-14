#include <jni.h>
#include <string>

extern "C" JNIEXPORT jstring JNICALL
Java_com_tencent_wemeet_1flutter_MainActivity_getStringFromCpp(
        JNIEnv* env,
        jobject /* this */) {
    std::string hello = "I come from C++";
    return env->NewStringUTF(hello.c_str());
}
