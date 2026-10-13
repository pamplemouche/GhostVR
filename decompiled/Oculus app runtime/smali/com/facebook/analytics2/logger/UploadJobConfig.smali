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


# static fields
.field private static final KEY_MARAUDER_TIER:Ljava/lang/String; = "marauder_tier"

.field private static final KEY_NETWORK_PRIORITY:Ljava/lang/String; = "network_priority"

.field private static final KEY_PRIORITY_DIR:Ljava/lang/String; = "priority_dir"

.field private static final KEY_PRIVACY_POLICY:Ljava/lang/String; = "privacy_policy"

.field private static final KEY_SAMPLING_POLICY_UPDATER:Ljava/lang/String; = "flexible_sampling_updater"

.field private static final KEY_THREAD_HANDLER_FACTORY:Ljava/lang/String; = "thread_handler_factory"

.field private static final KEY_UPLOADER_CLASS:Ljava/lang/String; = "uploader_class"

.field private static final KEY_UPLOAD_JOB_INSTRUMENTATION:Ljava/lang/String; = "upload_job_instrumentation"


# instance fields
.field private final mMarauderTier:Ljava/lang/String;

.field private final mNetworkPriority:Lcom/facebook/analytics2/logger/UploadJob$Priority;

.field private final mPriorityDir:Ljava/io/File;

.field private final mPrivacyPolicyClass:Ljava/lang/String;
    .annotation build Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mSamplingPolicyUpdaterClass:Ljava/lang/String;
    .annotation build Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mThreadHandlerFactoryClass:Ljava/lang/String;

