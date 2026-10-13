.class public Lcom/oculus/appmanager/info/schema/ApkUpdateSchemaPartAutoProvider;
.super Lcom/facebook/inject/AbstractProvider;
.source "ApkUpdateSchemaPartAutoProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/inject/AbstractProvider",
        "<",
        "Lcom/oculus/appmanager/info/schema/ApkUpdateSchemaPart;",
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
.method public get()Lcom/oculus/appmanager/info/schema/ApkUpdateSchemaPart;
    .locals 3

    .prologue
    .line 14
    const-string v0, "getMethod_com.oculus.appmanager.info.schema.ApkUpdateSchemaPart"

    invoke-static {v0}, Lcom/facebook/ultralight/instrumentation/systrace/UlTracer;->startTracer(Ljava/lang/String;)V

    .line 16
    :try_start_0
    new-instance v0, Lcom/oculus/appmanager/info/schema/ApkUpdateSchemaPart;

    .line 17
    invoke-static {p0}, Lcom/oculus/appmanager/info/schema/ApkUpdateTable;->$ul_$xXXcom_oculus_appmanager_info_schema_ApkUpdateTable$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/appmanager/info/schema/ApkUpdateTable;

    move-result-object v1

    .line 18
    invoke-static {p0}, Lcom/oculus/appmanager/info/schema/ApkUpdateExtrasTable;->$ul_$xXXcom_oculus_appmanager_info_schema_ApkUpdateExtrasTable$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/appmanager/info/schema/ApkUpdateExtrasTable;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/oculus/appmanager/info/schema/ApkUpdateSchemaPart;-><init>(Lcom/oculus/appmanager/info/schema/ApkUpdateTable;Lcom/oculus/appmanager/info/schema/ApkUpdateExtrasTable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
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
    invoke-virtual {p0}, Lcom/oculus/appmanager/info/schema/ApkUpdateSchemaPartAutoProvider;->get()Lcom/oculus/appmanager/info/schema/ApkUpdateSchemaPart;

    move-result-object v0

    return-object v0
.end method
