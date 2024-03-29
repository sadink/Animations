# This is a configuration file for ProGuard.
# http://proguard.sourceforge.net/index.html#manual/usage.html

-dontusemixedcaseclassnames
-dontskipnonpubliclibraryclasses
-verbose

# Optimization is turned off by default. Dex does not like code run
# through the ProGuard optimize and preverify steps (and performs some
# of these optimizations on its own).
-dontoptimize
-dontpreverify
# Note that if you want to enable optimization, you cannot just
# include optimization flags in your own project configuration file;
# instead you will need to point to the
# "proguard-android-optimize.txt" file instead of this one from your
# project.properties file.

-keepattributes *Annotation*
-keep public class com.google.vending.licensing.ILicensingService
-keep public class com.android.vending.licensing.ILicensingService

# For native methods, see http://proguard.sourceforge.net/manual/examples.html#native
-keepclasseswithmembernames class * {
    native <methods>;
}

# keep setters in Views so that animations can still work.
# see http://proguard.sourceforge.net/manual/examples.html#beans
-keepclassmembers public class * extends android.view.View {
   void set*(***);
   *** get*();
}

# We want to keep methods in Activity that could be used in the XML attribute onClick
-keepclassmembers class * extends android.app.Activity {
   public void *(android.view.View);
}

# For enumeration classes, see http://proguard.sourceforge.net/manual/examples.html#enumerations
-keepclassmembers enum * {
    public static **[] values();
    public static ** valueOf(java.lang.String);
}

-keep class * implements android.os.Parcelable {
  public static final android.os.Parcelable$Creator *;
}

-keepclassmembers class **.R$* {
    public static <fields>;
}

-keepclassmembers class * {
   public <init>(org.json.JSONObject);
}

-keep public class com.umeng.fb.ui.ThreadView {
}

-keep public class com.duguang.baseanimation.R$*{	*;}

-keep public class com.duguang.baseanimation.R$*{
public static final int *;
}

# 添加第三方jar包


-libraryjars libs/casee-ad-sdk-2.6.jar
-libraryjars libs/httpmime-4.1.3.jar
-libraryjars libs/jpush-sdk-release1.5.6.jar
-libraryjars libs/SocialSDK_QQZone_1.jar
-libraryjars libs/SocialSDK_QQZone_2.jar
-libraryjars libs/SocialSDK_tencentWB_1.jar
-libraryjars libs/SocialSDK_tencentWB_2.jar
-libraryjars libs/SocialSDK_WeiXin.jar
-libraryjars libs/umeng_social_sdk.jar
-libraryjars libs/universal-image-loader-1.8.6-with-sources.jar
-libraryjars libs/android-support-v4.jar
-libraryjars libs/android-support-v7-appcompat.jar

-dontwarn android.support.v4.**
-keep class android.support.v4.** { *; }
-dontwarn com.nineoldandroids.*
-keep class com.nineoldandroids.** { *;}
# 以下类过滤不混淆
-keep public class * extends com.umeng.**
# 以下包不进行过滤
-keep class com.umeng.** { *; }

-keep public class * extends android.app.Activity
-keep public class * extends android.app.Application
-keep public class * extends android.app.Service
-keep public class * extends android.content.BroadcastReceiver
-keep public class * extends android.content.ContentProvider
-keep public class * extends android.app.backup.BackupAgentHelper
-keep public class * extends android.preference.Preference

-dontwarn com.google.android.maps.**
-dontwarn android.webkit.WebView
-dontwarn com.umeng.**
-dontwarn com.tencent.weibo.sdk
-dontwarn com.tencent.**

-keep enum com.facebook.**
-keepattributes Exceptions,InnerClasses,Signature
-keepattributes *Annotation*
-keepattributes SourceFile,LineNumberTable

-keep public interface com.facebook.**
-keep public interface com.tencent.**
-keep public interface com.umeng.socialize.**
-keep public interface com.umeng.socialize.sensor.**
-keep public interface com.umeng.scrshot.**
-keep public interface javax.** { *;}

-keep public class javax.** { *;}
-keep class javax.** { *;}
-keep public class android.webkit.**
-keep class com.tencent.open.TDialog$*
-keep class com.facebook.**
-keep class com.umeng.scrshot.**
-keep public class com.tencent.**
-keep class com.umeng.socialize.sensor.**
-keep class com.tencent.open.TDialog$* {*;}


-keep class com.tencent.open.PKDialog

-keep class com.tencent.open.PKDialog {*;}

-keep class com.tencent.open.PKDialog$*

-keep class com.tencent.open.PKDialog$* {*;}

-keep class com.tencent.mm.sdk.openapi.WXMediaMessage {*;}

-keep class com.tencent.mm.sdk.openapi.** implements com.tencent.mm.sdk.openapi.WXMediaMessage$IMediaObject {*;}

-keep class im.yixin.sdk.api.YXMessage {*;}
-keep class im.yixin.sdk.api.** implements im.yixin.sdk.api.YXMessage$YXMessageData{*;}



# The support library contains references to newer platform versions.
# Don't warn about those in case this app is linking against an older
# platform version.  We know about them, and they are safe.
-dontwarn android.support.**
