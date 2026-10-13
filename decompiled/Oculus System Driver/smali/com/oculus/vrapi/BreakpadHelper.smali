.class Lcom/oculus/vrapi/BreakpadHelper;
.super Ljava/lang/Object;
.source "BreakpadHelper.java"


# static fields
.field private static final BREAKPAD_DIRECTORY:Ljava/lang/String; = "minidumps"

.field public static final TAG:Ljava/lang/String; = "BreakpadHelper"

.field public static final VRDRIVER_APP_ID:Ljava/lang/String; = "520345558148882"

.field public static final VRDRIVER_APP_NAME:Ljava/lang/String; = "VrDriver"

.field private static mCrashDirectory:Ljava/io/File;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static initializeCrashReporting(Landroid/content/Context;)V
    .locals 2

    const-string v0, "BreakpadHelper"

    const-string v1, "ACRA/OculusCrashReporter enabled"

    .line 49
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    new-instance v0, Lcom/oculus/crashreporter/OculusCrashReporter;

    .line 51
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Landroid/app/Application;

    invoke-direct {v0, p0}, Lcom/oculus/crashreporter/OculusCrashReporter;-><init>(Landroid/app/Application;)V

    const-string p0, "520345558148882"

    .line 52
    invoke-static {p0}, Lcom/oculus/crashreporter/OculusCrashReporter;->getErrorUploadURI(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    .line 50
    invoke-static {v0, p0, v1}, Lcom/facebook/acra/ACRA;->init(Lcom/facebook/acra/reporter/ReportsCrashes;Ljava/lang/String;Z)Lcom/facebook/acra/ErrorReporter;

    move-result-object p0

    const-string v0, "app"

    const-string v1, "VrDriver"

    .line 54
    invoke-virtual {p0, v0, v1}, Lcom/facebook/acra/ErrorReporter;->putCustomData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "fb_app_id"

    const-string v1, "520345558148882"

    .line 55
    invoke-virtual {p0, v0, v1}, Lcom/facebook/acra/ErrorReporter;->putCustomData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public static onInit(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 30
    invoke-static {p0}, Lcom/oculus/vrapi/BreakpadHelper;->initializeCrashReporting(Landroid/content/Context;)V

    .line 32
    sget-object v0, Lcom/oculus/vrapi/BreakpadHelper;->mCrashDirectory:Ljava/io/File;

    if-nez v0, :cond_1

    const-string v0, "minidumps"

    const/4 v1, 0x0

    .line 34
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p0

    if-nez p0, :cond_0

    const-string v0, "BreakpadHelper"

    const-string v1, "Breakpad init failed to create minidump directory: minidumps"

    .line 37
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    :cond_0
    sput-object p0, Lcom/oculus/vrapi/BreakpadHelper;->mCrashDirectory:Ljava/io/File;

    .line 43
    :cond_1
    sget-object p0, Lcom/oculus/vrapi/BreakpadHelper;->mCrashDirectory:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
