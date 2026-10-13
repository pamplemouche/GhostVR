.class public Lcom/facebook/analytics2/logger/DumperBridgeForTool;
.super Ljava/lang/Object;
.source "DumperBridgeForTool.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/analytics2/logger/DumperBridgeForTool$FileInfo;,
        Lcom/facebook/analytics2/logger/DumperBridgeForTool$UploadManagerStatus;,
        Lcom/facebook/analytics2/logger/DumperBridgeForTool$Priority;
    }
.end annotation


# instance fields
.field private final mAnalytics2Logger:Lcom/facebook/analytics2/logger/Analytics2Logger;

.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/facebook/analytics2/logger/Analytics2Logger;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/facebook/analytics2/logger/DumperBridgeForTool;->mContext:Landroid/content/Context;

    .line 30
    iput-object p2, p0, Lcom/facebook/analytics2/logger/DumperBridgeForTool;->mAnalytics2Logger:Lcom/facebook/analytics2/logger/Analytics2Logger;

    .line 31
    return-void
.end method

.method private getEventProcessor(I)Lcom/facebook/analytics2/logger/EventProcessor;
    .locals 3
    .param p1    # I
        .annotation build Lcom/facebook/analytics2/logger/DumperBridgeForTool$Priority;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 133
    packed-switch p1, :pswitch_data_0

    .line 139
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "priority="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 135
    :pswitch_0
    iget-object v0, p0, Lcom/facebook/analytics2/logger/DumperBridgeForTool;->mAnalytics2Logger:Lcom/facebook/analytics2/logger/Analytics2Logger;

    iget-object v0, v0, Lcom/facebook/analytics2/logger/Analytics2Logger;->mEventProcessorManager:Lcom/facebook/analytics2/logger/EventProcessorManager;

    invoke-virtual {v0}, Lcom/facebook/analytics2/logger/EventProcessorManager;->getNormalPriEventProcessorOrNull()Lcom/facebook/analytics2/logger/EventProcessor;

    move-result-object v0

    .line 137
    :goto_0
    return-object v0

    :pswitch_1
    iget-object v0, p0, Lcom/facebook/analytics2/logger/DumperBridgeForTool;->mAnalytics2Logger:Lcom/facebook/analytics2/logger/Analytics2Logger;

    iget-object v0, v0, Lcom/facebook/analytics2/logger/Analytics2Logger;->mEventProcessorManager:Lcom/facebook/analytics2/logger/EventProcessorManager;

    invoke-virtual {v0}, Lcom/facebook/analytics2/logger/EventProcessorManager;->getHighPriEventProcessorOrNull()Lcom/facebook/analytics2/logger/EventProcessor;

    move-result-object v0

    goto :goto_0

    .line 133
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getFilesInPriorityDir(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .prologue
    .line 84
    iget-object v0, p0, Lcom/facebook/analytics2/logger/DumperBridgeForTool;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/facebook/analytics2/logger/BatchDirectoryStructure;->getPriorityDir(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 85
    invoke-static {v0}, Lcom/facebook/analytics2/logger/BatchDirectoryStructure;->getMyProcessDir(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    .line 86
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 87
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    array-length v4, v3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v0, v3, v1

    .line 88
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 89
    const-string v5, "\t"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    invoke-direct {p0, v0}, Lcom/facebook/analytics2/logger/DumperBridgeForTool;->walkDirectoryRecursive(Ljava/io/File;)Ljava/util/List;

    move-result-object v0

    .line 91
    invoke-static {}, Lcom/facebook/analytics2/logger/DumperBridgeForTool$FileInfo;->access$100()Ljava/util/Comparator;

    move-result-object v5

    invoke-static {v0, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 92
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/analytics2/logger/DumperBridgeForTool$FileInfo;

    .line 93
    const-string v6, "\t\t"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcom/facebook/analytics2/logger/DumperBridgeForTool$FileInfo;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "\n"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 87
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 97
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPriorityDir(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 1

    .prologue
    .line 43
    invoke-static {p0, p1}, Lcom/facebook/analytics2/logger/BatchDirectoryStructure;->getPriorityDir(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private static getUploadManager(Lcom/facebook/analytics2/logger/EventProcessor;)Lcom/facebook/analytics2/logger/UploadManager;
    .locals 2
    .param p0    # Lcom/facebook/analytics2/logger/EventProcessor;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 145
    if-nez p0, :cond_1

    .line 152
    :cond_0
    :goto_0
    return-object v0

    .line 148
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/analytics2/logger/EventProcessor;->getFileBatchStoreManagerForDebug()Lcom/facebook/analytics2/logger/EventBatchStoreManager;

    move-result-object v1

    .line 149
    if-eqz v1, :cond_0

    .line 152
    invoke-virtual {p0}, Lcom/facebook/analytics2/logger/EventProcessor;->getFileBatchStoreManagerForDebug()Lcom/facebook/analytics2/logger/EventBatchStoreManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/analytics2/logger/EventBatchStoreManager;->getUploadBatchNotifierForDebug()Lcom/facebook/analytics2/logger/UploadBatchNotifier;

    move-result-object v0

    check-cast v0, Lcom/facebook/analytics2/logger/UploadManager;

    goto :goto_0
.end method

.method private uploadNow(Lcom/facebook/analytics2/logger/UploadManager;)Z
    .locals 1
    .param p1    # Lcom/facebook/analytics2/logger/UploadManager;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 157
    if-eqz p1, :cond_0

    .line 158
    invoke-virtual {p1}, Lcom/facebook/analytics2/logger/UploadManager;->sendImmediately()V

    .line 159
    const/4 v0, 0x1

    .line 161
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private walkDirectoryRecursive(Ljava/io/File;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/analytics2/logger/DumperBridgeForTool$FileInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 101
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 102
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, v2, v0

    .line 103
    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 104
    new-instance v5, Lcom/facebook/analytics2/logger/DumperBridgeForTool$FileInfo;

    invoke-direct {v5, v4}, Lcom/facebook/analytics2/logger/DumperBridgeForTool$FileInfo;-><init>(Ljava/io/File;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 106
    :cond_0
    invoke-direct {p0, v4}, Lcom/facebook/analytics2/logger/DumperBridgeForTool;->walkDirectoryRecursive(Ljava/io/File;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 109
    :cond_1
    return-object v1
.end method


# virtual methods
.method public dumpFilesInfoState()Ljava/lang/String;
    .locals 2

    .prologue
    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "normal"

    .line 77
    invoke-direct {p0, v1}, Lcom/facebook/analytics2/logger/DumperBridgeForTool;->getFilesInPriorityDir(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    .line 78
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "high"

    .line 79
    invoke-direct {p0, v1}, Lcom/facebook/analytics2/logger/DumperBridgeForTool;->getFilesInPriorityDir(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 80
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public dumpLockState(Z)Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    invoke-static {p1}, Lcom/facebook/analytics2/logger/BatchLockState;->getInstance(Z)Lcom/facebook/analytics2/logger/BatchLockState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/analytics2/logger/BatchLockState;->toStringForDebug()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentUser()Lcom/facebook/analytics2/logger/PigeonIdentity;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 34
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

    .prologue
    .line 47
    packed-switch p1, :pswitch_data_0

    .line 53
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "priority="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 49
    :pswitch_0
    const-string v0, "normal"

    .line 51
    :goto_0
    return-object v0

    :pswitch_1
    const-string v0, "high"

    goto :goto_0

    .line 47
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getSamplingPolicy()Lcom/facebook/flexiblesampling/SamplingPolicy;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/facebook/analytics2/logger/DumperBridgeForTool;->mAnalytics2Logger:Lcom/facebook/analytics2/logger/Analytics2Logger;

    iget-object v0, v0, Lcom/facebook/analytics2/logger/Analytics2Logger;->mSamplingPolicy:Lcom/facebook/flexiblesampling/SamplingPolicy;

    return-object v0
.end method

.method public getSamplingPolicyConfigInstance()Lcom/facebook/flexiblesampling/SamplingPolicyConfig;
    .locals 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 118
    iget-object v0, p0, Lcom/facebook/analytics2/logger/DumperBridgeForTool;->mAnalytics2Logger:Lcom/facebook/analytics2/logger/Analytics2Logger;

    iget-object v0, v0, Lcom/facebook/analytics2/logger/Analytics2Logger;->mFlexibleSamplingUpdater:Ljava/lang/Class;

    if-nez v0, :cond_0

    .line 119
    const/4 v0, 0x0

    .line 124
    :goto_0
    return-object v0

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/facebook/analytics2/logger/DumperBridgeForTool;->mAnalytics2Logger:Lcom/facebook/analytics2/logger/Analytics2Logger;

    iget-object v0, v0, Lcom/facebook/analytics2/logger/Analytics2Logger;->mFlexibleSamplingUpdater:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 123
    iget-object v1, p0, Lcom/facebook/analytics2/logger/DumperBridgeForTool;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/facebook/analytics2/logger/ContextConstructorHelper;->getInstance(Landroid/content/Context;)Lcom/facebook/analytics2/logger/ContextConstructorHelper;

    move-result-object v1

    .line 124
    invoke-virtual {v1, v0}, Lcom/facebook/analytics2/logger/ContextConstructorHelper;->getProvidedSamplingPolicyConfig(Ljava/lang/String;)Lcom/facebook/flexiblesampling/SamplingPolicyConfig;

    move-result-object v0

    goto :goto_0
.end method

.method public getUploadManagerStatus(I)Lcom/facebook/analytics2/logger/DumperBridgeForTool$UploadManagerStatus;
    .locals 3
    .param p1    # I
        .annotation build Lcom/facebook/analytics2/logger/DumperBridgeForTool$Priority;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 59
    invoke-direct {p0, p1}, Lcom/facebook/analytics2/logger/DumperBridgeForTool;->getEventProcessor(I)Lcom/facebook/analytics2/logger/EventProcessor;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/analytics2/logger/DumperBridgeForTool;->getUploadManager(Lcom/facebook/analytics2/logger/EventProcessor;)Lcom/facebook/analytics2/logger/UploadManager;

    move-result-object v2

    .line 60
    if-eqz v2, :cond_0

    .line 61
    new-instance v0, Lcom/facebook/analytics2/logger/DumperBridgeForTool$UploadManagerStatus;

    invoke-direct {v0, v2, v1}, Lcom/facebook/analytics2/logger/DumperBridgeForTool$UploadManagerStatus;-><init>(Lcom/facebook/analytics2/logger/UploadManager;Lcom/facebook/analytics2/logger/DumperBridgeForTool$1;)V

    .line 63
    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public isAppBackgrounded()Z
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/facebook/analytics2/logger/DumperBridgeForTool;->mAnalytics2Logger:Lcom/facebook/analytics2/logger/Analytics2Logger;

    iget-object v0, v0, Lcom/facebook/analytics2/logger/Analytics2Logger;->mAppBackgroundedProvider:Lcom/facebook/analytics2/logger/AppBackgroundedProvider;

    invoke-interface {v0}, Lcom/facebook/analytics2/logger/AppBackgroundedProvider;->get()Z

    move-result v0

    return v0
.end method

.method public scheduleUploadNow(I)Z
    .locals 1
    .param p1    # I
        .annotation build Lcom/facebook/analytics2/logger/DumperBridgeForTool$Priority;
        .end annotation
    .end param

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/facebook/analytics2/logger/DumperBridgeForTool;->getEventProcessor(I)Lcom/facebook/analytics2/logger/EventProcessor;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/analytics2/logger/DumperBridgeForTool;->getUploadManager(Lcom/facebook/analytics2/logger/EventProcessor;)Lcom/facebook/analytics2/logger/UploadManager;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/analytics2/logger/DumperBridgeForTool;->uploadNow(Lcom/facebook/analytics2/logger/UploadManager;)Z

    move-result v0

    return v0
.end method

.method public startNewSession()V
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/facebook/analytics2/logger/DumperBridgeForTool;->mAnalytics2Logger:Lcom/facebook/analytics2/logger/Analytics2Logger;

    iget-object v0, v0, Lcom/facebook/analytics2/logger/Analytics2Logger;->mSessionManager:Lcom/facebook/analytics2/logger/SessionManager;

    invoke-virtual {v0}, Lcom/facebook/analytics2/logger/SessionManager;->notifyOnForeground()V

    .line 114
    return-void
.end method
