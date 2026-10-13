.class public abstract Lcom/oculus/systemutilities/CrashReporting;
.super Ljava/lang/Object;
.source "CrashReporting.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static mJSInitialized:Z

.field private static mNativeJavaInitialized:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 24
    const-class v0, Lcom/oculus/systemutilities/CrashReporting;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/systemutilities/CrashReporting;->TAG:Ljava/lang/String;

    .line 26
    sput-boolean v1, Lcom/oculus/systemutilities/CrashReporting;->mNativeJavaInitialized:Z

    .line 27
    sput-boolean v1, Lcom/oculus/systemutilities/CrashReporting;->mJSInitialized:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static initialize(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "handlerOrNullIfNoJSReporting"    # Landroid/os/Handler;

    .prologue
    const/4 v1, 0x1

    .line 35
    sget-boolean v0, Lcom/oculus/systemutilities/CrashReporting;->mNativeJavaInitialized:Z

    if-nez v0, :cond_0

    .line 36
    sput-boolean v1, Lcom/oculus/systemutilities/CrashReporting;->mNativeJavaInitialized:Z

    .line 37
    invoke-static {p0}, Lcom/oculus/systemutilities/CrashReporting;->initializeNativeCrashReporting(Landroid/content/Context;)V

    .line 38
    invoke-static {p0}, Lcom/oculus/systemutilities/CrashReporting;->initializeJavaCrashReporting(Landroid/content/Context;)V

    .line 40
    :cond_0
    sget-boolean v0, Lcom/oculus/systemutilities/CrashReporting;->mJSInitialized:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    .line 41
    sput-boolean v1, Lcom/oculus/systemutilities/CrashReporting;->mJSInitialized:Z

    .line 42
    invoke-static {p1}, Lcom/oculus/systemutilities/CrashReporting;->initializeJSCrashReporting(Landroid/os/Handler;)V

    .line 44
    :cond_1
    return-void
.end method

.method public static initializeJSCrashReporting(Landroid/os/Handler;)V
    .locals 2
    .param p0, "handler"    # Landroid/os/Handler;

    .prologue
    .line 116
    sget-object v0, Lcom/oculus/systemutilities/CrashReporting;->TAG:Ljava/lang/String;

    const-string v1, "JavascriptCrashReporter is enabled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    invoke-static {p0}, Lcom/oculus/crashreporter/JavascriptCrashReporter;->init(Landroid/os/Handler;)V

    .line 122
    return-void
.end method

.method public static initializeJavaCrashReporting(Landroid/content/Context;)V
    .locals 13
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 62
    sget-object v0, Lcom/oculus/systemutilities/CrashReporting;->TAG:Ljava/lang/String;

    const-string v1, "ACRA/OculusCrashReporter for Java crashes enabled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    const-string v0, "1817688451682869"

    invoke-static {v0}, Lcom/oculus/errorreporting/ErrorReporter;->getDefaultEndpoint(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 66
    .local v3, "endpoint":Ljava/lang/String;
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    .line 68
    invoke-virtual {p0, v0}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    .line 70
    :cond_0
    new-instance v10, Ljava/io/File;

    const-string v0, "/sdcard/crash_endpoint.test"

    invoke-direct {v10, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 72
    .local v10, "file":Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 73
    const/16 v0, 0x100

    new-array v7, v0, [B

    .line 76
    .local v7, "buffer":[B
    :try_start_0
    new-instance v11, Ljava/io/FileInputStream;

    invoke-direct {v11, v10}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 77
    .local v11, "fis":Ljava/io/FileInputStream;
    invoke-virtual {v11, v7}, Ljava/io/FileInputStream;->read([B)I

    move-result v12

    .line 78
    .local v12, "length":I
    new-instance v9, Ljava/lang/String;

    const/4 v0, 0x0

    invoke-direct {v9, v7, v0, v12}, Ljava/lang/String;-><init>([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v3    # "endpoint":Ljava/lang/String;
    .local v9, "endpoint":Ljava/lang/String;
    move-object v3, v9

    .line 85
    .end local v7    # "buffer":[B
    .end local v9    # "endpoint":Ljava/lang/String;
    .end local v10    # "file":Ljava/io/File;
    .end local v11    # "fis":Ljava/io/FileInputStream;
    .end local v12    # "length":I
    .restart local v3    # "endpoint":Ljava/lang/String;
    :cond_1
    :goto_0
    sget-object v0, Lcom/oculus/systemutilities/CrashReporting;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ACRA/Initializing with endpoint "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 89
    .local v6, "customData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "core_app_versions"

    invoke-static {}, Lcom/oculus/logging/legacy/OculusLogger;->getCoreAppVersionJson()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    const-string v0, "device_id"

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "1817688451682869"

    const-string v2, "SystemUtilities"

    const/4 v4, 0x0

    new-instance v5, Lcom/oculus/systemutilities/CrashReporting$1;

    invoke-direct {v5}, Lcom/oculus/systemutilities/CrashReporting$1;-><init>()V

    .line 92
    invoke-static/range {v0 .. v6}, Lcom/oculus/errorreporting/ErrorReporter;->initCrashReporting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljavax/inject/Provider;Ljava/util/Map;)V

    .line 111
    return-void

    .line 79
    .end local v6    # "customData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v7    # "buffer":[B
    .restart local v10    # "file":Ljava/io/File;
    :catch_0
    move-exception v8

    .line 80
    .local v8, "e":Ljava/io/IOException;
    sget-object v0, Lcom/oculus/systemutilities/CrashReporting;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ACRA/Failed to read from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static initializeNativeCrashReporting(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 49
    sget-object v0, Lcom/oculus/systemutilities/CrashReporting;->TAG:Ljava/lang/String;

    const-string v1, "Breakpad for Native crashes enabled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    invoke-static {}, Lcom/facebook/breakpad/BreakpadManager;->isActive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 51
    invoke-static {p0}, Lcom/facebook/breakpad/BreakpadManager;->start(Landroid/content/Context;)V

    .line 57
    :cond_0
    return-void
.end method
