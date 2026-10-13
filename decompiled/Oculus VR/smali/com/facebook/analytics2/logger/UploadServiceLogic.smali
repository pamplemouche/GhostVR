.class Lcom/facebook/analytics2/logger/UploadServiceLogic;
.super Ljava/lang/Object;
.source "UploadServiceLogic.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/analytics2/logger/UploadServiceLogic$ServiceCallback;,
        Lcom/facebook/analytics2/logger/UploadServiceLogic$FallbackConfig;,
        Lcom/facebook/analytics2/logger/UploadServiceLogic$StartServiceParams;,
        Lcom/facebook/analytics2/logger/UploadServiceLogic$LogoutJobParams;,
        Lcom/facebook/analytics2/logger/UploadServiceLogic$StopServiceJobHandlerCallback;,
        Lcom/facebook/analytics2/logger/UploadServiceLogic$ForwardingJobHandlerCallback;,
        Lcom/facebook/analytics2/logger/UploadServiceLogic$JobFinishedNotifier;,
        Lcom/facebook/analytics2/logger/UploadServiceLogic$StopServiceCallback;
    }
.end annotation


# static fields
.field private static final SERVICE_WAKELOCK_EXPIRY_MS:J

.field private static sInstance:Lcom/facebook/analytics2/logger/UploadServiceLogic;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "UploadServiceLogic.class"
    .end annotation
.end field


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mUploadJobHandlerManager:Lcom/facebook/analytics2/logger/UploadJobHandlerManager;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 44
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x3c

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/facebook/analytics2/logger/UploadServiceLogic;->SERVICE_WAKELOCK_EXPIRY_MS:J

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/analytics2/logger/UploadServiceLogic;->mContext:Landroid/content/Context;

    .line 62
    new-instance v0, Lcom/facebook/analytics2/logger/UploadJobHandlerManager;

    invoke-direct {v0, p1}, Lcom/facebook/analytics2/logger/UploadJobHandlerManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/analytics2/logger/UploadServiceLogic;->mUploadJobHandlerManager:Lcom/facebook/analytics2/logger/UploadJobHandlerManager;

    .line 63
    return-void
.end method

.method static synthetic access$000()J
    .locals 2

    .prologue
    .line 34
    sget-wide v0, Lcom/facebook/analytics2/logger/UploadServiceLogic;->SERVICE_WAKELOCK_EXPIRY_MS:J

    return-wide v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/facebook/analytics2/logger/UploadServiceLogic;
    .locals 2

    .prologue
    .line 54
    const-class v1, Lcom/facebook/analytics2/logger/UploadServiceLogic;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/facebook/analytics2/logger/UploadServiceLogic;->sInstance:Lcom/facebook/analytics2/logger/UploadServiceLogic;

    if-nez v0, :cond_0

    .line 55
    new-instance v0, Lcom/facebook/analytics2/logger/UploadServiceLogic;

    invoke-direct {v0, p0}, Lcom/facebook/analytics2/logger/UploadServiceLogic;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/facebook/analytics2/logger/UploadServiceLogic;->sInstance:Lcom/facebook/analytics2/logger/UploadServiceLogic;

    .line 57
    :cond_0
    sget-object v0, Lcom/facebook/analytics2/logger/UploadServiceLogic;->sInstance:Lcom/facebook/analytics2/logger/UploadServiceLogic;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 54
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getJobName(Ljava/lang/String;I)Ljava/lang/String;
    .locals 6

    .prologue
    .line 201
    :try_start_0
    iget-object v0, p0, Lcom/facebook/analytics2/logger/UploadServiceLogic;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 204
    :goto_0
    return-object v0

    .line 202
    :catch_0
    move-exception v0

    .line 203
    const-string v1, "UploadServiceLogic"

    const-string v2, "Resource not found for id: %d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v0, v2, v3}, Lcom/facebook/debug/log/BLog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 204
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getUploadJobInstrumentation(Ljava/lang/String;)Lcom/facebook/analytics2/logger/UploadJobInstrumentation;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 190
    if-nez p1, :cond_0

    .line 191
    const/4 v0, 0x0

    .line 194
    :goto_0
    return-object v0

    .line 193
    :cond_0
    iget-object v0, p0, Lcom/facebook/analytics2/logger/UploadServiceLogic;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/facebook/analytics2/logger/ContextConstructorHelper;->getInstance(Landroid/content/Context;)Lcom/facebook/analytics2/logger/ContextConstructorHelper;

    move-result-object v0

    .line 194
    invoke-virtual {v0, p1}, Lcom/facebook/analytics2/logger/ContextConstructorHelper;->getUploadJobInstrumentation(Ljava/lang/String;)Lcom/facebook/analytics2/logger/UploadJobInstrumentation;

    move-result-object v0

    goto :goto_0
