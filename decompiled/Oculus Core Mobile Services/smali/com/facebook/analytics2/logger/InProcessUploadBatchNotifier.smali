.class Lcom/facebook/analytics2/logger/InProcessUploadBatchNotifier;
.super Ljava/lang/Object;
.source "InProcessUploadBatchNotifier.java"

# interfaces
.implements Lcom/facebook/analytics2/logger/UploadBatchNotifier;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/analytics2/logger/InProcessUploadBatchNotifier$UploadHandler;,
        Lcom/facebook/analytics2/logger/InProcessUploadBatchNotifier$InProcessUploadProcesserCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/analytics2/logger/UploadBatchNotifier",
        "<",
        "Ljava/io/ByteArrayOutputStream;",
        ">;"
    }
.end annotation

.annotation build Ljavax/annotation/concurrent/NotThreadSafe;
.end annotation


# static fields
.field private static final DELAY_UPLOAD_IN_MS:J


# instance fields
.field private final mBatchDynamicMetadataHelper:Lcom/facebook/analytics2/logger/BatchDynamicMetadataHelper;

.field private mByteArrayOutputStream:Ljava/io/ByteArrayOutputStream;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mHasScheduledForCurrentByteArray:Z

.field private final mParams:Lcom/facebook/analytics2/logger/CommonUploadSchedulerParams;

.field private final mSamplingPolicyConfig:Lcom/facebook/flexiblesampling/SamplingPolicyConfig;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mUploadHandler:Lcom/facebook/analytics2/logger/InProcessUploadBatchNotifier$UploadHandler;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mUploader:Lcom/facebook/analytics2/logger/Uploader;

