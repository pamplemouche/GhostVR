.class public Lcom/oculus/crashreporter/JavascriptCrashReporter;
.super Ljava/lang/Object;
.source "JavascriptCrashReporter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/crashreporter/JavascriptCrashReporter$ReactNativeException;
    }
.end annotation


# static fields
.field private static mHandler:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x0

    sput-object v0, Lcom/oculus/crashreporter/JavascriptCrashReporter;->mHandler:Ljava/lang/ref/WeakReference;

    .line 27
    invoke-static {}, Lcom/oculus/crashreporter/JavascriptCrashReporter;->nativeInit()V

    .line 28
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static init(Landroid/os/Handler;)V
    .locals 2
    .param p0, "handler"    # Landroid/os/Handler;

    .prologue
    .line 31
    sget-object v0, Lcom/oculus/crashreporter/JavascriptCrashReporter;->mHandler:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 32
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "JavascriptCrashReporter has been already initialized."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 34
    :cond_0
    invoke-static {}, Lcom/facebook/acra/ACRA;->getConfig()Lcom/facebook/acra/config/AcraReportingConfig;

    move-result-object v0

    if-nez v0, :cond_1

    .line 35
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ACRA hasn\'t been initialized, and is needed by JavascriptCrashReporter to work properly."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 37
    :cond_1
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/oculus/crashreporter/JavascriptCrashReporter;->mHandler:Ljava/lang/ref/WeakReference;

    .line 38
    return-void
.end method

.method private static native nativeInit()V
.end method

.method public static reportJSCrash(Ljava/lang/String;)Z
    .locals 3
    .param p0, "stackTrace"    # Ljava/lang/String;

    .prologue
    .line 53
    sget-object v1, Lcom/oculus/crashreporter/JavascriptCrashReporter;->mHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    .line 54
    .local v0, "handler":Landroid/os/Handler;
    if-nez v0, :cond_0

    .line 55
    const-string v1, "JavascriptCrashReporter"

    const-string v2, "Panel Service hasn\'t initialized JS crash reporter."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    const/4 v1, 0x0

    .line 64
    :goto_0
    return v1

    .line 58
    :cond_0
    new-instance v1, Lcom/oculus/crashreporter/JavascriptCrashReporter$1;

    invoke-direct {v1, p0}, Lcom/oculus/crashreporter/JavascriptCrashReporter$1;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 64
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static shutdown()V
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    sput-object v0, Lcom/oculus/crashreporter/JavascriptCrashReporter;->mHandler:Ljava/lang/ref/WeakReference;

    .line 42
    return-void
.end method
