.class public Lcom/facebook/mobileconfig/factory/MobileConfigManagerSingletonHolder;
.super Ljava/lang/Object;
.source "MobileConfigManagerSingletonHolder.java"

# interfaces
.implements Lcom/facebook/mobileconfig/MobileConfigManagerHolder;


# static fields
.field private static final TAG:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field private mMobileConfig:Lcom/facebook/mobileconfig/factory/MobileConfig;

.field private volatile mMobileConfigManagerHolder:Lcom/facebook/mobileconfig/MobileConfigManagerHolder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-class v0, Lcom/facebook/mobileconfig/factory/MobileConfigManagerSingletonHolder;

    sput-object v0, Lcom/facebook/mobileconfig/factory/MobileConfigManagerSingletonHolder;->TAG:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Lcom/facebook/mobileconfig/MobileConfigManagerHolderNoop;

    invoke-direct {v0}, Lcom/facebook/mobileconfig/MobileConfigManagerHolderNoop;-><init>()V

    iput-object v0, p0, Lcom/facebook/mobileconfig/factory/MobileConfigManagerSingletonHolder;->mMobileConfigManagerHolder:Lcom/facebook/mobileconfig/MobileConfigManagerHolder;

    .line 46
    return-void
.end method


# virtual methods
.method public deleteOldUserData(I)V
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/facebook/mobileconfig/factory/MobileConfigManagerSingletonHolder;->mMobileConfigManagerHolder:Lcom/facebook/mobileconfig/MobileConfigManagerHolder;

    invoke-interface {v0, p1}, Lcom/facebook/mobileconfig/MobileConfigManagerHolder;->deleteOldUserData(I)V

    .line 183
    return-void
.end method

.method public declared-synchronized getCurrentInstance()Lcom/facebook/mobileconfig/MobileConfigManagerHolder;
    .locals 1

    .prologue
    .line 112
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/mobileconfig/factory/MobileConfigManagerSingletonHolder;->mMobileConfigManagerHolder:Lcom/facebook/mobileconfig/MobileConfigManagerHolder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getLatestHandle()Lcom/facebook/mobileconfig/MobileConfigMmapHandle;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/facebook/mobileconfig/factory/MobileConfigManagerSingletonHolder;->mMobileConfigManagerHolder:Lcom/facebook/mobileconfig/MobileConfigManagerHolder;

    invoke-interface {v0}, Lcom/facebook/mobileconfig/MobileConfigManagerHolder;->getLatestHandle()Lcom/facebook/mobileconfig/MobileConfigMmapHandle;

    move-result-object v0

    return-object v0
.end method

.method public getNewOverridesTable()Lcom/facebook/mobileconfig/MobileConfigOverridesTable;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/facebook/mobileconfig/factory/MobileConfigManagerSingletonHolder;->mMobileConfigManagerHolder:Lcom/facebook/mobileconfig/MobileConfigManagerHolder;

    invoke-interface {v0}, Lcom/facebook/mobileconfig/MobileConfigManagerHolder;->getNewOverridesTable()Lcom/facebook/mobileconfig/MobileConfigOverridesTable;

    move-result-object v0

    return-object v0
.end method

.method public getNewOverridesTableIfExists()Lcom/facebook/mobileconfig/MobileConfigOverridesTable;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/facebook/mobileconfig/factory/MobileConfigManagerSingletonHolder;->mMobileConfigManagerHolder:Lcom/facebook/mobileconfig/MobileConfigManagerHolder;

    invoke-interface {v0}, Lcom/facebook/mobileconfig/MobileConfigManagerHolder;->getNewOverridesTableIfExists()Lcom/facebook/mobileconfig/MobileConfigOverridesTable;

    move-result-object v0

    return-object v0
.end method

.method public isFetchNeeded()Z
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/facebook/mobileconfig/factory/MobileConfigManagerSingletonHolder;->mMobileConfigManagerHolder:Lcom/facebook/mobileconfig/MobileConfigManagerHolder;

    invoke-interface {v0}, Lcom/facebook/mobileconfig/MobileConfigManagerHolder;->isFetchNeeded()Z

    move-result v0

    return v0
.end method

.method public isTigonServiceSet()Z
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/facebook/mobileconfig/factory/MobileConfigManagerSingletonHolder;->mMobileConfigManagerHolder:Lcom/facebook/mobileconfig/MobileConfigManagerHolder;

    invoke-interface {v0}, Lcom/facebook/mobileconfig/MobileConfigManagerHolder;->isTigonServiceSet()Z

    move-result v0

    return v0
.end method

.method public isValid()Z
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/facebook/mobileconfig/factory/MobileConfigManagerSingletonHolder;->mMobileConfigManagerHolder:Lcom/facebook/mobileconfig/MobileConfigManagerHolder;

    invoke-interface {v0}, Lcom/facebook/mobileconfig/MobileConfigManagerHolder;->isValid()Z

    move-result v0

    return v0
