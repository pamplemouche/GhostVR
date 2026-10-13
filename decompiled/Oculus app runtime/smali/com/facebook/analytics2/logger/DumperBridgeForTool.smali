.class public Lcom/facebook/analytics2/logger/DumperBridgeForTool;
.super Ljava/lang/Object;
.source "DumperBridgeForTool.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/analytics2/logger/DumperBridgeForTool$UploadManagerStatus;,
        Lcom/facebook/analytics2/logger/DumperBridgeForTool$Priority;
    }
.end annotation


# static fields
.field public static final PRIORITY_HIGH:I = 0x2

.field public static final PRIORITY_NORMAL:I = 0x1


# instance fields
.field private final mAnalytics2Logger:Lcom/facebook/analytics2/logger/Analytics2Logger;

.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/facebook/analytics2/logger/Analytics2Logger;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/facebook/analytics2/logger/DumperBridgeForTool;->mContext:Landroid/content/Context;

    .line 25
    iput-object p2, p0, Lcom/facebook/analytics2/logger/DumperBridgeForTool;->mAnalytics2Logger:Lcom/facebook/analytics2/logger/Analytics2Logger;

    return-void
.end method

.method private getEventProcessor(I)Lcom/facebook/analytics2/logger/EventProcessor;
    .locals 3
    .param p1    # I
        .annotation build Lcom/facebook/analytics2/logger/DumperBridgeForTool$Priority;
        .end annotation
    .end param
    .annotation build Ljavax/annotation/Nullable;
    .end annotation

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 91
    iget-object p1, p0, Lcom/facebook/analytics2/logger/DumperBridgeForTool;->mAnalytics2Logger:Lcom/facebook/analytics2/logger/Analytics2Logger;

    iget-object p1, p1, Lcom/facebook/analytics2/logger/Analytics2Logger;->mEventProcessorManager:Lcom/facebook/analytics2/logger/EventProcessorManager;

    invoke-virtual {p1}, Lcom/facebook/analytics2/logger/EventProcessorManager;->getHighPriEventProcessorOrNull()Lcom/facebook/analytics2/logger/EventProcessor;

    move-result-object p1

    return-object p1

    .line 93
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "priority="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 89
    :cond_1
    iget-object p1, p0, Lcom/facebook/analytics2/logger/DumperBridgeForTool;->mAnalytics2Logger:Lcom/facebook/analytics2/logger/Analytics2Logger;

    iget-object p1, p1, Lcom/facebook/analytics2/logger/Analytics2Logger;->mEventProcessorManager:Lcom/facebook/analytics2/logger/EventProcessorManager;

    invoke-virtual {p1}, Lcom/facebook/analytics2/logger/EventProcessorManager;->getNormalPriEventProcessorOrNull()Lcom/facebook/analytics2/logger/EventProcessor;

    move-result-object p1

    return-object p1
.end method

