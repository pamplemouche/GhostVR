.class public Lcom/oculus/horizon/main/Boolean_com_google_inject_name_Named$x5Foculus$x5Fhorizon$x5Ffeed$x5FdefaultMethodAutoProvider;
.super Lcom/facebook/inject/AbstractProvider;
.source "Boolean_com_google_inject_name_Named$x5Foculus$x5Fhorizon$x5Ffeed$x5FdefaultMethodAutoProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/inject/AbstractProvider",
        "<",
        "Ljava/lang/Boolean;",
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
.method public get()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 16
    const-string v0, "getMethod_java.lang.Boolean"

    invoke-static {v0}, Lcom/facebook/ultralight/instrumentation/systrace/UlTracer;->startTracer(Ljava/lang/String;)V

    .line 19
    :try_start_0
    invoke-static {p0}, Lcom/oculus/config/ConfigController;->$ul_$xXXcom_oculus_config_ConfigController$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/config/ConfigController;

    move-result-object v0

    .line 18
    invoke-static {v0}, Lcom/oculus/horizon/main/MainModule;->provideFeedAsDefaultGk(Lcom/oculus/config/ConfigController;)Ljava/lang/Boolean;
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
    invoke-virtual {p0}, Lcom/oculus/horizon/main/Boolean_com_google_inject_name_Named$x5Foculus$x5Fhorizon$x5Ffeed$x5FdefaultMethodAutoProvider;->get()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
