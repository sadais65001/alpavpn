# Keep the main application class
-keep class com.cxn.alpavpn.** { *; }

# Keep annotations
-keepattributes *Annotation*

# Keep all activities, fragments, and view models
-keep class * extends android.app.Activity
-keep class * extends androidx.fragment.app.Fragment
-keep class * extends androidx.lifecycle.ViewModel

# Keep all native methods
-keepclasseswithmembernames class * {
    native <methods>;
}

# Google Play Services (if used)
-keep class com.google.android.gms.** { *; }

# Retrofit or Gson (if used)
-keep class com.google.gson.** { *; }
-keepattributes Signature
-keepattributes *Annotation*
-dontwarn com.google.gson.**

# If you use Kotlin coroutines
-keepclassmembers class kotlinx.coroutines.** {
    *;
}