.end method

.method private maybeRecordUploadJobEnd(Ljava/lang/String;Lcom/facebook/analytics2/logger/UploadJobInstrumentation;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/facebook/analytics2/logger/UploadJobInstrumentation;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 182
    if-eqz p2, :cond_0

    .line 183
    invoke-static {p1}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p2, v0}, Lcom/facebook/analytics2/logger/UploadJobInstrumentation;->recordUploadJobStop(Ljava/lang/String;)V

    .line 185
    :cond_0
    return-void
.end method

.method private maybeRecordUploadJobStart(ILjava/lang/String;Lcom/facebook/analytics2/logger/UploadJobInstrumentation;)V
    .locals 1
    .param p2    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/facebook/analytics2/logger/UploadJobInstrumentation;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 175
    if-eqz p3, :cond_0

    .line 176
    invoke-static {p2}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p3, p1, v0}, Lcom/facebook/analytics2/logger/UploadJobInstrumentation;->recordUploadJobStart(ILjava/lang/String;)V

    .line 178
    :cond_0
    return-void
.end method

.method private runJobNow(Ljava/lang/String;Lcom/facebook/analytics2/logger/UploadServiceLogic$StartServiceParams;Lcom/facebook/analytics2/logger/UploadServiceLogic$StopServiceCallback;Ljava/lang/String;Lcom/facebook/analytics2/logger/UploadJobInstrumentation;)V
    .locals 4
    .param p3    # Lcom/facebook/analytics2/logger/UploadServiceLogic$StopServiceCallback;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Lcom/facebook/analytics2/logger/UploadJobInstrumentation;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 148
    const-string v0, "com.facebook.analytics2.logger.UPLOAD_NOW"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/facebook/analytics2/logger/UploadServiceLogic;->mUploadJobHandlerManager:Lcom/facebook/analytics2/logger/UploadJobHandlerManager;

    invoke-static {v0}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/analytics2/logger/UploadJobHandlerManager;

    .line 152
    invoke-virtual {p2}, Lcom/facebook/analytics2/logger/UploadServiceLogic$StartServiceParams;->getJobId()I

    move-result v1

    invoke-virtual {p2}, Lcom/facebook/analytics2/logger/UploadServiceLogic$StartServiceParams;->getHackAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/facebook/analytics2/logger/UploadServiceLogic$StartServiceParams;->getUploadJobConfig()Lcom/facebook/analytics2/logger/UploadJobConfig;

    move-result-object v3

    .line 151
    invoke-static {v1, v2, v3}, Lcom/facebook/analytics2/logger/UploadJobHandler$InvocationParams;->forJob(ILjava/lang/String;Lcom/facebook/analytics2/logger/UploadJobConfig;)Lcom/facebook/analytics2/logger/UploadJobHandler$InvocationParams;

    move-result-object v1

    new-instance v2, Lcom/facebook/analytics2/logger/UploadServiceLogic$StopServiceJobHandlerCallback;

    .line 154
    invoke-virtual {p2}, Lcom/facebook/analytics2/logger/UploadServiceLogic$StartServiceParams;->getJobCallback()Lcom/facebook/analytics2/logger/UploadJobHandler$UploadJobHandlerCallback;

    move-result-object v3

    invoke-direct {v2, v3, p3, p4, p5}, Lcom/facebook/analytics2/logger/UploadServiceLogic$StopServiceJobHandlerCallback;-><init>(Lcom/facebook/analytics2/logger/UploadJobHandler$UploadJobHandlerCallback;Lcom/facebook/analytics2/logger/UploadServiceLogic$StopServiceCallback;Ljava/lang/String;Lcom/facebook/analytics2/logger/UploadJobInstrumentation;)V

    .line 150
    invoke-virtual {v0, v1, v2}, Lcom/facebook/analytics2/logger/UploadJobHandlerManager;->queueJob(Lcom/facebook/analytics2/logger/UploadJobHandler$InvocationParams;Lcom/facebook/analytics2/logger/UploadJobHandler$UploadJobHandlerCallback;)V

    .line 169
    :goto_0
    return-void

    .line 155
    :cond_0
    const-string v0, "com.facebook.analytics2.logger.USER_LOGOUT"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 156
    new-instance v1, Lcom/facebook/analytics2/logger/UploadServiceLogic$LogoutJobParams;

    invoke-virtual {p2}, Lcom/facebook/analytics2/logger/UploadServiceLogic$StartServiceParams;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    invoke-direct {v1, v0}, Lcom/facebook/analytics2/logger/UploadServiceLogic$LogoutJobParams;-><init>(Landroid/os/Bundle;)V

    .line 158
    iget-object v0, p0, Lcom/facebook/analytics2/logger/UploadServiceLogic;->mUploadJobHandlerManager:Lcom/facebook/analytics2/logger/UploadJobHandlerManager;

    invoke-static {v0}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/analytics2/logger/UploadJobHandlerManager;

    .line 161
    invoke-virtual {p2}, Lcom/facebook/analytics2/logger/UploadServiceLogic$StartServiceParams;->getJobId()I

    move-result v2

    .line 162
    invoke-virtual {p2}, Lcom/facebook/analytics2/logger/UploadServiceLogic$StartServiceParams;->getUploadJobConfig()Lcom/facebook/analytics2/logger/UploadJobConfig;

    move-result-object v3

    .line 163
    invoke-virtual {p2}, Lcom/facebook/analytics2/logger/UploadServiceLogic$StartServiceParams;->getHackAction()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 160
    invoke-static {v2, v3, v1}, Lcom/facebook/analytics2/logger/UploadJobHandler$InvocationParams;->forLogoutJob(ILcom/facebook/analytics2/logger/UploadJobConfig;Ljava/lang/String;)Lcom/facebook/analytics2/logger/UploadJobHandler$InvocationParams;

    move-result-object v1

    new-instance v2, Lcom/facebook/analytics2/logger/UploadServiceLogic$StopServiceJobHandlerCallback;

    .line 165
    invoke-virtual {p2}, Lcom/facebook/analytics2/logger/UploadServiceLogic$StartServiceParams;->getJobCallback()Lcom/facebook/analytics2/logger/UploadJobHandler$UploadJobHandlerCallback;

    move-result-object v3

    invoke-direct {v2, v3, p3, p4, p5}, Lcom/facebook/analytics2/logger/UploadServiceLogic$StopServiceJobHandlerCallback;-><init>(Lcom/facebook/analytics2/logger/UploadJobHandler$UploadJobHandlerCallback;Lcom/facebook/analytics2/logger/UploadServiceLogic$StopServiceCallback;Ljava/lang/String;Lcom/facebook/analytics2/logger/UploadJobInstrumentation;)V

    .line 159
    invoke-virtual {v0, v1, v2}, Lcom/facebook/analytics2/logger/UploadJobHandlerManager;->queueJob(Lcom/facebook/analytics2/logger/UploadJobHandler$InvocationParams;Lcom/facebook/analytics2/logger/UploadJobHandler$UploadJobHandlerCallback;)V

    goto :goto_0

    .line 167
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown action="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected runJobFromDirectMethodCall(Ljava/lang/String;Lcom/facebook/analytics2/logger/UploadServiceLogic$StartServiceParams;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v3

    move-object v5, v3

    .line 129
    invoke-direct/range {v0 .. v5}, Lcom/facebook/analytics2/logger/UploadServiceLogic;->runJobNow(Ljava/lang/String;Lcom/facebook/analytics2/logger/UploadServiceLogic$StartServiceParams;Lcom/facebook/analytics2/logger/UploadServiceLogic$StopServiceCallback;Ljava/lang/String;Lcom/facebook/analytics2/logger/UploadJobInstrumentation;)V

    .line 135
    return-void
