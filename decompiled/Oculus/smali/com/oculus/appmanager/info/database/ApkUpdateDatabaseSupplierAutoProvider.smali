.class public Lcom/oculus/appmanager/info/database/ApkUpdateDatabaseSupplierAutoProvider;
.super Lcom/facebook/inject/AbstractProvider;
.source "ApkUpdateDatabaseSupplierAutoProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/inject/AbstractProvider",
        "<",
        "Lcom/oculus/appmanager/info/database/ApkUpdateDatabaseSupplier;",
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
.method public get()Lcom/oculus/appmanager/info/database/ApkUpdateDatabaseSupplier;
    .locals 4

    .prologue
    .line 17
    const-string v0, "getMethod_com.oculus.appmanager.info.database.ApkUpdateDatabaseSupplier"

    invoke-static {v0}, Lcom/facebook/ultralight/instrumentation/systrace/UlTracer;->startTracer(Ljava/lang/String;)V

    .line 19
    :try_start_0
    new-instance v0, Lcom/oculus/appmanager/info/database/ApkUpdateDatabaseSupplier;

    .line 20
    invoke-static {p0}, Lcom/facebook/inject/BundledAndroidModule;->$ul_$xXXandroid_content_Context$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Landroid/content/Context;

    move-result-object v1

    .line 21
    invoke-static {p0}, Lcom/oculus/errorreporting/ErrorReportingModule;->$ul_$xXXcom_oculus_errorreporting_ErrorReporter$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/errorreporting/ErrorReporter;

    move-result-object v2

    .line 22
    invoke-static {p0}, Lcom/oculus/appmanager/info/schema/ApkUpdateSchemaPart;->$ul_$xXXcom_oculus_appmanager_info_schema_ApkUpdateSchemaPart$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/appmanager/info/schema/ApkUpdateSchemaPart;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/oculus/appmanager/info/database/ApkUpdateDatabaseSupplier;-><init>(Landroid/content/Context;Lcom/oculus/errorreporting/ErrorReporter;Lcom/oculus/appmanager/info/schema/ApkUpdateSchemaPart;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
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
    invoke-virtual {p0}, Lcom/oculus/appmanager/info/database/ApkUpdateDatabaseSupplierAutoProvider;->get()Lcom/oculus/appmanager/info/database/ApkUpdateDatabaseSupplier;

    move-result-object v0

    return-object v0
.end method