.field private final mUploaderHandlerThreadFactory:Lcom/facebook/analytics2/logger/HandlerThreadFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 33
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x3c

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/facebook/analytics2/logger/InProcessUploadBatchNotifier;->DELAY_UPLOAD_IN_MS:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/facebook/crudolib/params/ParamsCollectionPool;Lcom/facebook/analytics2/logger/CommonUploadSchedulerParams;)V
    .locals 4

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/facebook/analytics2/logger/InProcessUploadBatchNotifier;->mContext:Landroid/content/Context;

    .line 52
    iput-object p3, p0, Lcom/facebook/analytics2/logger/InProcessUploadBatchNotifier;->mParams:Lcom/facebook/analytics2/logger/CommonUploadSchedulerParams;

    .line 55
    :try_start_0
    iget-object v0, p0, Lcom/facebook/analytics2/logger/InProcessUploadBatchNotifier;->mContext:Landroid/content/Context;

    .line 56
    invoke-static {v0}, Lcom/facebook/analytics2/logger/ContextConstructorHelper;->getInstance(Landroid/content/Context;)Lcom/facebook/analytics2/logger/ContextConstructorHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/analytics2/logger/InProcessUploadBatchNotifier;->mParams:Lcom/facebook/analytics2/logger/CommonUploadSchedulerParams;

    iget-object v1, v1, Lcom/facebook/analytics2/logger/CommonUploadSchedulerParams;->uploader:Ljava/lang/Class;

    .line 57
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/analytics2/logger/ContextConstructorHelper;->getProvidedUploader(Ljava/lang/String;)Lcom/facebook/analytics2/logger/Uploader;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/analytics2/logger/InProcessUploadBatchNotifier;->mUploader:Lcom/facebook/analytics2/logger/Uploader;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3

    .line 68
    iget-object v0, p0, Lcom/facebook/analytics2/logger/InProcessUploadBatchNotifier;->mParams:Lcom/facebook/analytics2/logger/CommonUploadSchedulerParams;

    iget-object v0, v0, Lcom/facebook/analytics2/logger/CommonUploadSchedulerParams;->samplingPolicyConfig:Ljava/lang/Class;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 72
    :goto_0
    iput-object v0, p0, Lcom/facebook/analytics2/logger/InProcessUploadBatchNotifier;->mSamplingPolicyConfig:Lcom/facebook/flexiblesampling/SamplingPolicyConfig;

    .line 74
    iget-object v0, p0, Lcom/facebook/analytics2/logger/InProcessUploadBatchNotifier;->mContext:Landroid/content/Context;

    .line 75
    invoke-static {v0}, Lcom/facebook/analytics2/logger/ContextConstructorHelper;->getInstance(Landroid/content/Context;)Lcom/facebook/analytics2/logger/ContextConstructorHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/analytics2/logger/InProcessUploadBatchNotifier;->mParams:Lcom/facebook/analytics2/logger/CommonUploadSchedulerParams;

    iget-object v1, v1, Lcom/facebook/analytics2/logger/CommonUploadSchedulerParams;->uploaderHandlerThreadFactory:Ljava/lang/Class;

    .line 76
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/analytics2/logger/ContextConstructorHelper;->getProvidedHandlerThreadFactory(Ljava/lang/String;)Lcom/facebook/analytics2/logger/HandlerThreadFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/analytics2/logger/InProcessUploadBatchNotifier;->mUploaderHandlerThreadFactory:Lcom/facebook/analytics2/logger/HandlerThreadFactory;

    .line 78
    new-instance v0, Lcom/facebook/analytics2/logger/BatchDynamicMetadataHelper;

    iget-object v1, p0, Lcom/facebook/analytics2/logger/InProcessUploadBatchNotifier;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/facebook/analytics2/logger/InProcessUploadBatchNotifier;->mParams:Lcom/facebook/analytics2/logger/CommonUploadSchedulerParams;

    iget-object v2, v2, Lcom/facebook/analytics2/logger/CommonUploadSchedulerParams;->marauderTier:Ljava/lang/String;

    iget-object v3, p0, Lcom/facebook/analytics2/logger/InProcessUploadBatchNotifier;->mSamplingPolicyConfig:Lcom/facebook/flexiblesampling/SamplingPolicyConfig;

    invoke-direct {v0, v1, p2, v2, v3}, Lcom/facebook/analytics2/logger/BatchDynamicMetadataHelper;-><init>(Landroid/content/Context;Lcom/facebook/crudolib/params/ParamsCollectionPool;Ljava/lang/String;Lcom/facebook/flexiblesampling/SamplingPolicyConfig;)V

    iput-object v0, p0, Lcom/facebook/analytics2/logger/InProcessUploadBatchNotifier;->mBatchDynamicMetadataHelper:Lcom/facebook/analytics2/logger/BatchDynamicMetadataHelper;

    .line 81
    return-void

    .line 58
    :catch_0
    move-exception v0

    .line 59
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to create instance of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/analytics2/logger/InProcessUploadBatchNotifier;->mParams:Lcom/facebook/analytics2/logger/CommonUploadSchedulerParams;

    iget-object v3, v3, Lcom/facebook/analytics2/logger/CommonUploadSchedulerParams;->uploader:Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 60
    :catch_1
    move-exception v0

    .line 61
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to create instance of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/analytics2/logger/InProcessUploadBatchNotifier;->mParams:Lcom/facebook/analytics2/logger/CommonUploadSchedulerParams;

    iget-object v3, v3, Lcom/facebook/analytics2/logger/CommonUploadSchedulerParams;->uploader:Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 62
    :catch_2
    move-exception v0

    .line 63
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to create instance of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/analytics2/logger/InProcessUploadBatchNotifier;->mParams:Lcom/facebook/analytics2/logger/CommonUploadSchedulerParams;

    iget-object v3, v3, Lcom/facebook/analytics2/logger/CommonUploadSchedulerParams;->uploader:Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 64
    :catch_3
    move-exception v0

    .line 65
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to create instance of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/analytics2/logger/InProcessUploadBatchNotifier;->mParams:Lcom/facebook/analytics2/logger/CommonUploadSchedulerParams;

    iget-object v3, v3, Lcom/facebook/analytics2/logger/CommonUploadSchedulerParams;->uploader:Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/facebook/analytics2/logger/InProcessUploadBatchNotifier;->mContext:Landroid/content/Context;

    .line 71
    invoke-static {v0}, Lcom/facebook/analytics2/logger/ContextConstructorHelper;->getInstance(Landroid/content/Context;)Lcom/facebook/analytics2/logger/ContextConstructorHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/analytics2/logger/InProcessUploadBatchNotifier;->mParams:Lcom/facebook/analytics2/logger/CommonUploadSchedulerParams;

    iget-object v1, v1, Lcom/facebook/analytics2/logger/CommonUploadSchedulerParams;->samplingPolicyConfig:Ljava/lang/Class;

    .line 72
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/analytics2/logger/ContextConstructorHelper;->getProvidedSamplingPolicyConfig(Ljava/lang/String;)Lcom/facebook/flexiblesampling/SamplingPolicyConfig;

    move-result-object v0

    goto/16 :goto_0
