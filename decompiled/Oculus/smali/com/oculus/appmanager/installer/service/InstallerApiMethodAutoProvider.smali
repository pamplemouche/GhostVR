.class public Lcom/oculus/appmanager/installer/service/InstallerApiMethodAutoProvider;
.super Lcom/facebook/inject/AbstractProvider;
.source "InstallerApiMethodAutoProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/inject/AbstractProvider",
        "<",
        "Lcom/facebook/oxygen/appmanager/installer/proxy/InstallerApi;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/facebook/inject/AbstractProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lcom/facebook/oxygen/appmanager/installer/proxy/InstallerApi;
    .locals 1

    .prologue
    .line 16
    const-string v0, "getMethod_com.facebook.oxygen.appmanager.installer.proxy.InstallerApi"

    invoke-static {v0}, Lcom/facebook/ultralight/instrumentation/systrace/UlTracer;->startTracer(Ljava/lang/String;)V

    .line 19
    :try_start_0
    invoke-static {p0}, Lcom/facebook/inject/BundledAndroidModule;->$ul_$xXXandroid_content_Context$xXXcom_facebook_inject_ForAppContext$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Landroid/content/Context;

    move-result-object v0

    .line 18
    invoke-static {v0}, Lcom/oculus/appmanager/installer/service/InstallerServiceModule;->provideInstallerApi(Landroid/content/Context;)Lcom/facebook/oxygen/appmanager/installer/proxy/InstallerApi;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 22
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
    .line 13
    invoke-virtual {p0}, Lcom/oculus/appmanager/installer/service/InstallerApiMethodAutoProvider;->get()Lcom/facebook/oxygen/appmanager/installer/proxy/InstallerApi;

    move-result-object v0

    return-object v0
.end method
