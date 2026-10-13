.class public Lcom/facebook/analytics2/logger/UploadJobConfig;
.super Ljava/lang/Object;
.source "UploadJobConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/analytics2/logger/UploadJobConfig$BundlePrimitiveMapper;,
        Lcom/facebook/analytics2/logger/UploadJobConfig$PrimitiveMapWriter;,
        Lcom/facebook/analytics2/logger/UploadJobConfig$PrimitiveMapReader;
    }
.end annotation


# instance fields
.field private final mMarauderTier:Ljava/lang/String;

.field private final mNetworkPriority:Lcom/facebook/analytics2/logger/UploadJob$Priority;

.field private final mPriorityDir:Ljava/io/File;

.field private final mPrivacyPolicyClass:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mSamplingPolicyUpdaterClass:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mThreadHandlerFactoryClass:Ljava/lang/String;

.field private final mUploadJobInstrumentationClass:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mUploaderClass:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/analytics2/logger/IllegalRemoteArgumentException;
        }
    .end annotation

    .prologue
    .line 61
    new-instance v0, Lcom/facebook/analytics2/logger/UploadJobConfig$BundlePrimitiveMapper;

    invoke-direct {v0, p1}, Lcom/facebook/analytics2/logger/UploadJobConfig$BundlePrimitiveMapper;-><init>(Landroid/os/Bundle;)V

    invoke-direct {p0, v0}, Lcom/facebook/analytics2/logger/UploadJobConfig;-><init>(Lcom/facebook/analytics2/logger/UploadJobConfig$PrimitiveMapReader;)V

    .line 62
    return-void
.end method