.end method

.method static synthetic access$000(Lcom/facebook/analytics2/logger/InProcessUploadBatchNotifier;)Lcom/facebook/analytics2/logger/BatchDynamicMetadataHelper;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/facebook/analytics2/logger/InProcessUploadBatchNotifier;->mBatchDynamicMetadataHelper:Lcom/facebook/analytics2/logger/BatchDynamicMetadataHelper;

    return-object v0
.end method

.method static synthetic access$100(Lcom/facebook/analytics2/logger/InProcessUploadBatchNotifier;)Lcom/facebook/analytics2/logger/Uploader;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/facebook/analytics2/logger/InProcessUploadBatchNotifier;->mUploader:Lcom/facebook/analytics2/logger/Uploader;

    return-object v0
.end method

.method static synthetic access$200(Lcom/facebook/analytics2/logger/InProcessUploadBatchNotifier;)Lcom/facebook/analytics2/logger/CommonUploadSchedulerParams;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/facebook/analytics2/logger/InProcessUploadBatchNotifier;->mParams:Lcom/facebook/analytics2/logger/CommonUploadSchedulerParams;

    return-object v0
.end method

.method static synthetic access$400(Lcom/facebook/analytics2/logger/InProcessUploadBatchNotifier;)Lcom/facebook/flexiblesampling/SamplingPolicyConfig;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/facebook/analytics2/logger/InProcessUploadBatchNotifier;->mSamplingPolicyConfig:Lcom/facebook/flexiblesampling/SamplingPolicyConfig;

    return-object v0
.end method

.method private getUploadHandler()Lcom/facebook/analytics2/logger/InProcessUploadBatchNotifier$UploadHandler;
    .locals 3

    .prologue
    .line 120
    iget-object v0, p0, Lcom/facebook/analytics2/logger/InProcessUploadBatchNotifier;->mUploadHandler:Lcom/facebook/analytics2/logger/InProcessUploadBatchNotifier$UploadHandler;

    if-nez v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/facebook/analytics2/logger/InProcessUploadBatchNotifier;->mParams:Lcom/facebook/analytics2/logger/CommonUploadSchedulerParams;

    iget-object v0, v0, Lcom/facebook/analytics2/logger/CommonUploadSchedulerParams;->priority:Lcom/facebook/analytics2/logger/UploadJob$Priority;

    sget-object v1, Lcom/facebook/analytics2/logger/UploadJob$Priority;->HIGH:Lcom/facebook/analytics2/logger/UploadJob$Priority;

    if-ne v0, v1, :cond_1

    .line 124
    const/4 v1, 0x0

    .line 125
    const-string v0, "Analytics-HighPri-InMemory-Scheduler"

    .line 132
    :goto_0
    iget-object v2, p0, Lcom/facebook/analytics2/logger/InProcessUploadBatchNotifier;->mUploaderHandlerThreadFactory:Lcom/facebook/analytics2/logger/HandlerThreadFactory;

    .line 133
    invoke-interface {v2, v0, v1}, Lcom/facebook/analytics2/logger/HandlerThreadFactory;->createAndStartHandlerThread(Ljava/lang/String;I)Landroid/os/HandlerThread;

    move-result-object v0

    .line 134
    new-instance v1, Lcom/facebook/analytics2/logger/InProcessUploadBatchNotifier$UploadHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lcom/facebook/analytics2/logger/InProcessUploadBatchNotifier$UploadHandler;-><init>(Lcom/facebook/analytics2/logger/InProcessUploadBatchNotifier;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/facebook/analytics2/logger/InProcessUploadBatchNotifier;->mUploadHandler:Lcom/facebook/analytics2/logger/InProcessUploadBatchNotifier$UploadHandler;

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/facebook/analytics2/logger/InProcessUploadBatchNotifier;->mUploadHandler:Lcom/facebook/analytics2/logger/InProcessUploadBatchNotifier$UploadHandler;

    return-object v0

    .line 127
    :cond_1
    const/16 v1, 0xa

    .line 128
    const-string v0, "Analytics-NormalPri-InMemory-Scheduler"

    goto :goto_0
.end method

.method private throwIfNoOutputStream()V
    .locals 2

    .prologue
    .line 99
    iget-object v0, p0, Lcom/facebook/analytics2/logger/InProcessUploadBatchNotifier;->mByteArrayOutputStream:Ljava/io/ByteArrayOutputStream;

    if-nez v0, :cond_0

    .line 100
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "mByteArrayOutputStream is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 102
    :cond_0
    return-void
.end method


# virtual methods
.method public notifyBatchReady()V
    .locals 2

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/facebook/analytics2/logger/InProcessUploadBatchNotifier;->throwIfNoOutputStream()V

    .line 95
    invoke-direct {p0}, Lcom/facebook/analytics2/logger/InProcessUploadBatchNotifier;->getUploadHandler()Lcom/facebook/analytics2/logger/InProcessUploadBatchNotifier$UploadHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/analytics2/logger/InProcessUploadBatchNotifier;->mByteArrayOutputStream:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, v1}, Lcom/facebook/analytics2/logger/InProcessUploadBatchNotifier$UploadHandler;->sendUpload(Ljava/io/ByteArrayOutputStream;)V

    .line 96
    return-void