.field private final mUploadJobInstrumentationClass:Ljava/lang/String;
    .annotation build Ljavax/annotation/Nullable;
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

    .line 61
    new-instance v0, Lcom/facebook/analytics2/logger/UploadJobConfig$BundlePrimitiveMapper;

    invoke-direct {v0, p1}, Lcom/facebook/analytics2/logger/UploadJobConfig$BundlePrimitiveMapper;-><init>(Landroid/os/Bundle;)V

    invoke-direct {p0, v0}, Lcom/facebook/analytics2/logger/UploadJobConfig;-><init>(Lcom/facebook/analytics2/logger/UploadJobConfig$PrimitiveMapReader;)V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/analytics2/logger/UploadJobConfig$PrimitiveMapReader;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/analytics2/logger/IllegalRemoteArgumentException;
        }
    .end annotation

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    const-string v1, "uploader_class"

    .line 65
    invoke-interface {p1, v1, v0}, Lcom/facebook/analytics2/logger/UploadJobConfig$PrimitiveMapReader;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v2, "flexible_sampling_updater"

    .line 70
    invoke-interface {p1, v2, v0}, Lcom/facebook/analytics2/logger/UploadJobConfig$PrimitiveMapReader;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "privacy_policy"

    .line 71
    invoke-interface {p1, v3, v0}, Lcom/facebook/analytics2/logger/UploadJobConfig$PrimitiveMapReader;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "thread_handler_factory"

    .line 73
    invoke-interface {p1, v4, v0}, Lcom/facebook/analytics2/logger/UploadJobConfig$PrimitiveMapReader;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "upload_job_instrumentation"

    .line 75
    invoke-interface {p1, v5, v0}, Lcom/facebook/analytics2/logger/UploadJobConfig$PrimitiveMapReader;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "priority_dir"

    .line 76
    invoke-interface {p1, v6, v0}, Lcom/facebook/analytics2/logger/UploadJobConfig$PrimitiveMapReader;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 80
    sget-object v7, Lcom/facebook/analytics2/logger/UploadJob$Priority;->NORMAL:Lcom/facebook/analytics2/logger/UploadJob$Priority;

    invoke-virtual {v7}, Lcom/facebook/analytics2/logger/UploadJob$Priority;->ordinal()I

    move-result v7

    const-string v8, "network_priority"

    invoke-interface {p1, v8, v7}, Lcom/facebook/analytics2/logger/UploadJobConfig$PrimitiveMapReader;->getInt(Ljava/lang/String;I)I

    move-result v7

    const-string v8, "marauder_tier"

    .line 81
    invoke-interface {p1, v8, v0}, Lcom/facebook/analytics2/logger/UploadJobConfig$PrimitiveMapReader;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 86
    iput-object v1, p0, Lcom/facebook/analytics2/logger/UploadJobConfig;->mUploaderClass:Ljava/lang/String;

    .line 87
    iput-object v2, p0, Lcom/facebook/analytics2/logger/UploadJobConfig;->mSamplingPolicyUpdaterClass:Ljava/lang/String;

    .line 88
    iput-object v3, p0, Lcom/facebook/analytics2/logger/UploadJobConfig;->mPrivacyPolicyClass:Ljava/lang/String;

    .line 89
    iput-object v4, p0, Lcom/facebook/analytics2/logger/UploadJobConfig;->mThreadHandlerFactoryClass:Ljava/lang/String;

    .line 90
    iput-object v5, p0, Lcom/facebook/analytics2/logger/UploadJobConfig;->mUploadJobInstrumentationClass:Ljava/lang/String;

    .line 91
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/facebook/analytics2/logger/UploadJobConfig;->mPriorityDir:Ljava/io/File;

    .line 92
    invoke-static {}, Lcom/facebook/analytics2/logger/UploadJob$Priority;->values()[Lcom/facebook/analytics2/logger/UploadJob$Priority;

    move-result-object v0

    aget-object v0, v0, v7

    iput-object v0, p0, Lcom/facebook/analytics2/logger/UploadJobConfig;->mNetworkPriority:Lcom/facebook/analytics2/logger/UploadJob$Priority;

    .line 93
    iput-object p1, p0, Lcom/facebook/analytics2/logger/UploadJobConfig;->mMarauderTier:Ljava/lang/String;

    return-void

    .line 83
    :cond_0
    new-instance p1, Lcom/facebook/analytics2/logger/IllegalRemoteArgumentException;

    const-string v0, "marauder_tier is null or empty"

    invoke-direct {p1, v0}, Lcom/facebook/analytics2/logger/IllegalRemoteArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 78
    :cond_1
    new-instance p1, Lcom/facebook/analytics2/logger/IllegalRemoteArgumentException;

    const-string v0, "priority_dir is null or empty"

    invoke-direct {p1, v0}, Lcom/facebook/analytics2/logger/IllegalRemoteArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 67
    :cond_2
    new-instance p1, Lcom/facebook/analytics2/logger/IllegalRemoteArgumentException;

    const-string v0, "uploader_class is null or empty"

    invoke-direct {p1, v0}, Lcom/facebook/analytics2/logger/IllegalRemoteArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljava/io/File;Lcom/facebook/analytics2/logger/CommonUploadSchedulerParams;)V
    .locals 2

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iget-object v0, p2, Lcom/facebook/analytics2/logger/CommonUploadSchedulerParams;->uploader:Ljava/lang/Class;

    if-eqz v0, :cond_6

    .line 39
    iget-object v0, p2, Lcom/facebook/analytics2/logger/CommonUploadSchedulerParams;->uploader:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/analytics2/logger/UploadJobConfig;->mUploaderClass:Ljava/lang/String;

    .line 40
    iget-object v0, p2, Lcom/facebook/analytics2/logger/CommonUploadSchedulerParams;->samplingPolicyConfig:Ljava/lang/Class;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p2, Lcom/facebook/analytics2/logger/CommonUploadSchedulerParams;->samplingPolicyConfig:Ljava/lang/Class;

    .line 41
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    iput-object v0, p0, Lcom/facebook/analytics2/logger/UploadJobConfig;->mSamplingPolicyUpdaterClass:Ljava/lang/String;

    .line 42
    iget-object v0, p2, Lcom/facebook/analytics2/logger/CommonUploadSchedulerParams;->privacyPolicy:Ljava/lang/Class;

    if-eqz v0, :cond_1

    iget-object v0, p2, Lcom/facebook/analytics2/logger/CommonUploadSchedulerParams;->privacyPolicy:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    move-object v0, v1

    :goto_1
    iput-object v0, p0, Lcom/facebook/analytics2/logger/UploadJobConfig;->mPrivacyPolicyClass:Ljava/lang/String;

    .line 43
    iget-object v0, p2, Lcom/facebook/analytics2/logger/CommonUploadSchedulerParams;->uploaderHandlerThreadFactory:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/analytics2/logger/UploadJobConfig;->mThreadHandlerFactoryClass:Ljava/lang/String;

    .line 44
    iget-object v0, p2, Lcom/facebook/analytics2/logger/CommonUploadSchedulerParams;->uploadJobInstrumentation:Ljava/lang/Class;

    if-eqz v0, :cond_2

    iget-object v0, p2, Lcom/facebook/analytics2/logger/CommonUploadSchedulerParams;->uploadJobInstrumentation:Ljava/lang/Class;

    .line 45
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    :cond_2
    iput-object v1, p0, Lcom/facebook/analytics2/logger/UploadJobConfig;->mUploadJobInstrumentationClass:Ljava/lang/String;

    if-eqz p1, :cond_5

    .line 49
    iput-object p1, p0, Lcom/facebook/analytics2/logger/UploadJobConfig;->mPriorityDir:Ljava/io/File;

    .line 50
    iget-object p1, p2, Lcom/facebook/analytics2/logger/CommonUploadSchedulerParams;->priority:Lcom/facebook/analytics2/logger/UploadJob$Priority;

    if-eqz p1, :cond_4

    .line 53
    iget-object p1, p2, Lcom/facebook/analytics2/logger/CommonUploadSchedulerParams;->priority:Lcom/facebook/analytics2/logger/UploadJob$Priority;

    iput-object p1, p0, Lcom/facebook/analytics2/logger/UploadJobConfig;->mNetworkPriority:Lcom/facebook/analytics2/logger/UploadJob$Priority;

    .line 54
    iget-object p1, p2, Lcom/facebook/analytics2/logger/CommonUploadSchedulerParams;->marauderTier:Ljava/lang/String;

    if-eqz p1, :cond_3

    .line 57
    iget-object p1, p2, Lcom/facebook/analytics2/logger/CommonUploadSchedulerParams;->marauderTier:Ljava/lang/String;

    iput-object p1, p0, Lcom/facebook/analytics2/logger/UploadJobConfig;->mMarauderTier:Ljava/lang/String;

    return-void

    .line 55
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "marauderTier required"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 51
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "networkPriority required"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 47
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "priorityDir required"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 37
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "uploader required"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getMarauderTier()Ljava/lang/String;
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/facebook/analytics2/logger/UploadJobConfig;->mMarauderTier:Ljava/lang/String;

    return-object v0