.method public static getPriorityDir(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 0

    .line 38
    invoke-static {p0, p1}, Lcom/facebook/analytics2/logger/BatchDirectoryStructure;->getPriorityDir(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method private static getUploadManager(Lcom/facebook/analytics2/logger/EventProcessor;)Lcom/facebook/analytics2/logger/UploadManager;
    .locals 2
    .param p0    # Lcom/facebook/analytics2/logger/EventProcessor;
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Ljavax/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 102
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/analytics2/logger/EventProcessor;->getFileBatchStoreManagerForDebug()Lcom/facebook/analytics2/logger/EventBatchStoreManager;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 106
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/analytics2/logger/EventProcessor;->getFileBatchStoreManagerForDebug()Lcom/facebook/analytics2/logger/EventBatchStoreManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/facebook/analytics2/logger/EventBatchStoreManager;->getUploadBatchNotifierForDebug()Lcom/facebook/analytics2/logger/UploadBatchNotifier;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Lcom/facebook/analytics2/logger/UploadManager;

    :goto_0
    return-object v0
.end method

.method private uploadNow(Lcom/facebook/analytics2/logger/UploadManager;)Z
    .locals 9
    .param p1    # Lcom/facebook/analytics2/logger/UploadManager;
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    .line 112
    iget-object v0, p0, Lcom/facebook/analytics2/logger/DumperBridgeForTool;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/facebook/analytics2/logger/UploadScheduler;->getInstance(Landroid/content/Context;)Lcom/facebook/analytics2/logger/UploadScheduler;

    move-result-object v1

    iget v2, p1, Lcom/facebook/analytics2/logger/UploadManager;->mJobId:I

    const/4 v3, 0x0

    iget-object v4, p1, Lcom/facebook/analytics2/logger/UploadManager;->mUploadJobConfig:Lcom/facebook/analytics2/logger/UploadJobConfig;

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    .line 113
    invoke-virtual/range {v1 .. v8}, Lcom/facebook/analytics2/logger/UploadScheduler;->schedule(ILjava/lang/String;Lcom/facebook/analytics2/logger/UploadJobConfig;JJ)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public dumpLockState(Z)Ljava/lang/String;
    .locals 0

    .line 67
    invoke-static {p1}, Lcom/facebook/analytics2/logger/BatchLockState;->getInstance(Z)Lcom/facebook/analytics2/logger/BatchLockState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/facebook/analytics2/logger/BatchLockState;->toStringForDebug()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getCurrentUser()Lcom/facebook/analytics2/logger/PigeonIdentity;
    .locals 1
    .annotation build Ljavax/annotation/Nullable;
    .end annotation

    .line 29
    iget-object v0, p0, Lcom/facebook/analytics2/logger/DumperBridgeForTool;->mAnalytics2Logger:Lcom/facebook/analytics2/logger/Analytics2Logger;

    iget-object v0, v0, Lcom/facebook/analytics2/logger/Analytics2Logger;->mSessionManager:Lcom/facebook/analytics2/logger/SessionManager;

    invoke-virtual {v0}, Lcom/facebook/analytics2/logger/SessionManager;->getOrBootstrapPigeonIdentity()Lcom/facebook/analytics2/logger/PigeonIdentity;

    move-result-object v0

    return-object v0
.end method

.method public getPriorityDirName(I)Ljava/lang/String;
    .locals 3
    .param p1    # I
        .annotation build Lcom/facebook/analytics2/logger/DumperBridgeForTool$Priority;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const-string p1, "high"

    return-object p1

    .line 48
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "priority="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-string p1, "normal"

    return-object p1
.end method

.method public getSamplingPolicyConfigInstance()Lcom/facebook/flexiblesampling/SamplingPolicyConfig;
    .locals 2
    .annotation build Ljavax/annotation/Nullable;
    .end annotation

    .line 76
    iget-object v0, p0, Lcom/facebook/analytics2/logger/DumperBridgeForTool;->mAnalytics2Logger:Lcom/facebook/analytics2/logger/Analytics2Logger;

    iget-object v0, v0, Lcom/facebook/analytics2/logger/Analytics2Logger;->mFlexibleSamplingUpdater:Ljava/lang/Class;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/facebook/analytics2/logger/DumperBridgeForTool;->mAnalytics2Logger:Lcom/facebook/analytics2/logger/Analytics2Logger;

    iget-object v0, v0, Lcom/facebook/analytics2/logger/Analytics2Logger;->mFlexibleSamplingUpdater:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 81
    iget-object v1, p0, Lcom/facebook/analytics2/logger/DumperBridgeForTool;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/facebook/analytics2/logger/ContextConstructorHelper;->getInstance(Landroid/content/Context;)Lcom/facebook/analytics2/logger/ContextConstructorHelper;

    move-result-object v1

    .line 82
    invoke-virtual {v1, v0}, Lcom/facebook/analytics2/logger/ContextConstructorHelper;->getProvidedSamplingPolicyConfig(Ljava/lang/String;)Lcom/facebook/flexiblesampling/SamplingPolicyConfig;

    move-result-object v0

    return-object v0
.end method

.method public getUploadManagerStatus(I)Lcom/facebook/analytics2/logger/DumperBridgeForTool$UploadManagerStatus;
    .locals 2
    .param p1    # I
        .annotation build Lcom/facebook/analytics2/logger/DumperBridgeForTool$Priority;
        .end annotation
    .end param
    .annotation build Ljavax/annotation/Nullable;
    .end annotation

    .line 54
    invoke-direct {p0, p1}, Lcom/facebook/analytics2/logger/DumperBridgeForTool;->getEventProcessor(I)Lcom/facebook/analytics2/logger/EventProcessor;

    move-result-object p1

    invoke-static {p1}, Lcom/facebook/analytics2/logger/DumperBridgeForTool;->getUploadManager(Lcom/facebook/analytics2/logger/EventProcessor;)Lcom/facebook/analytics2/logger/UploadManager;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 56
    new-instance v1, Lcom/facebook/analytics2/logger/DumperBridgeForTool$UploadManagerStatus;

    invoke-direct {v1, p1, v0}, Lcom/facebook/analytics2/logger/DumperBridgeForTool$UploadManagerStatus;-><init>(Lcom/facebook/analytics2/logger/UploadManager;Lcom/facebook/analytics2/logger/DumperBridgeForTool$1;)V

    return-object v1

    :cond_0
    return-object v0
.end method

.method public isAppBackgrounded()Z
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/facebook/analytics2/logger/DumperBridgeForTool;->mAnalytics2Logger:Lcom/facebook/analytics2/logger/Analytics2Logger;

    iget-object v0, v0, Lcom/facebook/analytics2/logger/Analytics2Logger;->mAppBackgroundedProvider:Lcom/facebook/analytics2/logger/AppBackgroundedProvider;

    invoke-interface {v0}, Lcom/facebook/analytics2/logger/AppBackgroundedProvider;->get()Z

    move-result v0

    return v0
.end method

.method public scheduleUploadNow(I)Z
    .locals 0
    .param p1    # I
        .annotation build Lcom/facebook/analytics2/logger/DumperBridgeForTool$Priority;
        .end annotation
    .end param

    .line 63
    invoke-direct {p0, p1}, Lcom/facebook/analytics2/logger/DumperBridgeForTool;->getEventProcessor(I)Lcom/facebook/analytics2/logger/EventProcessor;

    move-result-object p1

    invoke-static {p1}, Lcom/facebook/analytics2/logger/DumperBridgeForTool;->getUploadManager(Lcom/facebook/analytics2/logger/EventProcessor;)Lcom/facebook/analytics2/logger/UploadManager;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/facebook/analytics2/logger/DumperBridgeForTool;->uploadNow(Lcom/facebook/analytics2/logger/UploadManager;)Z

    move-result p1

    return p1
.end method

.method public startNewSession()V
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/facebook/analytics2/logger/DumperBridgeForTool;->mAnalytics2Logger:Lcom/facebook/analytics2/logger/Analytics2Logger;

    iget-object v0, v0, Lcom/facebook/analytics2/logger/Analytics2Logger;->mSessionManager:Lcom/facebook/analytics2/logger/SessionManager;

    invoke-virtual {v0}, Lcom/facebook/analytics2/logger/SessionManager;->notifyOnForeground()V

    return-void
.end method
