.class public Lcom/oculus/horizon/libraryui/SubLibraryAdapterProvider;
.super Lcom/facebook/inject/AbstractAssistedProvider;
.source "SubLibraryAdapterProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/inject/AbstractAssistedProvider",
        "<",
        "Lcom/oculus/horizon/libraryui/SubLibraryAdapter;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/facebook/inject/InjectorLike;)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/facebook/inject/AbstractAssistedProvider;-><init>(Lcom/facebook/inject/InjectorLike;)V

    .line 15
    return-void
.end method


# virtual methods
.method public get(Z)Lcom/oculus/horizon/libraryui/SubLibraryAdapter;
    .locals 2

    .prologue
    .line 18
    const-string v0, "getMethod_com.oculus.horizon.libraryui.SubLibraryAdapter"

    invoke-static {v0}, Lcom/facebook/ultralight/instrumentation/systrace/UlTracer;->startTracer(Ljava/lang/String;)V

    .line 20
    :try_start_0
    new-instance v0, Lcom/oculus/horizon/libraryui/SubLibraryAdapter;

    .line 21
    invoke-static {p0}, Lcom/facebook/common/android/AndroidModule;->$ul_$xXXandroid_view_LayoutInflater$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/oculus/horizon/libraryui/SubLibraryAdapter;-><init>(Lcom/facebook/inject/InjectorLike;Landroid/view/LayoutInflater;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    invoke-static {}, Lcom/facebook/ultralight/instrumentation/systrace/UlTracer;->stopTracer()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/facebook/ultralight/instrumentation/systrace/UlTracer;->stopTracer()V

    throw v0
.end method
