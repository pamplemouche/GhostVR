.class public Lcom/oculus/horizon/libraryui/LibraryPagerAdapterProvider;
.super Lcom/facebook/inject/AbstractAssistedProvider;
.source "LibraryPagerAdapterProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/inject/AbstractAssistedProvider",
        "<",
        "Lcom/oculus/horizon/libraryui/LibraryPagerAdapter;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/facebook/inject/InjectorLike;)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/facebook/inject/AbstractAssistedProvider;-><init>(Lcom/facebook/inject/InjectorLike;)V

    .line 16
    return-void
.end method


# virtual methods
.method public get(Landroidx/fragment/app/FragmentManager;)Lcom/oculus/horizon/libraryui/LibraryPagerAdapter;
    .locals 2

    .prologue
    .line 19
    const-string v0, "getMethod_com.oculus.horizon.libraryui.LibraryPagerAdapter"

    invoke-static {v0}, Lcom/facebook/ultralight/instrumentation/systrace/UlTracer;->startTracer(Ljava/lang/String;)V

    .line 21
    :try_start_0
    new-instance v0, Lcom/oculus/horizon/libraryui/LibraryPagerAdapter;

    .line 22
    invoke-static {p0}, Lcom/facebook/inject/BundledAndroidModule;->$ul_$xXXandroid_content_Context$xXXcom_facebook_inject_ForAppContext$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/oculus/horizon/libraryui/LibraryPagerAdapter;-><init>(Lcom/facebook/inject/InjectorLike;Landroid/content/Context;Landroidx/fragment/app/FragmentManager;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    invoke-static {}, Lcom/facebook/ultralight/instrumentation/systrace/UlTracer;->stopTracer()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/facebook/ultralight/instrumentation/systrace/UlTracer;->stopTracer()V

    throw v0
.end method
