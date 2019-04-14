package com.tencent.wemeet_flutter

import android.os.Bundle

import io.flutter.app.FlutterActivity
import io.flutter.plugin.common.MethodChannel
import io.flutter.plugins.GeneratedPluginRegistrant

class MainActivity : FlutterActivity() {
    private val CHANNEL = "samples.flutter.io/battery"
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        GeneratedPluginRegistrant.registerWith(this)
        MethodChannel(flutterView, CHANNEL).setMethodCallHandler { call, result ->
            if (call.method == "getStringFromNative") {
                val str = getStringFromNative();  // of from ndk
                result.success(str)
            } else if (call.method == "getStringFromCpp") {
                val str = getStringFromCpp();  // of from ndk
                result.success(str)
            } else {
                result.notImplemented()
            }
        }
    }

    private fun getStringFromNative(): String {
        return "I come from Native"
    }

    external fun getStringFromCpp(): String // 88

    companion object {

        // Used to load the 'native-lib' library on application startup.
        init {
            System.loadLibrary("native-lib")
        }
    }
}