.end method

.method public logExposure(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/facebook/mobileconfig/factory/MobileConfigManagerSingletonHolder;->mMobileConfigManagerHolder:Lcom/facebook/mobileconfig/MobileConfigManagerHolder;

    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/mobileconfig/MobileConfigManagerHolder;->logExposure(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    return-void
.end method

.method public logShadowResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 243
    iget-object v0, p0, Lcom/facebook/mobileconfig/factory/MobileConfigManagerSingletonHolder;->mMobileConfigManagerHolder:Lcom/facebook/mobileconfig/MobileConfigManagerHolder;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/facebook/mobileconfig/MobileConfigManagerHolder;->logShadowResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    return-void
.end method

.method public setEpHandler(Lcom/facebook/mobileconfig/MobileConfigEmergencyPushChangeListener;)Z
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lcom/facebook/mobileconfig/factory/MobileConfigManagerSingletonHolder;->mMobileConfigManagerHolder:Lcom/facebook/mobileconfig/MobileConfigManagerHolder;

    invoke-interface {v0, p1}, Lcom/facebook/mobileconfig/MobileConfigManagerHolder;->setEpHandler(Lcom/facebook/mobileconfig/MobileConfigEmergencyPushChangeListener;)Z

    move-result v0

    return v0
.end method

.method public setManagerHolderInstance(Lcom/facebook/mobileconfig/MobileConfigManagerHolder;Lcom/facebook/mobileconfig/factory/MobileConfig;)V
    .locals 8

    .prologue
    .line 51
    monitor-enter p0

    .line 52
    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/mobileconfig/factory/MobileConfigManagerSingletonHolder;->getCurrentInstance()Lcom/facebook/mobileconfig/MobileConfigManagerHolder;

    move-result-object v1

    .line 53
    iput-object p1, p0, Lcom/facebook/mobileconfig/factory/MobileConfigManagerSingletonHolder;->mMobileConfigManagerHolder:Lcom/facebook/mobileconfig/MobileConfigManagerHolder;

    .line 54
    iput-object p2, p0, Lcom/facebook/mobileconfig/factory/MobileConfigManagerSingletonHolder;->mMobileConfig:Lcom/facebook/mobileconfig/factory/MobileConfig;

    .line 55
    instance-of v0, v1, Lcom/facebook/mobileconfig/factory/MobileConfigJavaManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/mobileconfig/factory/MobileConfigManagerSingletonHolder;->mMobileConfigManagerHolder:Lcom/facebook/mobileconfig/MobileConfigManagerHolder;

    instance-of v0, v0, Lcom/facebook/mobileconfig/MobileConfigManagerHolderImpl;

    if-nez v0, :cond_1

    .line 57
    :cond_0
    sget-object v0, Lcom/facebook/mobileconfig/factory/MobileConfigManagerSingletonHolder;->TAG:Ljava/lang/Class;

    const-string v1, "Updated managerHolder: %s"

    invoke-interface {p1}, Lcom/facebook/mobileconfig/MobileConfigManagerHolder;->isValid()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/facebook/debug/log/BLog;->v(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 58
    monitor-exit p0

    .line 108
    :goto_0
    return-void

    .line 60
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    .line 68
    check-cast v0, Lcom/facebook/mobileconfig/factory/MobileConfigJavaManager;

    .line 70
    invoke-virtual {v0}, Lcom/facebook/mobileconfig/factory/MobileConfigJavaManager;->getCachedSpecifierExposures()Lcom/facebook/common/internal/ImmutableSet;

    move-result-object v2

    .line 71
    const/4 v0, 0x0

    invoke-interface {p2, v0}, Lcom/facebook/mobileconfig/factory/MobileConfig;->contextForConfig(I)Lcom/facebook/mobileconfig/factory/MobileConfigContext;

    move-result-object v0

    .line 72
    if-eqz v2, :cond_2

    instance-of v3, v0, Lcom/facebook/mobileconfig/factory/MobileConfigContextBase;

    if-eqz v3, :cond_2

    .line 73
    check-cast v0, Lcom/facebook/mobileconfig/factory/MobileConfigContextBase;

    .line 74
    invoke-virtual {v2}, Lcom/facebook/common/internal/ImmutableSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 81
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Lcom/facebook/mobileconfig/factory/ExposureType;

    invoke-virtual {v0, v6, v7, v2}, Lcom/facebook/mobileconfig/factory/MobileConfigContextBase;->logExposure(JLcom/facebook/mobileconfig/factory/ExposureType;)V

    goto :goto_1

    .line 60
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_2
    move-object v0, v1

    .line 86
    check-cast v0, Lcom/facebook/mobileconfig/factory/MobileConfigJavaManager;

    .line 87
    invoke-virtual {v0}, Lcom/facebook/mobileconfig/factory/MobileConfigJavaManager;->getCachedExposures()Lcom/facebook/common/internal/ImmutableSet;

    move-result-object v0

    .line 88
    invoke-virtual {v0}, Lcom/facebook/common/internal/ImmutableSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/common/util/Triplet;

    .line 89
    iget-object v2, v0, Lcom/facebook/common/util/Triplet;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v3, v0, Lcom/facebook/common/util/Triplet;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object v0, v0, Lcom/facebook/common/util/Triplet;->third:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-interface {p1, v2, v3, v0}, Lcom/facebook/mobileconfig/MobileConfigManagerHolder;->logExposure(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 93
    :cond_3
    check-cast v1, Lcom/facebook/mobileconfig/factory/MobileConfigJavaManager;

    .line 94
    invoke-virtual {v1}, Lcom/facebook/mobileconfig/factory/MobileConfigJavaManager;->getBufferedShadowResult()Lcom/facebook/common/internal/ImmutableList;

    move-result-object v0

    .line 95
    if-eqz v0, :cond_4

    .line 96
    invoke-virtual {v0}, Lcom/facebook/common/internal/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/mobileconfig/factory/MobileConfigShadowResult;

    .line 97
    iget-object v1, v0, Lcom/facebook/mobileconfig/factory/MobileConfigShadowResult;->configParameter:Ljava/lang/String;

    iget-object v2, v0, Lcom/facebook/mobileconfig/factory/MobileConfigShadowResult;->cachedResult:Ljava/lang/String;

    iget-object v3, v0, Lcom/facebook/mobileconfig/factory/MobileConfigShadowResult;->cachedResultFromFlatbuffer:Ljava/lang/String;

    iget-object v4, v0, Lcom/facebook/mobileconfig/factory/MobileConfigShadowResult;->liveResult:Ljava/lang/String;

    iget-object v5, v0, Lcom/facebook/mobileconfig/factory/MobileConfigShadowResult;->liveResultFromFlatbuffer:Ljava/lang/String;

    iget-object v6, v0, Lcom/facebook/mobileconfig/factory/MobileConfigShadowResult;->debugString:Ljava/lang/String;

    move-object v0, p1

    invoke-interface/range {v0 .. v6}, Lcom/facebook/mobileconfig/MobileConfigManagerHolder;->logShadowResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 107
    :cond_4
    sget-object v0, Lcom/facebook/mobileconfig/factory/MobileConfigManagerSingletonHolder;->TAG:Ljava/lang/Class;

    const-string v1, "Updated managerHolder (java -> cpp): %s"

    invoke-interface {p1}, Lcom/facebook/mobileconfig/MobileConfigManagerHolder;->isValid()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/facebook/debug/log/BLog;->v(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method public setTigonService(Lcom/facebook/tigon/iface/TigonServiceHolder;Z)V
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/facebook/mobileconfig/factory/MobileConfigManagerSingletonHolder;->mMobileConfigManagerHolder:Lcom/facebook/mobileconfig/MobileConfigManagerHolder;

    invoke-interface {v0, p1, p2}, Lcom/facebook/mobileconfig/MobileConfigManagerHolder;->setTigonService(Lcom/facebook/tigon/iface/TigonServiceHolder;Z)V

    .line 203
    return-void
.end method

.method public syncFetchReason()Ljava/lang/String;
    .locals 1

    .prologue
    .line 343
    iget-object v0, p0, Lcom/facebook/mobileconfig/factory/MobileConfigManagerSingletonHolder;->mMobileConfigManagerHolder:Lcom/facebook/mobileconfig/MobileConfigManagerHolder;

    invoke-interface {v0}, Lcom/facebook/mobileconfig/MobileConfigManagerHolder;->syncFetchReason()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public tryUpdateConfigsSynchronously(I)Z
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/facebook/mobileconfig/factory/MobileConfigManagerSingletonHolder;->mMobileConfigManagerHolder:Lcom/facebook/mobileconfig/MobileConfigManagerHolder;

    invoke-interface {v0, p1}, Lcom/facebook/mobileconfig/MobileConfigManagerHolder;->tryUpdateConfigsSynchronously(I)Z

    move-result v0

    return v0
.end method

.method public updateConfigs()Z
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/facebook/mobileconfig/factory/MobileConfigManagerSingletonHolder;->mMobileConfigManagerHolder:Lcom/facebook/mobileconfig/MobileConfigManagerHolder;

    invoke-interface {v0}, Lcom/facebook/mobileconfig/MobileConfigManagerHolder;->updateConfigs()Z

    move-result v0

    return v0
.end method
