.class public Lcom/oculus/stetho/InitializerMethodAutoProvider;
.super Lcom/facebook/inject/AbstractProvider;
.source "InitializerMethodAutoProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/inject/AbstractProvider",
        "<",
        "Lcom/facebook/stetho/Stetho$Initializer;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/facebook/inject/AbstractProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lcom/facebook/stetho/Stetho$Initializer;
    .locals 2

    .prologue
    .line 17
    const-string v0, "getMethod_com.facebook.stetho.Stetho.Initializer"

    invoke-static {v0}, Lcom/facebook/ultralight/instrumentation/systrace/UlTracer;->startTracer(Ljava/lang/String;)V

    .line 20
    :try_start_0
    invoke-static {p0}, Lcom/facebook/inject/BundledAndroidModule;->$ul_$xXXandroid_content_Context$xXXcom_facebook_inject_ForAppContext$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Landroid/content/Context;

    move-result-object v0

    .line 21
    invoke-static {p0}, Lcom/facebook/fab/dumper/base/DumperBaseModule;->$ul_$xXXjava_util_Set$x3Ccom_facebook_stetho_dumpapp_DumperPlugin$x3E$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Ljava/util/Set;

    move-result-object v1

    .line 19
    invoke-static {v0, v1}, Lcom/oculus/stetho/StethoModule;->provideStethoInitializer(Landroid/content/Context;Ljava/util/Set;)Lcom/facebook/stetho/Stetho$Initializer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 24
    invoke-static {}, Lcom/facebook/ultralight/instrumentation/systrace/UlTracer;->stopTracer()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/facebook/ultralight/instrumentation/systrace/UlTracer;->stopTracer()V

    throw v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 14
    invoke-virtual {p0}, Lcom/oculus/stetho/InitializerMethodAutoProvider;->get()Lcom/facebook/stetho/Stetho$Initializer;

    move-result-object v0

    return-object v0
.end method