.end method

.method public getNetworkPriority()Lcom/facebook/analytics2/logger/UploadJob$Priority;
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/facebook/analytics2/logger/UploadJobConfig;->mNetworkPriority:Lcom/facebook/analytics2/logger/UploadJob$Priority;

    return-object v0
.end method

.method public getPriorityDir()Ljava/io/File;
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/facebook/analytics2/logger/UploadJobConfig;->mPriorityDir:Ljava/io/File;

    return-object v0
.end method

.method getPrivacyPolicyClass()Ljava/lang/String;
    .locals 1
    .annotation build Ljavax/annotation/Nullable;
    .end annotation

    .line 107
    iget-object v0, p0, Lcom/facebook/analytics2/logger/UploadJobConfig;->mPrivacyPolicyClass:Ljava/lang/String;

    return-object v0
.end method

.method public getSamplingPolicyUpdaterClass()Ljava/lang/String;
    .locals 1
    .annotation build Ljavax/annotation/Nullable;
    .end annotation

    .line 102
    iget-object v0, p0, Lcom/facebook/analytics2/logger/UploadJobConfig;->mSamplingPolicyUpdaterClass:Ljava/lang/String;

    return-object v0
.end method

.method public getThreadHandlerFactoryClass()Ljava/lang/String;
    .locals 1
    .annotation build Ljavax/annotation/Nullable;
    .end annotation

    .line 112
    iget-object v0, p0, Lcom/facebook/analytics2/logger/UploadJobConfig;->mThreadHandlerFactoryClass:Ljava/lang/String;

    return-object v0
