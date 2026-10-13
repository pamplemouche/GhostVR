.class public Lcom/oculus/autoupdates/database/AutoUpdatesDBManagerAutoProvider;
.super Lcom/facebook/inject/AbstractProvider;
.source "AutoUpdatesDBManagerAutoProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/inject/AbstractProvider",
        "<",
        "Lcom/oculus/autoupdates/database/AutoUpdatesDBManager;",
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
.method public get()Lcom/oculus/autoupdates/database/AutoUpdatesDBManager;
    .locals 3

    .prologue
    .line 15
    const-string v0, "getMethod_com.oculus.autoupdates.database.AutoUpdatesDBManager"

    invoke-static {v0}, Lcom/facebook/ultralight/instrumentation/systrace/UlTracer;->startTracer(Ljava/lang/String;)V

    .line 17
    :try_start_0
    new-instance v0, Lcom/oculus/autoupdates/database/AutoUpdatesDBManager;

    .line 18
    invoke-static {p0}, Lcom/oculus/autoupdates/AutoUpdatesModule;->$ul_$xXXcom_oculus_autoupdates_database_AutoUpdatesDBHelper$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/autoupdates/database/AutoUpdatesDBHelper;

    move-result-object v1

    .line 19
    invoke-static {p0}, Lcom/oculus/autoupdates/AutoUpdatesModule;->$ul_$xXXcom_google_common_util_concurrent_ListeningExecutorService$xXXcom_oculus_autoupdates_AutoUpdateExecutor$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/google/common/util/concurrent/ListeningExecutorService;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/oculus/autoupdates/database/AutoUpdatesDBManager;-><init>(Lcom/oculus/autoupdates/database/AutoUpdatesDBHelper;Lcom/google/common/util/concurrent/ListeningExecutorService;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

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
    .line 12
    invoke-virtual {p0}, Lcom/oculus/autoupdates/database/AutoUpdatesDBManagerAutoProvider;->get()Lcom/oculus/autoupdates/database/AutoUpdatesDBManager;

    move-result-object v0

    return-object v0
.end method
