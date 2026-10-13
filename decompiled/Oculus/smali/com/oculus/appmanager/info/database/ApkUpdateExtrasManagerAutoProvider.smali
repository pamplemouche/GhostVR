.class public Lcom/oculus/appmanager/info/database/ApkUpdateExtrasManagerAutoProvider;
.super Lcom/facebook/inject/AbstractProvider;
.source "ApkUpdateExtrasManagerAutoProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/inject/AbstractProvider",
        "<",
        "Lcom/oculus/appmanager/info/database/ApkUpdateExtrasManager;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/facebook/inject/AbstractProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lcom/oculus/appmanager/info/database/ApkUpdateExtrasManager;
    .locals 2

    .prologue
    .line 14
    const-string v0, "getMethod_com.oculus.appmanager.info.database.ApkUpdateExtrasManager"

    invoke-static {v0}, Lcom/facebook/ultralight/instrumentation/systrace/UlTracer;->startTracer(Ljava/lang/String;)V

    .line 16
    :try_start_0
    new-instance v0, Lcom/oculus/appmanager/info/database/ApkUpdateExtrasManager;

    .line 17
    invoke-static {p0}, Lcom/oculus/appmanager/info/database/ApkUpdateDatabaseSupplier;->$ul_$xXXcom_oculus_appmanager_info_database_ApkUpdateDatabaseSupplier$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/appmanager/info/database/ApkUpdateDatabaseSupplier;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/oculus/appmanager/info/database/ApkUpdateExtrasManager;-><init>(Lcom/oculus/appmanager/info/database/ApkUpdateDatabaseSupplier;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
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
    .line 11
    invoke-virtual {p0}, Lcom/oculus/appmanager/info/database/ApkUpdateExtrasManagerAutoProvider;->get()Lcom/oculus/appmanager/info/database/ApkUpdateExtrasManager;

    move-result-object v0

    return-object v0
.end method
