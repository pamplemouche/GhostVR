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
.field static final ACTION_PREFIX:Ljava/lang/String; = "com.facebook.analytics2.logger"

.field public static final ACTION_RUN_UPLOAD_NOW:Ljava/lang/String; = "com.facebook.analytics2.logger.UPLOAD_NOW"

.field public static final ACTION_START_JOB_FOR_LOGOUT:Ljava/lang/String; = "com.facebook.analytics2.logger.USER_LOGOUT"

.field public static final EXTRA_ACTION_STR:Ljava/lang/String; = "action"

.field public static final EXTRA_VERSION_CODE:Ljava/lang/String; = "__VERSION_CODE"

.field private static final SERVICE_WAKELOCK_EXPIRY_MS:J

.field private static final TAG:Ljava/lang/String; = "UploadServiceLogic"

.field private static sInstance:Lcom/facebook/analytics2/logger/UploadServiceLogic;
    .annotation build Ljavax/annotation/Nullable;
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
    .locals 3

    .line 44
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x3c

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/facebook/analytics2/logger/UploadServiceLogic;->SERVICE_WAKELOCK_EXPIRY_MS:J

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

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

    return-void
.end method

.method static synthetic access$000()J
    .locals 2

    .line 34
    sget-wide v0, Lcom/facebook/analytics2/logger/UploadServiceLogic;->SERVICE_WAKELOCK_EXPIRY_MS:J

    return-wide v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/facebook/analytics2/logger/UploadServiceLogic;
    .locals 2

    const-class v0, Lcom/facebook/analytics2/logger/UploadServiceLogic;

    monitor-enter v0

    .line 54
    :try_start_0
    sget-object v1, Lcom/facebook/analytics2/logger/UploadServiceLogic;->sInstance:Lcom/facebook/analytics2/logger/UploadServiceLogic;

    if-nez v1, :cond_0

    .line 55
    new-instance v1, Lcom/facebook/analytics2/logger/UploadServiceLogic;

    invoke-direct {v1, p0}, Lcom/facebook/analytics2/logger/UploadServiceLogic;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/facebook/analytics2/logger/UploadServiceLogic;->sInstance:Lcom/facebook/analytics2/logger/UploadServiceLogic;

    .line 57
    :cond_0
    sget-object p0, Lcom/facebook/analytics2/logger/UploadServiceLogic;->sInstance:Lcom/facebook/analytics2/logger/UploadServiceLogic;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private getJobName(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3

    .line 198
    :try_start_0
    iget-object v0, p0, Lcom/facebook/analytics2/logger/UploadServiceLogic;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    const/4 v0, 0x1

    .line 200
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "UploadServiceLogic"

    const-string v2, "Resource not found for id: %d"

    invoke-static {v1, p1, v2, v0}, Lcom/facebook/debug/log/BLog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 201
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getUploadJobInstrumentation(Ljava/lang/String;)Lcom/facebook/analytics2/logger/UploadJobInstrumentation;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Ljavax/annotation/Nullable;
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/facebook/analytics2/logger/UploadServiceLogic;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/facebook/analytics2/logger/ContextConstructorHelper;->getInstance(Landroid/content/Context;)Lcom/facebook/analytics2/logger/ContextConstructorHelper;

    move-result-object v0

    .line 191
    invoke-virtual {v0, p1}, Lcom/facebook/analytics2/logger/ContextConstructorHelper;->getUploadJobInstrumentation(Ljava/lang/String;)Lcom/facebook/analytics2/logger/UploadJobInstrumentation;

    move-result-object p1

    return-object p1
.end method

.method private maybeRecordUploadJobEnd(Ljava/lang/String;Lcom/facebook/analytics2/logger/UploadJobInstrumentation;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/facebook/analytics2/logger/UploadJobInstrumentation;
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p2, :cond_0

    .line 180
    invoke-static {p1}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-interface {p2, p1}, Lcom/facebook/analytics2/logger/UploadJobInstrumentation;->recordUploadJobStop(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private maybeRecordUploadJobStart(ILjava/lang/String;Lcom/facebook/analytics2/logger/UploadJobInstrumentation;)V
    .locals 0
    .param p2    # Ljava/lang/String;
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/facebook/analytics2/logger/UploadJobInstrumentation;
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p3, :cond_0

    .line 173
    invoke-static {p2}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-interface {p3, p1, p2}, Lcom/facebook/analytics2/logger/UploadJobInstrumentation;->recordUploadJobStart(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method private runJobNow(Ljava/lang/String;Lcom/facebook/analytics2/logger/UploadServiceLogic$StartServiceParams;Lcom/facebook/analytics2/logger/UploadServiceLogic$StopServiceCallback;Ljava/lang/String;Lcom/facebook/analytics2/logger/UploadJobInstrumentation;)V
    .locals 3
    .param p3    # Lcom/facebook/analytics2/logger/UploadServiceLogic$StopServiceCallback;
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Lcom/facebook/analytics2/logger/UploadJobInstrumentation;
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const-string v0, "com.facebook.analytics2.logger.UPLOAD_NOW"

    .line 148
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    iget-object p1, p0, Lcom/facebook/analytics2/logger/UploadServiceLogic;->mUploadJobHandlerManager:Lcom/facebook/analytics2/logger/UploadJobHandlerManager;

    invoke-static {p1}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/facebook/analytics2/logger/UploadJobHandlerManager;

    .line 152
    invoke-virtual {p2}, Lcom/facebook/analytics2/logger/UploadServiceLogic$StartServiceParams;->getJobId()I

    move-result v0

    invoke-virtual {p2}, Lcom/facebook/analytics2/logger/UploadServiceLogic$StartServiceParams;->getHackAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/facebook/analytics2/logger/UploadServiceLogic$StartServiceParams;->getUploadJobConfig()Lcom/facebook/analytics2/logger/UploadJobConfig;

    move-result-object v2

    .line 151
    invoke-static {v0, v1, v2}, Lcom/facebook/analytics2/logger/UploadJobHandler$InvocationParams;->forJob(ILjava/lang/String;Lcom/facebook/analytics2/logger/UploadJobConfig;)Lcom/facebook/analytics2/logger/UploadJobHandler$InvocationParams;

    move-result-object v0

    new-instance v1, Lcom/facebook/analytics2/logger/UploadServiceLogic$StopServiceJobHandlerCallback;

    .line 154
    invoke-virtual {p2}, Lcom/facebook/analytics2/logger/UploadServiceLogic$StartServiceParams;->getJobCallback()Lcom/facebook/analytics2/logger/UploadJobHandler$UploadJobHandlerCallback;

    move-result-object p2

    invoke-direct {v1, p2, p3, p4, p5}, Lcom/facebook/analytics2/logger/UploadServiceLogic$StopServiceJobHandlerCallback;-><init>(Lcom/facebook/analytics2/logger/UploadJobHandler$UploadJobHandlerCallback;Lcom/facebook/analytics2/logger/UploadServiceLogic$StopServiceCallback;Ljava/lang/String;Lcom/facebook/analytics2/logger/UploadJobInstrumentation;)V

    .line 150
    invoke-virtual {p1, v0, v1}, Lcom/facebook/analytics2/logger/UploadJobHandlerManager;->queueJob(Lcom/facebook/analytics2/logger/UploadJobHandler$InvocationParams;Lcom/facebook/analytics2/logger/UploadJobHandler$UploadJobHandlerCallback;)V

    goto :goto_0

    :cond_0
    const-string v0, "com.facebook.analytics2.logger.USER_LOGOUT"

    .line 155
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 156
    new-instance p1, Lcom/facebook/analytics2/logger/UploadServiceLogic$LogoutJobParams;

    invoke-virtual {p2}, Lcom/facebook/analytics2/logger/UploadServiceLogic$StartServiceParams;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/facebook/analytics2/logger/UploadServiceLogic$LogoutJobParams;-><init>(Landroid/os/Bundle;)V

    .line 157
    iget-object p1, p0, Lcom/facebook/analytics2/logger/UploadServiceLogic;->mUploadJobHandlerManager:Lcom/facebook/analytics2/logger/UploadJobHandlerManager;

    invoke-static {p1}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/facebook/analytics2/logger/UploadJobHandlerManager;

    .line 160
    invoke-virtual {p2}, Lcom/facebook/analytics2/logger/UploadServiceLogic$StartServiceParams;->getJobId()I

    move-result v0

    invoke-virtual {p2}, Lcom/facebook/analytics2/logger/UploadServiceLogic$StartServiceParams;->getUploadJobConfig()Lcom/facebook/analytics2/logger/UploadJobConfig;

    move-result-object v1

    invoke-virtual {p2}, Lcom/facebook/analytics2/logger/UploadServiceLogic$StartServiceParams;->getHackAction()Ljava/lang/String;

    move-result-object v2

    .line 159
    invoke-static {v0, v1, v2}, Lcom/facebook/analytics2/logger/UploadJobHandler$InvocationParams;->forLogoutJob(ILcom/facebook/analytics2/logger/UploadJobConfig;Ljava/lang/String;)Lcom/facebook/analytics2/logger/UploadJobHandler$InvocationParams;

    move-result-object v0

    new-instance v1, Lcom/facebook/analytics2/logger/UploadServiceLogic$StopServiceJobHandlerCallback;

    .line 162
    invoke-virtual {p2}, Lcom/facebook/analytics2/logger/UploadServiceLogic$StartServiceParams;->getJobCallback()Lcom/facebook/analytics2/logger/UploadJobHandler$UploadJobHandlerCallback;

    move-result-object p2

    invoke-direct {v1, p2, p3, p4, p5}, Lcom/facebook/analytics2/logger/UploadServiceLogic$StopServiceJobHandlerCallback;-><init>(Lcom/facebook/analytics2/logger/UploadJobHandler$UploadJobHandlerCallback;Lcom/facebook/analytics2/logger/UploadServiceLogic$StopServiceCallback;Ljava/lang/String;Lcom/facebook/analytics2/logger/UploadJobInstrumentation;)V

    .line 158
    invoke-virtual {p1, v0, v1}, Lcom/facebook/analytics2/logger/UploadJobHandlerManager;->queueJob(Lcom/facebook/analytics2/logger/UploadJobHandler$InvocationParams;Lcom/facebook/analytics2/logger/UploadJobHandler$UploadJobHandlerCallback;)V

    :goto_0
    return-void

    .line 164
    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Unknown action="

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method


# virtual methods
.method protected runJobFromDirectMethodCall(Ljava/lang/String;Lcom/facebook/analytics2/logger/UploadServiceLogic$StartServiceParams;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 129
    invoke-direct/range {v0 .. v5}, Lcom/facebook/analytics2/logger/UploadServiceLogic;->runJobNow(Ljava/lang/String;Lcom/facebook/analytics2/logger/UploadServiceLogic$StartServiceParams;Lcom/facebook/analytics2/logger/UploadServiceLogic$StopServiceCallback;Ljava/lang/String;Lcom/facebook/analytics2/logger/UploadJobInstrumentation;)V

    return-void
.end method

.method public runJobFromService(Landroid/content/Intent;Lcom/facebook/analytics2/logger/UploadServiceLogic$StopServiceCallback;I)I
    .locals 10

    const-string v0, "UploadServiceLogic"

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 103
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/analytics2/logger/UploadServiceLogic;->mContext:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/facebook/analytics2/logger/UploadServiceLogic$StartServiceParams;->paramsForService(Landroid/os/Bundle;Landroid/content/Context;)Lcom/facebook/analytics2/logger/UploadServiceLogic$StartServiceParams;

    move-result-object v6

    .line 104
    invoke-virtual {v6, p1}, Lcom/facebook/analytics2/logger/UploadServiceLogic$StartServiceParams;->acknowledgeServiceStarted(Landroid/content/Intent;)V

    .line 108
    invoke-virtual {v6}, Lcom/facebook/analytics2/logger/UploadServiceLogic$StartServiceParams;->getUploadJobConfig()Lcom/facebook/analytics2/logger/UploadJobConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/analytics2/logger/UploadJobConfig;->getUploadJobInstrumentationClass()Ljava/lang/String;

    move-result-object v2

    .line 107
    invoke-direct {p0, v2}, Lcom/facebook/analytics2/logger/UploadServiceLogic;->getUploadJobInstrumentation(Ljava/lang/String;)Lcom/facebook/analytics2/logger/UploadJobInstrumentation;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/facebook/analytics2/logger/IllegalRemoteArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v2, :cond_0

    :try_start_1
    const-string v3, "SERVICE-"

    .line 109
    invoke-virtual {v6}, Lcom/facebook/analytics2/logger/UploadServiceLogic$StartServiceParams;->getJobId()I

    move-result v4

    invoke-direct {p0, v3, v4}, Lcom/facebook/analytics2/logger/UploadServiceLogic;->getJobName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_2

    .line 110
    :cond_0
    :goto_0
    invoke-direct {p0, p3, v1, v2}, Lcom/facebook/analytics2/logger/UploadServiceLogic;->maybeRecordUploadJobStart(ILjava/lang/String;Lcom/facebook/analytics2/logger/UploadJobInstrumentation;)V

    .line 112
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    move-object v4, p0

    move-object v7, p2

    move-object v8, v1

    move-object v9, v2

    invoke-direct/range {v4 .. v9}, Lcom/facebook/analytics2/logger/UploadServiceLogic;->runJobNow(Ljava/lang/String;Lcom/facebook/analytics2/logger/UploadServiceLogic$StartServiceParams;Lcom/facebook/analytics2/logger/UploadServiceLogic$StopServiceCallback;Ljava/lang/String;Lcom/facebook/analytics2/logger/UploadJobInstrumentation;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/facebook/analytics2/logger/IllegalRemoteArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    const/4 p1, 0x3

    return p1

    :catch_1
    move-exception p1

    goto :goto_1

    :catch_2
    move-exception p1

    move-object v2, v1

    goto :goto_2

    .line 99
    :cond_1
    :try_start_2
    new-instance p1, Lcom/facebook/analytics2/logger/IllegalRemoteArgumentException;

    const-string p3, "Received a null intent in runJobFromService, did you ever return START_STICKY?"

    invoke-direct {p1, p3}, Lcom/facebook/analytics2/logger/IllegalRemoteArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lcom/facebook/analytics2/logger/IllegalRemoteArgumentException; {:try_start_2 .. :try_end_2} :catch_1

    :goto_1
    const-string p3, "Misunderstood service intent: %s"

    .line 120
    invoke-static {v0, p3, p1}, Lcom/facebook/debug/log/BLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    :goto_2
    const-string p3, "Failure in runJobNow"

    .line 117
    invoke-static {v0, p3, p1}, Lcom/facebook/debug/log/BLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 118
    invoke-direct {p0, v1, v2}, Lcom/facebook/analytics2/logger/UploadServiceLogic;->maybeRecordUploadJobEnd(Ljava/lang/String;Lcom/facebook/analytics2/logger/UploadJobInstrumentation;)V

    .line 122
    :goto_3
    invoke-virtual {p2}, Lcom/facebook/analytics2/logger/UploadServiceLogic$StopServiceCallback;->stopService()V

    const/4 p1, 0x2

    return p1
.end method

.method public runScheduledJob(ILjava/lang/String;Lcom/facebook/analytics2/logger/UploadJobConfig;Lcom/facebook/analytics2/logger/UploadServiceLogic$JobFinishedNotifier;I)V
    .locals 2
    .param p2    # Ljava/lang/String;
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 72
    invoke-virtual {p3}, Lcom/facebook/analytics2/logger/UploadJobConfig;->getUploadJobInstrumentationClass()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/analytics2/logger/UploadServiceLogic;->getUploadJobInstrumentation(Ljava/lang/String;)Lcom/facebook/analytics2/logger/UploadJobInstrumentation;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "JOB-"

    .line 73
    invoke-direct {p0, v1, p1}, Lcom/facebook/analytics2/logger/UploadServiceLogic;->getJobName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 74
    :goto_0
    invoke-direct {p0, p5, v1, v0}, Lcom/facebook/analytics2/logger/UploadServiceLogic;->maybeRecordUploadJobStart(ILjava/lang/String;Lcom/facebook/analytics2/logger/UploadJobInstrumentation;)V

    .line 76
    iget-object p5, p0, Lcom/facebook/analytics2/logger/UploadServiceLogic;->mUploadJobHandlerManager:Lcom/facebook/analytics2/logger/UploadJobHandlerManager;

    .line 77
    invoke-static {p5}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lcom/facebook/analytics2/logger/UploadJobHandlerManager;

    .line 79
    invoke-static {p1, p2, p3}, Lcom/facebook/analytics2/logger/UploadJobHandler$InvocationParams;->forJob(ILjava/lang/String;Lcom/facebook/analytics2/logger/UploadJobConfig;)Lcom/facebook/analytics2/logger/UploadJobHandler$InvocationParams;

    move-result-object p1

    new-instance p2, Lcom/facebook/analytics2/logger/UploadServiceLogic$ForwardingJobHandlerCallback;

    invoke-direct {p2, p4, v1, v0}, Lcom/facebook/analytics2/logger/UploadServiceLogic$ForwardingJobHandlerCallback;-><init>(Lcom/facebook/analytics2/logger/UploadServiceLogic$JobFinishedNotifier;Ljava/lang/String;Lcom/facebook/analytics2/logger/UploadJobInstrumentation;)V

    .line 78
    invoke-virtual {p5, p1, p2}, Lcom/facebook/analytics2/logger/UploadJobHandlerManager;->maybeRunJobNow(Lcom/facebook/analytics2/logger/UploadJobHandler$InvocationParams;Lcom/facebook/analytics2/logger/UploadJobHandler$UploadJobHandlerCallback;)Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    .line 83
    invoke-interface {p4, p1}, Lcom/facebook/analytics2/logger/UploadServiceLogic$JobFinishedNotifier;->onVoluntaryCompletion(Z)V

    .line 84
    invoke-direct {p0, v1, v0}, Lcom/facebook/analytics2/logger/UploadServiceLogic;->maybeRecordUploadJobEnd(Ljava/lang/String;Lcom/facebook/analytics2/logger/UploadJobInstrumentation;)V

    :cond_1
    return-void
.end method

.method public stopScheduledJob(I)V
    .locals 3

    .line 89
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "UploadServiceLogic"

    const-string v2, "stopScheduledJob called with jobId: %d"

    invoke-static {v1, v2, v0}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 90
    iget-object v0, p0, Lcom/facebook/analytics2/logger/UploadServiceLogic;->mUploadJobHandlerManager:Lcom/facebook/analytics2/logger/UploadJobHandlerManager;

    invoke-static {v0}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/analytics2/logger/UploadJobHandlerManager;

    invoke-virtual {v0, p1}, Lcom/facebook/analytics2/logger/UploadJobHandlerManager;->haltCurrentJob(I)V

    return-void
.end method
