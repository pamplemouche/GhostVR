.class public Lcom/oculus/logging/utils/EventMigrationHelperMethodAutoProvider;
.super Lcom/facebook/inject/AbstractProvider;
.source "EventMigrationHelperMethodAutoProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/inject/AbstractProvider",
        "<",
        "Lcom/oculus/logging/utils/EventMigrationHelper;",
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
.method public get()Lcom/oculus/logging/utils/EventMigrationHelper;
    .locals 1

    .prologue
    .line 14
    const-string v0, "getMethod_com.oculus.logging.utils.EventMigrationHelper"

    invoke-static {v0}, Lcom/facebook/ultralight/instrumentation/systrace/UlTracer;->startTracer(Ljava/lang/String;)V

    .line 17
    :try_start_0
    invoke-static {p0}, Lcom/oculus/logging/utils/EventMigrationHelperImpl;->$ul_$xXXcom_oculus_logging_utils_EventMigrationHelperImpl$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/logging/utils/EventMigrationHelperImpl;

    move-result-object v0

    .line 16
    invoke-static {v0}, Lcom/oculus/logging/utils/UtilsModule;->provideEventMigrationHelper(Lcom/oculus/logging/utils/EventMigrationHelperImpl;)Lcom/oculus/logging/utils/EventMigrationHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

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
    invoke-virtual {p0}, Lcom/oculus/logging/utils/EventMigrationHelperMethodAutoProvider;->get()Lcom/oculus/logging/utils/EventMigrationHelper;

    move-result-object v0

    return-object v0
.end method
