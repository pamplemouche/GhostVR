.class public Lcom/oculus/libraryapi/OVRLibraryMethodAutoProvider;
.super Lcom/facebook/inject/AbstractProvider;
.source "OVRLibraryMethodAutoProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/inject/AbstractProvider",
        "<",
        "Lcom/oculus/libraryapi/OVRLibrary;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/facebook/inject/AbstractProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lcom/oculus/libraryapi/OVRLibrary;
    .locals 2

    .prologue
    .line 15
    const-string v1, "getMethod_com.oculus.libraryapi.OVRLibrary"

    invoke-static {v1}, Lcom/facebook/ultralight/instrumentation/systrace/UlTracer;->startTracer(Ljava/lang/String;)V

    .line 18
    :try_start_0
    invoke-static {p0}, Lcom/facebook/inject/BundledAndroidModule;->$ul_$xXXandroid_content_Context$xXXcom_facebook_inject_ForAppContext$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Landroid/content/Context;

    move-result-object v1

    .line 17
    invoke-static {v1}, Lcom/oculus/libraryapi/OVRLibraryModule;->provideOVRLibrary(Landroid/content/Context;)Lcom/oculus/libraryapi/OVRLibrary;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 21
    .local v0, "instance":Lcom/oculus/libraryapi/OVRLibrary;
    invoke-static {}, Lcom/facebook/ultralight/instrumentation/systrace/UlTracer;->stopTracer()V

    return-object v0

    .end local v0    # "instance":Lcom/oculus/libraryapi/OVRLibrary;
    :catchall_0
    move-exception v1

    invoke-static {}, Lcom/facebook/ultralight/instrumentation/systrace/UlTracer;->stopTracer()V

    throw v1
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 12
    invoke-virtual {p0}, Lcom/oculus/libraryapi/OVRLibraryMethodAutoProvider;->get()Lcom/oculus/libraryapi/OVRLibrary;

    move-result-object v0

    return-object v0
.end method
