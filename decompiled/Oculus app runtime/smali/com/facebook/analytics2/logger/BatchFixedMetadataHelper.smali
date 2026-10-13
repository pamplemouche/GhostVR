.class Lcom/facebook/analytics2/logger/BatchFixedMetadataHelper;
.super Ljava/lang/Object;
.source "BatchFixedMetadataHelper.java"


# instance fields
.field private final mAppInfoProvider:Lcom/facebook/analytics2/logger/AppInfoProvider;

.field private final mDeviceIdProvider:Lcom/facebook/analytics2/logger/DeviceIdProvider;

.field private final mFamilyDeviceIdProvider:Lcom/facebook/analytics2/logger/FamilyDeviceIdProvider;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mParamsCollectionPool:Lcom/facebook/crudolib/params/ParamsCollectionPool;


# direct methods
.method public constructor <init>(Lcom/facebook/crudolib/params/ParamsCollectionPool;Lcom/facebook/analytics2/logger/AppInfoProvider;Lcom/facebook/analytics2/logger/DeviceIdProvider;Lcom/facebook/analytics2/logger/FamilyDeviceIdProvider;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/facebook/analytics2/logger/BatchFixedMetadataHelper;->mParamsCollectionPool:Lcom/facebook/crudolib/params/ParamsCollectionPool;

    .line 26
    iput-object p2, p0, Lcom/facebook/analytics2/logger/BatchFixedMetadataHelper;->mAppInfoProvider:Lcom/facebook/analytics2/logger/AppInfoProvider;

    .line 27
    iput-object p3, p0, Lcom/facebook/analytics2/logger/BatchFixedMetadataHelper;->mDeviceIdProvider:Lcom/facebook/analytics2/logger/DeviceIdProvider;

    .line 28
    iput-object p4, p0, Lcom/facebook/analytics2/logger/BatchFixedMetadataHelper;->mFamilyDeviceIdProvider:Lcom/facebook/analytics2/logger/FamilyDeviceIdProvider;

    return-void
.end method


# virtual methods
.method public writeFixedData(Ljava/io/Writer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 32
    iget-object v0, p0, Lcom/facebook/analytics2/logger/BatchFixedMetadataHelper;->mParamsCollectionPool:Lcom/facebook/crudolib/params/ParamsCollectionPool;

    invoke-virtual {v0}, Lcom/facebook/crudolib/params/ParamsCollectionPool;->acquireMap()Lcom/facebook/crudolib/params/ParamsCollectionMap;

    move-result-object v0

    const-string v1, "writeFixedData"

    .line 33
    invoke-static {v1}, Landroid/support/v4/os/TraceCompat;->beginSection(Ljava/lang/String;)V

    :try_start_0
    const-string v1, "time"

    .line 35
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/facebook/crudolib/params/ParamsCollectionMap;->add(Ljava/lang/String;Ljava/lang/Number;)V

    const-string v1, "app_id"

    .line 37
    iget-object v2, p0, Lcom/facebook/analytics2/logger/BatchFixedMetadataHelper;->mAppInfoProvider:Lcom/facebook/analytics2/logger/AppInfoProvider;

    invoke-interface {v2}, Lcom/facebook/analytics2/logger/AppInfoProvider;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/facebook/crudolib/params/ParamsCollectionMap;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "app_ver"

    .line 38
    iget-object v2, p0, Lcom/facebook/analytics2/logger/BatchFixedMetadataHelper;->mAppInfoProvider:Lcom/facebook/analytics2/logger/AppInfoProvider;

    invoke-interface {v2}, Lcom/facebook/analytics2/logger/AppInfoProvider;->getAppVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/facebook/crudolib/params/ParamsCollectionMap;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "build_num"

    .line 39
    iget-object v2, p0, Lcom/facebook/analytics2/logger/BatchFixedMetadataHelper;->mAppInfoProvider:Lcom/facebook/analytics2/logger/AppInfoProvider;

    invoke-interface {v2}, Lcom/facebook/analytics2/logger/AppInfoProvider;->getAppVersionCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/facebook/crudolib/params/ParamsCollectionMap;->add(Ljava/lang/String;Ljava/lang/Number;)V

    const-string v1, "device"

    .line 41
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/facebook/crudolib/params/ParamsCollectionMap;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "os_ver"

    .line 42
    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/facebook/crudolib/params/ParamsCollectionMap;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "device_id"

    .line 44
    iget-object v2, p0, Lcom/facebook/analytics2/logger/BatchFixedMetadataHelper;->mDeviceIdProvider:Lcom/facebook/analytics2/logger/DeviceIdProvider;

    invoke-interface {v2}, Lcom/facebook/analytics2/logger/DeviceIdProvider;->get()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/facebook/crudolib/params/ParamsCollectionMap;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    iget-object v1, p0, Lcom/facebook/analytics2/logger/BatchFixedMetadataHelper;->mFamilyDeviceIdProvider:Lcom/facebook/analytics2/logger/FamilyDeviceIdProvider;

    if-eqz v1, :cond_0

    const-string v1, "family_device_id"

    .line 47
    iget-object v2, p0, Lcom/facebook/analytics2/logger/BatchFixedMetadataHelper;->mFamilyDeviceIdProvider:Lcom/facebook/analytics2/logger/FamilyDeviceIdProvider;

    invoke-interface {v2}, Lcom/facebook/analytics2/logger/FamilyDeviceIdProvider;->get()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/facebook/crudolib/params/ParamsCollectionMap;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    :cond_0
    invoke-static {}, Lcom/facebook/crudolib/params/ParamsJsonEncoder;->getInstance()Lcom/facebook/crudolib/params/ParamsJsonEncoder;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/facebook/crudolib/params/ParamsJsonEncoder;->encodeBody(Ljava/io/Writer;Lcom/facebook/crudolib/params/ParamsCollection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    invoke-virtual {v0}, Lcom/facebook/crudolib/params/ParamsCollectionMap;->release()V

    .line 53
    invoke-static {}, Landroid/support/v4/os/TraceCompat;->endSection()V

    return-void

    :catchall_0
    move-exception p1

    .line 52
    invoke-virtual {v0}, Lcom/facebook/crudolib/params/ParamsCollectionMap;->release()V

    .line 53
    invoke-static {}, Landroid/support/v4/os/TraceCompat;->endSection()V

    throw p1
.end method