.method public constructor <init>(Lcom/facebook/analytics2/logger/UploadJobConfig$PrimitiveMapReader;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/analytics2/logger/IllegalRemoteArgumentException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const-string/jumbo v0, "uploader_class"

    invoke-interface {p1, v0, v8}, Lcom/facebook/analytics2/logger/UploadJobConfig$PrimitiveMapReader;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 66
    if-nez v0, :cond_0

    .line 67
    new-instance v0, Lcom/facebook/analytics2/logger/IllegalRemoteArgumentException;

    const-string/jumbo v1, "uploader_class is null or empty"

    invoke-direct {v0, v1}, Lcom/facebook/analytics2/logger/IllegalRemoteArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :cond_0
    const-string v1, "flexible_sampling_updater"

    .line 70
    invoke-interface {p1, v1, v8}, Lcom/facebook/analytics2/logger/UploadJobConfig$PrimitiveMapReader;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 71
    const-string v2, "privacy_policy"

    invoke-interface {p1, v2, v8}, Lcom/facebook/analytics2/logger/UploadJobConfig$PrimitiveMapReader;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 72
    const-string/jumbo v3, "thread_handler_factory"

    .line 73
    invoke-interface {p1, v3, v8}, Lcom/facebook/analytics2/logger/UploadJobConfig$PrimitiveMapReader;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 74
    const-string/jumbo v4, "upload_job_instrumentation"

    .line 75
    invoke-interface {p1, v4, v8}, Lcom/facebook/analytics2/logger/UploadJobConfig$PrimitiveMapReader;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 76
    const-string v5, "priority_dir"

    invoke-interface {p1, v5, v8}, Lcom/facebook/analytics2/logger/UploadJobConfig$PrimitiveMapReader;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 77
    if-nez v5, :cond_1

    .line 78
    new-instance v0, Lcom/facebook/analytics2/logger/IllegalRemoteArgumentException;

    const-string v1, "priority_dir is null or empty"

    invoke-direct {v0, v1}, Lcom/facebook/analytics2/logger/IllegalRemoteArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 80
    :cond_1
    const-string v6, "network_priority"

    sget-object v7, Lcom/facebook/analytics2/logger/UploadJob$Priority;->NORMAL:Lcom/facebook/analytics2/logger/UploadJob$Priority;

    invoke-virtual {v7}, Lcom/facebook/analytics2/logger/UploadJob$Priority;->ordinal()I

    move-result v7

    invoke-interface {p1, v6, v7}, Lcom/facebook/analytics2/logger/UploadJobConfig$PrimitiveMapReader;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 81
    const-string v7, "marauder_tier"

    invoke-interface {p1, v7, v8}, Lcom/facebook/analytics2/logger/UploadJobConfig$PrimitiveMapReader;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 82
    if-nez v7, :cond_2

    .line 83
    new-instance v0, Lcom/facebook/analytics2/logger/IllegalRemoteArgumentException;

    const-string v1, "marauder_tier is null or empty"

    invoke-direct {v0, v1}, Lcom/facebook/analytics2/logger/IllegalRemoteArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 86
    :cond_2
    iput-object v0, p0, Lcom/facebook/analytics2/logger/UploadJobConfig;->mUploaderClass:Ljava/lang/String;

    .line 87
    iput-object v1, p0, Lcom/facebook/analytics2/logger/UploadJobConfig;->mSamplingPolicyUpdaterClass:Ljava/lang/String;

    .line 88
    iput-object v2, p0, Lcom/facebook/analytics2/logger/UploadJobConfig;->mPrivacyPolicyClass:Ljava/lang/String;

    .line 89
    iput-object v3, p0, Lcom/facebook/analytics2/logger/UploadJobConfig;->mThreadHandlerFactoryClass:Ljava/lang/String;

    .line 90
    iput-object v4, p0, Lcom/facebook/analytics2/logger/UploadJobConfig;->mUploadJobInstrumentationClass:Ljava/lang/String;

    .line 91
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/facebook/analytics2/logger/UploadJobConfig;->mPriorityDir:Ljava/io/File;

    .line 92
    invoke-static {}, Lcom/facebook/analytics2/logger/UploadJob$Priority;->values()[Lcom/facebook/analytics2/logger/UploadJob$Priority;

    move-result-object v0

    aget-object v0, v0, v6

    iput-object v0, p0, Lcom/facebook/analytics2/logger/UploadJobConfig;->mNetworkPriority:Lcom/facebook/analytics2/logger/UploadJob$Priority;

    .line 93
    iput-object v7, p0, Lcom/facebook/analytics2/logger/UploadJobConfig;->mMarauderTier:Ljava/lang/String;

    .line 94
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lcom/facebook/analytics2/logger/CommonUploadSchedulerParams;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iget-object v0, p2, Lcom/facebook/analytics2/logger/CommonUploadSchedulerParams;->uploader:Ljava/lang/Class;

    if-nez v0, :cond_0

    .line 37
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "uploader required"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 39
    :cond_0
    iget-object v0, p2, Lcom/facebook/analytics2/logger/CommonUploadSchedulerParams;->uploader:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/analytics2/logger/UploadJobConfig;->mUploaderClass:Ljava/lang/String;

    .line 40
    iget-object v0, p2, Lcom/facebook/analytics2/logger/CommonUploadSchedulerParams;->samplingPolicyConfig:Ljava/lang/Class;

    if-eqz v0, :cond_2

    iget-object v0, p2, Lcom/facebook/analytics2/logger/CommonUploadSchedulerParams;->samplingPolicyConfig:Ljava/lang/Class;

    .line 41
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/facebook/analytics2/logger/UploadJobConfig;->mSamplingPolicyUpdaterClass:Ljava/lang/String;

    .line 42
    iget-object v0, p2, Lcom/facebook/analytics2/logger/CommonUploadSchedulerParams;->privacyPolicy:Ljava/lang/Class;

    if-eqz v0, :cond_3

    iget-object v0, p2, Lcom/facebook/analytics2/logger/CommonUploadSchedulerParams;->privacyPolicy:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lcom/facebook/analytics2/logger/UploadJobConfig;->mPrivacyPolicyClass:Ljava/lang/String;

    .line 43
    iget-object v0, p2, Lcom/facebook/analytics2/logger/CommonUploadSchedulerParams;->uploaderHandlerThreadFactory:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/analytics2/logger/UploadJobConfig;->mThreadHandlerFactoryClass:Ljava/lang/String;

    .line 44
    iget-object v0, p2, Lcom/facebook/analytics2/logger/CommonUploadSchedulerParams;->uploadJobInstrumentation:Ljava/lang/Class;

    if-eqz v0, :cond_1

    iget-object v0, p2, Lcom/facebook/analytics2/logger/CommonUploadSchedulerParams;->uploadJobInstrumentation:Ljava/lang/Class;

    .line 45
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    :cond_1
    iput-object v1, p0, Lcom/facebook/analytics2/logger/UploadJobConfig;->mUploadJobInstrumentationClass:Ljava/lang/String;

    .line 46
    if-nez p1, :cond_4

    .line 47
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "priorityDir required"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    move-object v0, v1

    .line 41
    goto :goto_0

    :cond_3
    move-object v0, v1

    .line 42
    goto :goto_1

    .line 49
    :cond_4
    iput-object p1, p0, Lcom/facebook/analytics2/logger/UploadJobConfig;->mPriorityDir:Ljava/io/File;

    .line 50
    iget-object v0, p2, Lcom/facebook/analytics2/logger/CommonUploadSchedulerParams;->priority:Lcom/facebook/analytics2/logger/UploadJob$Priority;

    if-nez v0, :cond_5

    .line 51
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "networkPriority required"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 53
    :cond_5
    iget-object v0, p2, Lcom/facebook/analytics2/logger/CommonUploadSchedulerParams;->priority:Lcom/facebook/analytics2/logger/UploadJob$Priority;

    iput-object v0, p0, Lcom/facebook/analytics2/logger/UploadJobConfig;->mNetworkPriority:Lcom/facebook/analytics2/logger/UploadJob$Priority;

    .line 54
    iget-object v0, p2, Lcom/facebook/analytics2/logger/CommonUploadSchedulerParams;->marauderTier:Ljava/lang/String;

    if-nez v0, :cond_6

    .line 55
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "marauderTier required"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :cond_6
    iget-object v0, p2, Lcom/facebook/analytics2/logger/CommonUploadSchedulerParams;->marauderTier:Ljava/lang/String;

    iput-object v0, p0, Lcom/facebook/analytics2/logger/UploadJobConfig;->mMarauderTier:Ljava/lang/String;

    .line 58
    return-void
.end method


# virtual methods
.method public getMarauderTier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/facebook/analytics2/logger/UploadJobConfig;->mMarauderTier:Ljava/lang/String;

    return-object v0
.end method

.method public getNetworkPriority()Lcom/facebook/analytics2/logger/UploadJob$Priority;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/facebook/analytics2/logger/UploadJobConfig;->mNetworkPriority:Lcom/facebook/analytics2/logger/UploadJob$Priority;

    return-object v0
.end method

.method public getPriorityDir()Ljava/io/File;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/facebook/analytics2/logger/UploadJobConfig;->mPriorityDir:Ljava/io/File;

    return-object v0
.end method

.method getPrivacyPolicyClass()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 107
    iget-object v0, p0, Lcom/facebook/analytics2/logger/UploadJobConfig;->mPrivacyPolicyClass:Ljava/lang/String;

    return-object v0
.end method

.method public getSamplingPolicyUpdaterClass()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 102
    iget-object v0, p0, Lcom/facebook/analytics2/logger/UploadJobConfig;->mSamplingPolicyUpdaterClass:Ljava/lang/String;

    return-object v0
.end method

.method public getThreadHandlerFactoryClass()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 112
    iget-object v0, p0, Lcom/facebook/analytics2/logger/UploadJobConfig;->mThreadHandlerFactoryClass:Ljava/lang/String;

    return-object v0
.end method

.method public getUploadJobInstrumentationClass()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 117
    iget-object v0, p0, Lcom/facebook/analytics2/logger/UploadJobConfig;->mUploadJobInstrumentationClass:Ljava/lang/String;

    return-object v0
.end method

.method public getUploaderClass()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/facebook/analytics2/logger/UploadJobConfig;->mUploaderClass:Ljava/lang/String;

    return-object v0
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 2

    .prologue
    .line 133
    new-instance v0, Lcom/facebook/analytics2/logger/UploadJobConfig$BundlePrimitiveMapper;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-direct {v0, v1}, Lcom/facebook/analytics2/logger/UploadJobConfig$BundlePrimitiveMapper;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {p0, v0}, Lcom/facebook/analytics2/logger/UploadJobConfig;->toPrimitiveMap(Lcom/facebook/analytics2/logger/UploadJobConfig$PrimitiveMapWriter;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    return-object v0
.end method

.method public toPrimitiveMap(Lcom/facebook/analytics2/logger/UploadJobConfig$PrimitiveMapWriter;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/facebook/analytics2/logger/UploadJobConfig$PrimitiveMapWriter",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 142
    const-string/jumbo v0, "uploader_class"

    iget-object v1, p0, Lcom/facebook/analytics2/logger/UploadJobConfig;->mUploaderClass:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lcom/facebook/analytics2/logger/UploadJobConfig$PrimitiveMapWriter;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    const-string v0, "flexible_sampling_updater"

    iget-object v1, p0, Lcom/facebook/analytics2/logger/UploadJobConfig;->mSamplingPolicyUpdaterClass:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lcom/facebook/analytics2/logger/UploadJobConfig$PrimitiveMapWriter;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    const-string v0, "privacy_policy"

    iget-object v1, p0, Lcom/facebook/analytics2/logger/UploadJobConfig;->mPrivacyPolicyClass:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lcom/facebook/analytics2/logger/UploadJobConfig$PrimitiveMapWriter;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    const-string/jumbo v0, "thread_handler_factory"

    iget-object v1, p0, Lcom/facebook/analytics2/logger/UploadJobConfig;->mThreadHandlerFactoryClass:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lcom/facebook/analytics2/logger/UploadJobConfig$PrimitiveMapWriter;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    const-string/jumbo v0, "upload_job_instrumentation"

    iget-object v1, p0, Lcom/facebook/analytics2/logger/UploadJobConfig;->mUploadJobInstrumentationClass:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lcom/facebook/analytics2/logger/UploadJobConfig$PrimitiveMapWriter;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    const-string v0, "priority_dir"

    iget-object v1, p0, Lcom/facebook/analytics2/logger/UploadJobConfig;->mPriorityDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/facebook/analytics2/logger/UploadJobConfig$PrimitiveMapWriter;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    const-string v0, "network_priority"

    iget-object v1, p0, Lcom/facebook/analytics2/logger/UploadJobConfig;->mNetworkPriority:Lcom/facebook/analytics2/logger/UploadJob$Priority;

    invoke-virtual {v1}, Lcom/facebook/analytics2/logger/UploadJob$Priority;->ordinal()I

    move-result v1

    invoke-interface {p1, v0, v1}, Lcom/facebook/analytics2/logger/UploadJobConfig$PrimitiveMapWriter;->putInt(Ljava/lang/String;I)V

    .line 149
    const-string v0, "marauder_tier"

    iget-object v1, p0, Lcom/facebook/analytics2/logger/UploadJobConfig;->mMarauderTier:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lcom/facebook/analytics2/logger/UploadJobConfig$PrimitiveMapWriter;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    invoke-interface {p1}, Lcom/facebook/analytics2/logger/UploadJobConfig$PrimitiveMapWriter;->storage()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