.end method

.method public notifyEventLogged()V
    .locals 4

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/facebook/analytics2/logger/InProcessUploadBatchNotifier;->throwIfNoOutputStream()V

    .line 86
    iget-boolean v0, p0, Lcom/facebook/analytics2/logger/InProcessUploadBatchNotifier;->mHasScheduledForCurrentByteArray:Z

    if-nez v0, :cond_0

    .line 87
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/analytics2/logger/InProcessUploadBatchNotifier;->mHasScheduledForCurrentByteArray:Z

    .line 88
    invoke-direct {p0}, Lcom/facebook/analytics2/logger/InProcessUploadBatchNotifier;->getUploadHandler()Lcom/facebook/analytics2/logger/InProcessUploadBatchNotifier$UploadHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/analytics2/logger/InProcessUploadBatchNotifier;->mByteArrayOutputStream:Ljava/io/ByteArrayOutputStream;

    sget-wide v2, Lcom/facebook/analytics2/logger/InProcessUploadBatchNotifier;->DELAY_UPLOAD_IN_MS:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/facebook/analytics2/logger/InProcessUploadBatchNotifier$UploadHandler;->sendUploadDelayed(Ljava/io/ByteArrayOutputStream;J)V

    .line 90
    :cond_0
    return-void
.end method

.method public notifyUserLogout(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 114
    iget-object v0, p0, Lcom/facebook/analytics2/logger/InProcessUploadBatchNotifier;->mByteArrayOutputStream:Ljava/io/ByteArrayOutputStream;

    if-eqz v0, :cond_0

    .line 115
    invoke-direct {p0}, Lcom/facebook/analytics2/logger/InProcessUploadBatchNotifier;->getUploadHandler()Lcom/facebook/analytics2/logger/InProcessUploadBatchNotifier$UploadHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/analytics2/logger/InProcessUploadBatchNotifier;->mByteArrayOutputStream:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, v1}, Lcom/facebook/analytics2/logger/InProcessUploadBatchNotifier$UploadHandler;->sendUpload(Ljava/io/ByteArrayOutputStream;)V

    .line 117
    :cond_0
    return-void
.end method

.method public setLastNotifiedObject(Ljava/io/ByteArrayOutputStream;)V
    .locals 1
    .param p1    # Ljava/io/ByteArrayOutputStream;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 106
    iget-object v0, p0, Lcom/facebook/analytics2/logger/InProcessUploadBatchNotifier;->mByteArrayOutputStream:Ljava/io/ByteArrayOutputStream;

    if-eq v0, p1, :cond_0

    .line 107
    iput-object p1, p0, Lcom/facebook/analytics2/logger/InProcessUploadBatchNotifier;->mByteArrayOutputStream:Ljava/io/ByteArrayOutputStream;

    .line 108
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/analytics2/logger/InProcessUploadBatchNotifier;->mHasScheduledForCurrentByteArray:Z

    .line 110
    :cond_0
    return-void
.end method

.method public bridge synthetic setLastNotifiedObject(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 29
    check-cast p1, Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p0, p1}, Lcom/facebook/analytics2/logger/InProcessUploadBatchNotifier;->setLastNotifiedObject(Ljava/io/ByteArrayOutputStream;)V

    return-void
.end method