.end method

.method public getUploadJobInstrumentationClass()Ljava/lang/String;
    .locals 1
    .annotation build Ljavax/annotation/Nullable;
    .end annotation

    .line 117
    iget-object v0, p0, Lcom/facebook/analytics2/logger/UploadJobConfig;->mUploadJobInstrumentationClass:Ljava/lang/String;

    return-object v0
.end method

.method public getUploaderClass()Ljava/lang/String;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/facebook/analytics2/logger/UploadJobConfig;->mUploaderClass:Ljava/lang/String;

    return-object v0
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 2

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
            "Lcom/facebook/analytics2/logger/UploadJobConfig$PrimitiveMapWriter<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 142
    iget-object v0, p0, Lcom/facebook/analytics2/logger/UploadJobConfig;->mUploaderClass:Ljava/lang/String;

    const-string v1, "uploader_class"

    invoke-interface {p1, v1, v0}, Lcom/facebook/analytics2/logger/UploadJobConfig$PrimitiveMapWriter;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    iget-object v0, p0, Lcom/facebook/analytics2/logger/UploadJobConfig;->mSamplingPolicyUpdaterClass:Ljava/lang/String;

    const-string v1, "flexible_sampling_updater"

    invoke-interface {p1, v1, v0}, Lcom/facebook/analytics2/logger/UploadJobConfig$PrimitiveMapWriter;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    iget-object v0, p0, Lcom/facebook/analytics2/logger/UploadJobConfig;->mPrivacyPolicyClass:Ljava/lang/String;

    const-string v1, "privacy_policy"

    invoke-interface {p1, v1, v0}, Lcom/facebook/analytics2/logger/UploadJobConfig$PrimitiveMapWriter;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    iget-object v0, p0, Lcom/facebook/analytics2/logger/UploadJobConfig;->mThreadHandlerFactoryClass:Ljava/lang/String;

    const-string v1, "thread_handler_factory"

    invoke-interface {p1, v1, v0}, Lcom/facebook/analytics2/logger/UploadJobConfig$PrimitiveMapWriter;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    iget-object v0, p0, Lcom/facebook/analytics2/logger/UploadJobConfig;->mUploadJobInstrumentationClass:Ljava/lang/String;

    const-string v1, "upload_job_instrumentation"

    invoke-interface {p1, v1, v0}, Lcom/facebook/analytics2/logger/UploadJobConfig$PrimitiveMapWriter;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    iget-object v0, p0, Lcom/facebook/analytics2/logger/UploadJobConfig;->mPriorityDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "priority_dir"

    invoke-interface {p1, v1, v0}, Lcom/facebook/analytics2/logger/UploadJobConfig$PrimitiveMapWriter;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    iget-object v0, p0, Lcom/facebook/analytics2/logger/UploadJobConfig;->mNetworkPriority:Lcom/facebook/analytics2/logger/UploadJob$Priority;

    invoke-virtual {v0}, Lcom/facebook/analytics2/logger/UploadJob$Priority;->ordinal()I

    move-result v0

    const-string v1, "network_priority"

    invoke-interface {p1, v1, v0}, Lcom/facebook/analytics2/logger/UploadJobConfig$PrimitiveMapWriter;->putInt(Ljava/lang/String;I)V

    .line 149
    iget-object v0, p0, Lcom/facebook/analytics2/logger/UploadJobConfig;->mMarauderTier:Ljava/lang/String;

    const-string v1, "marauder_tier"

    invoke-interface {p1, v1, v0}, Lcom/facebook/analytics2/logger/UploadJobConfig$PrimitiveMapWriter;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    invoke-interface {p1}, Lcom/facebook/analytics2/logger/UploadJobConfig$PrimitiveMapWriter;->storage()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