.end method

.method public runJobFromService(Landroid/content/Intent;Lcom/facebook/analytics2/logger/UploadServiceLogic$StopServiceCallback;I)I
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 98
    if-nez p1, :cond_0

    .line 99
    :try_start_0
    new-instance v0, Lcom/facebook/analytics2/logger/IllegalRemoteArgumentException;

    const-string v1, "Received a null intent in runJobFromService, did you ever return START_STICKY?"

    invoke-direct {v0, v1}, Lcom/facebook/analytics2/logger/IllegalRemoteArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/facebook/analytics2/logger/IllegalRemoteArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 116
    :catch_0
    move-exception v0

    move-object v5, v4

    .line 117
    :goto_0
    const-string v1, "UploadServiceLogic"

    const-string v2, "Failure in runJobNow"

    invoke-static {v1, v2, v0}, Lcom/facebook/debug/log/BLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 118
    invoke-direct {p0, v4, v5}, Lcom/facebook/analytics2/logger/UploadServiceLogic;->maybeRecordUploadJobEnd(Ljava/lang/String;Lcom/facebook/analytics2/logger/UploadJobInstrumentation;)V

    .line 122
    :goto_1
    invoke-virtual {p2}, Lcom/facebook/analytics2/logger/UploadServiceLogic$StopServiceCallback;->stopService()V

    .line 123
    const/4 v0, 0x2

    :goto_2
    return v0

    .line 103
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/analytics2/logger/UploadServiceLogic;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/facebook/analytics2/logger/UploadServiceLogic$StartServiceParams;->paramsForService(Landroid/os/Bundle;Landroid/content/Context;)Lcom/facebook/analytics2/logger/UploadServiceLogic$StartServiceParams;

    move-result-object v2

    .line 104
    invoke-virtual {v2, p1}, Lcom/facebook/analytics2/logger/UploadServiceLogic$StartServiceParams;->acknowledgeServiceStarted(Landroid/content/Intent;)V

    .line 108
    invoke-virtual {v2}, Lcom/facebook/analytics2/logger/UploadServiceLogic$StartServiceParams;->getUploadJobConfig()Lcom/facebook/analytics2/logger/UploadJobConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/analytics2/logger/UploadJobConfig;->getUploadJobInstrumentationClass()Ljava/lang/String;

    move-result-object v0

    .line 107
    invoke-direct {p0, v0}, Lcom/facebook/analytics2/logger/UploadServiceLogic;->getUploadJobInstrumentation(Ljava/lang/String;)Lcom/facebook/analytics2/logger/UploadJobInstrumentation;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/facebook/analytics2/logger/IllegalRemoteArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v5

    .line 109
    if-eqz v5, :cond_1

    :try_start_2
    const-string v0, "SERVICE-"

    invoke-virtual {v2}, Lcom/facebook/analytics2/logger/UploadServiceLogic$StartServiceParams;->getJobId()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/facebook/analytics2/logger/UploadServiceLogic;->getJobName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 110
    :cond_1
    invoke-direct {p0, p3, v4, v5}, Lcom/facebook/analytics2/logger/UploadServiceLogic;->maybeRecordUploadJobStart(ILjava/lang/String;Lcom/facebook/analytics2/logger/UploadJobInstrumentation;)V

    .line 112
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    move-object v0, p0

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/facebook/analytics2/logger/UploadServiceLogic;->runJobNow(Ljava/lang/String;Lcom/facebook/analytics2/logger/UploadServiceLogic$StartServiceParams;Lcom/facebook/analytics2/logger/UploadServiceLogic$StopServiceCallback;Ljava/lang/String;Lcom/facebook/analytics2/logger/UploadJobInstrumentation;)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lcom/facebook/analytics2/logger/IllegalRemoteArgumentException; {:try_start_2 .. :try_end_2} :catch_1

    .line 114
    const/4 v0, 0x3

    goto :goto_2

    .line 119
    :catch_1
    move-exception v0

    .line 120
    const-string v1, "UploadServiceLogic"

    const-string v2, "Misunderstood service intent: %s"

    invoke-static {v1, v2, v0}, Lcom/facebook/debug/log/BLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 116
    :catch_2
    move-exception v0

    goto :goto_0
.end method

.method public runScheduledJob(ILjava/lang/String;Lcom/facebook/analytics2/logger/UploadJobConfig;Lcom/facebook/analytics2/logger/UploadServiceLogic$JobFinishedNotifier;I)V
    .locals 5
    .param p2    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 72
    invoke-virtual {p3}, Lcom/facebook/analytics2/logger/UploadJobConfig;->getUploadJobInstrumentationClass()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/analytics2/logger/UploadServiceLogic;->getUploadJobInstrumentation(Ljava/lang/String;)Lcom/facebook/analytics2/logger/UploadJobInstrumentation;

    move-result-object v2

    .line 73
    if-eqz v2, :cond_1

    const-string v0, "JOB-"

    invoke-direct {p0, v0, p1}, Lcom/facebook/analytics2/logger/UploadServiceLogic;->getJobName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 74
    :goto_0
    invoke-direct {p0, p5, v1, v2}, Lcom/facebook/analytics2/logger/UploadServiceLogic;->maybeRecordUploadJobStart(ILjava/lang/String;Lcom/facebook/analytics2/logger/UploadJobInstrumentation;)V

    .line 76
    iget-object v0, p0, Lcom/facebook/analytics2/logger/UploadServiceLogic;->mUploadJobHandlerManager:Lcom/facebook/analytics2/logger/UploadJobHandlerManager;

    .line 77
    invoke-static {v0}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/analytics2/logger/UploadJobHandlerManager;

    .line 79
    invoke-static {p1, p2, p3}, Lcom/facebook/analytics2/logger/UploadJobHandler$InvocationParams;->forJob(ILjava/lang/String;Lcom/facebook/analytics2/logger/UploadJobConfig;)Lcom/facebook/analytics2/logger/UploadJobHandler$InvocationParams;

    move-result-object v3

    new-instance v4, Lcom/facebook/analytics2/logger/UploadServiceLogic$ForwardingJobHandlerCallback;

    invoke-direct {v4, p4, v1, v2}, Lcom/facebook/analytics2/logger/UploadServiceLogic$ForwardingJobHandlerCallback;-><init>(Lcom/facebook/analytics2/logger/UploadServiceLogic$JobFinishedNotifier;Ljava/lang/String;Lcom/facebook/analytics2/logger/UploadJobInstrumentation;)V

    .line 78
    invoke-virtual {v0, v3, v4}, Lcom/facebook/analytics2/logger/UploadJobHandlerManager;->maybeRunJobNow(Lcom/facebook/analytics2/logger/UploadJobHandler$InvocationParams;Lcom/facebook/analytics2/logger/UploadJobHandler$UploadJobHandlerCallback;)Z

    move-result v0

    .line 82
    if-nez v0, :cond_0

    .line 83
    const/4 v0, 0x1

    invoke-interface {p4, v0}, Lcom/facebook/analytics2/logger/UploadServiceLogic$JobFinishedNotifier;->onVoluntaryCompletion(Z)V

    .line 84
    invoke-direct {p0, v1, v2}, Lcom/facebook/analytics2/logger/UploadServiceLogic;->maybeRecordUploadJobEnd(Ljava/lang/String;Lcom/facebook/analytics2/logger/UploadJobInstrumentation;)V

    .line 86
    :cond_0
    return-void

    .line 73
    :cond_1
    const/4 v0, 0x0

    move-object v1, v0

    goto :goto_0
.end method

.method public stopScheduledJob(I)V
    .locals 3

    .prologue
    .line 89
    const-string v0, "UploadServiceLogic"

    const-string v1, "stopScheduledJob called with jobId: %d"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 90
    iget-object v0, p0, Lcom/facebook/analytics2/logger/UploadServiceLogic;->mUploadJobHandlerManager:Lcom/facebook/analytics2/logger/UploadJobHandlerManager;

    invoke-static {v0}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/analytics2/logger/UploadJobHandlerManager;

    invoke-virtual {v0, p1}, Lcom/facebook/analytics2/logger/UploadJobHandlerManager;->haltCurrentJob(I)V

    .line 91
    return-void
.end method
