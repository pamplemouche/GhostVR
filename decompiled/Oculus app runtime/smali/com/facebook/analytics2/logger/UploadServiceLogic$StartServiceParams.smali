.class public Lcom/facebook/analytics2/logger/UploadServiceLogic$StartServiceParams;
.super Ljava/lang/Object;
.source "UploadServiceLogic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/analytics2/logger/UploadServiceLogic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StartServiceParams"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/analytics2/logger/UploadServiceLogic$StartServiceParams$ReSchedulingWakeLockCallback;,
        Lcom/facebook/analytics2/logger/UploadServiceLogic$StartServiceParams$ServiceCallbackHandler;
    }
.end annotation


# static fields
.field private static final EXTRA_EXTRAS:Ljava/lang/String; = "_extras"

.field private static final EXTRA_FALLBACK_CONFIG:Ljava/lang/String; = "_fallback_config"

.field private static final EXTRA_HACK_ACTION:Ljava/lang/String; = "_hack_action"

.field private static final EXTRA_JOB_ID:Ljava/lang/String; = "_job_id"

.field private static final EXTRA_MESSENGER:Ljava/lang/String; = "_messenger"

.field private static final EXTRA_UPLOAD_JOB_CONFIG:Ljava/lang/String; = "_upload_job_config"

.field private static sHandlerStrongReferences:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "StartServiceParams.this"
    .end annotation
.end field


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mExtras:Landroid/os/Bundle;
    .annotation build Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mFallbackConfig:Lcom/facebook/analytics2/logger/UploadServiceLogic$FallbackConfig;
    .annotation build Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mHackAction:Ljava/lang/String;
    .annotation build Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mJobCallback:Lcom/facebook/analytics2/logger/UploadJobHandler$UploadJobHandlerCallback;
    .annotation build Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mJobId:I

.field private final mMessenger:Landroid/os/Messenger;
    .annotation build Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mUploadJobConfig:Lcom/facebook/analytics2/logger/UploadJobConfig;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method private constructor <init>(Landroid/os/Messenger;Landroid/os/Bundle;Ljava/lang/String;Lcom/facebook/analytics2/logger/UploadJobConfig;ILcom/facebook/analytics2/logger/UploadServiceLogic$FallbackConfig;Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/os/Messenger;
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Lcom/facebook/analytics2/logger/UploadServiceLogic$FallbackConfig;
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 354
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 356
    iput-object p1, p0, Lcom/facebook/analytics2/logger/UploadServiceLogic$StartServiceParams;->mMessenger:Landroid/os/Messenger;

    .line 357
    iput-object p2, p0, Lcom/facebook/analytics2/logger/UploadServiceLogic$StartServiceParams;->mExtras:Landroid/os/Bundle;

    .line 358
    iput-object p3, p0, Lcom/facebook/analytics2/logger/UploadServiceLogic$StartServiceParams;->mHackAction:Ljava/lang/String;

    .line 359
    iput-object p4, p0, Lcom/facebook/analytics2/logger/UploadServiceLogic$StartServiceParams;->mUploadJobConfig:Lcom/facebook/analytics2/logger/UploadJobConfig;

    .line 360
    iput p5, p0, Lcom/facebook/analytics2/logger/UploadServiceLogic$StartServiceParams;->mJobId:I

    .line 361
    iput-object p7, p0, Lcom/facebook/analytics2/logger/UploadServiceLogic$StartServiceParams;->mContext:Landroid/content/Context;

    .line 362
    iput-object p6, p0, Lcom/facebook/analytics2/logger/UploadServiceLogic$StartServiceParams;->mFallbackConfig:Lcom/facebook/analytics2/logger/UploadServiceLogic$FallbackConfig;

    return-void
.end method

.method static synthetic access$100()Ljava/util/List;
    .locals 1

    .line 314
    invoke-static {}, Lcom/facebook/analytics2/logger/UploadServiceLogic$StartServiceParams;->getHandlerStrongReferences()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/facebook/analytics2/logger/UploadServiceLogic$StartServiceParams;)Lcom/facebook/analytics2/logger/UploadServiceLogic$FallbackConfig;
    .locals 0

    .line 314
    iget-object p0, p0, Lcom/facebook/analytics2/logger/UploadServiceLogic$StartServiceParams;->mFallbackConfig:Lcom/facebook/analytics2/logger/UploadServiceLogic$FallbackConfig;

    return-object p0
.end method

.method static synthetic access$300(Lcom/facebook/analytics2/logger/UploadServiceLogic$StartServiceParams;)I
    .locals 0

    .line 314
    iget p0, p0, Lcom/facebook/analytics2/logger/UploadServiceLogic$StartServiceParams;->mJobId:I

    return p0
.end method

.method static synthetic access$400(Lcom/facebook/analytics2/logger/UploadServiceLogic$StartServiceParams;)Lcom/facebook/analytics2/logger/UploadJobConfig;
    .locals 0

    .line 314
    iget-object p0, p0, Lcom/facebook/analytics2/logger/UploadServiceLogic$StartServiceParams;->mUploadJobConfig:Lcom/facebook/analytics2/logger/UploadJobConfig;

    return-object p0
.end method

.method static synthetic access$500(Lcom/facebook/analytics2/logger/UploadServiceLogic$StartServiceParams;)Landroid/os/PowerManager$WakeLock;
    .locals 0

    .line 314
    iget-object p0, p0, Lcom/facebook/analytics2/logger/UploadServiceLogic$StartServiceParams;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object p0
.end method

.method private static getHandlerStrongReferences()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation

    .line 328
    const-class v0, Lcom/facebook/analytics2/logger/UploadServiceLogic$StartServiceParams;

    monitor-enter v0

    .line 329
    :try_start_0
    sget-object v1, Lcom/facebook/analytics2/logger/UploadServiceLogic$StartServiceParams;->sHandlerStrongReferences:Ljava/util/List;

    if-nez v1, :cond_0

    .line 330
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {v1}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Lcom/facebook/analytics2/logger/UploadServiceLogic$StartServiceParams;->sHandlerStrongReferences:Ljava/util/List;

    .line 332
    :cond_0
    sget-object v1, Lcom/facebook/analytics2/logger/UploadServiceLogic$StartServiceParams;->sHandlerStrongReferences:Ljava/util/List;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 333
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static paramsForClient(Lcom/facebook/analytics2/logger/UploadServiceLogic$ServiceCallback;Landroid/os/Bundle;Ljava/lang/String;Lcom/facebook/analytics2/logger/UploadJobConfig;ILcom/facebook/analytics2/logger/UploadServiceLogic$FallbackConfig;)Lcom/facebook/analytics2/logger/UploadServiceLogic$StartServiceParams;
    .locals 8
    .param p0    # Lcom/facebook/analytics2/logger/UploadServiceLogic$ServiceCallback;
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Landroid/os/Bundle;
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Lcom/facebook/analytics2/logger/UploadServiceLogic$FallbackConfig;
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p0, :cond_0

    .line 375
    new-instance v0, Lcom/facebook/analytics2/logger/UploadServiceLogic$StartServiceParams$ServiceCallbackHandler;

    invoke-direct {v0, p0}, Lcom/facebook/analytics2/logger/UploadServiceLogic$StartServiceParams$ServiceCallbackHandler;-><init>(Lcom/facebook/analytics2/logger/UploadServiceLogic$ServiceCallback;)V

    .line 376
    new-instance p0, Landroid/os/Messenger;

    invoke-direct {p0, v0}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    .line 378
    invoke-static {}, Lcom/facebook/analytics2/logger/UploadServiceLogic$StartServiceParams;->getHandlerStrongReferences()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    move-object v1, p0

    .line 380
    new-instance p0, Lcom/facebook/analytics2/logger/UploadServiceLogic$StartServiceParams;

    const/4 v7, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/facebook/analytics2/logger/UploadServiceLogic$StartServiceParams;-><init>(Landroid/os/Messenger;Landroid/os/Bundle;Ljava/lang/String;Lcom/facebook/analytics2/logger/UploadJobConfig;ILcom/facebook/analytics2/logger/UploadServiceLogic$FallbackConfig;Landroid/content/Context;)V

    return-object p0
.end method

.method public static paramsForService(Landroid/os/Bundle;Landroid/content/Context;)Lcom/facebook/analytics2/logger/UploadServiceLogic$StartServiceParams;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/analytics2/logger/IllegalRemoteArgumentException;
        }
    .end annotation

    const-string v0, "_messenger"

    .line 386
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/os/Messenger;

    const-string v0, "_extras"

    .line 387
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    const-string v0, "_hack_action"

    .line 388
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v0, -0x1

    const-string v1, "_job_id"

    .line 389
    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    if-eq v6, v0, :cond_1

    const-string v0, "_fallback_config"

    .line 393
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 395
    new-instance v9, Lcom/facebook/analytics2/logger/UploadServiceLogic$StartServiceParams;

    new-instance v5, Lcom/facebook/analytics2/logger/UploadJobConfig;

    const-string v1, "_upload_job_config"

    .line 399
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    invoke-direct {v5, p0}, Lcom/facebook/analytics2/logger/UploadJobConfig;-><init>(Landroid/os/Bundle;)V

    if-eqz v0, :cond_0

    new-instance p0, Lcom/facebook/analytics2/logger/UploadServiceLogic$FallbackConfig;

    invoke-direct {p0, v0}, Lcom/facebook/analytics2/logger/UploadServiceLogic$FallbackConfig;-><init>(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    move-object v7, p0

    move-object v1, v9

    move-object v8, p1

    invoke-direct/range {v1 .. v8}, Lcom/facebook/analytics2/logger/UploadServiceLogic$StartServiceParams;-><init>(Landroid/os/Messenger;Landroid/os/Bundle;Ljava/lang/String;Lcom/facebook/analytics2/logger/UploadJobConfig;ILcom/facebook/analytics2/logger/UploadServiceLogic$FallbackConfig;Landroid/content/Context;)V

    return-object v9

    .line 391
    :cond_1
    new-instance p1, Lcom/facebook/analytics2/logger/IllegalRemoteArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_job_id is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/facebook/analytics2/logger/IllegalRemoteArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public acknowledgeServiceStarted(Landroid/content/Intent;)V
    .locals 3

    .line 426
    iget-object v0, p0, Lcom/facebook/analytics2/logger/UploadServiceLogic$StartServiceParams;->mContext:Landroid/content/Context;

    .line 427
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 428
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UploadServiceLogic-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 431
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/ComponentName;->getShortClassName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "-service-"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/facebook/analytics2/logger/UploadServiceLogic$StartServiceParams;->mJobId:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    .line 429
    invoke-virtual {v0, v1, p1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/analytics2/logger/UploadServiceLogic$StartServiceParams;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 433
    iget-object p1, p0, Lcom/facebook/analytics2/logger/UploadServiceLogic$StartServiceParams;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 435
    iget-object p1, p0, Lcom/facebook/analytics2/logger/UploadServiceLogic$StartServiceParams;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-static {}, Lcom/facebook/analytics2/logger/UploadServiceLogic;->access$000()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 437
    iget-object p1, p0, Lcom/facebook/analytics2/logger/UploadServiceLogic$StartServiceParams;->mMessenger:Landroid/os/Messenger;

    if-eqz p1, :cond_0

    .line 439
    :try_start_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "UploadServiceLogic"

    const-string v0, "The peer died unexpectedly, possible wakelock gap detected."

    .line 441
    invoke-static {p1, v0}, Lcom/facebook/debug/log/BLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public asBundle()Landroid/os/Bundle;
    .locals 3

    .line 406
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 407
    iget-object v1, p0, Lcom/facebook/analytics2/logger/UploadServiceLogic$StartServiceParams;->mMessenger:Landroid/os/Messenger;

    const-string v2, "_messenger"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 408
    iget-object v1, p0, Lcom/facebook/analytics2/logger/UploadServiceLogic$StartServiceParams;->mExtras:Landroid/os/Bundle;

    const-string v2, "_extras"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 409
    iget-object v1, p0, Lcom/facebook/analytics2/logger/UploadServiceLogic$StartServiceParams;->mHackAction:Ljava/lang/String;

    const-string v2, "_hack_action"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    new-instance v1, Landroid/os/Bundle;

    iget-object v2, p0, Lcom/facebook/analytics2/logger/UploadServiceLogic$StartServiceParams;->mUploadJobConfig:Lcom/facebook/analytics2/logger/UploadJobConfig;

    invoke-virtual {v2}, Lcom/facebook/analytics2/logger/UploadJobConfig;->toBundle()Landroid/os/Bundle;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    const-string v2, "_upload_job_config"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 411
    iget v1, p0, Lcom/facebook/analytics2/logger/UploadServiceLogic$StartServiceParams;->mJobId:I

    const-string v2, "_job_id"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 412
    iget-object v1, p0, Lcom/facebook/analytics2/logger/UploadServiceLogic$StartServiceParams;->mFallbackConfig:Lcom/facebook/analytics2/logger/UploadServiceLogic$FallbackConfig;

    if-eqz v1, :cond_0

    .line 413
    invoke-virtual {v1}, Lcom/facebook/analytics2/logger/UploadServiceLogic$FallbackConfig;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "_fallback_config"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    return-object v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    .line 451
    iget-object v0, p0, Lcom/facebook/analytics2/logger/UploadServiceLogic$StartServiceParams;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public getHackAction()Ljava/lang/String;
    .locals 1
    .annotation build Ljavax/annotation/Nullable;
    .end annotation

    .line 456
    iget-object v0, p0, Lcom/facebook/analytics2/logger/UploadServiceLogic$StartServiceParams;->mHackAction:Ljava/lang/String;

    return-object v0
.end method

.method public getJobCallback()Lcom/facebook/analytics2/logger/UploadJobHandler$UploadJobHandlerCallback;
    .locals 2

    .line 419
    iget-object v0, p0, Lcom/facebook/analytics2/logger/UploadServiceLogic$StartServiceParams;->mJobCallback:Lcom/facebook/analytics2/logger/UploadJobHandler$UploadJobHandlerCallback;

    if-nez v0, :cond_0

    .line 420
    new-instance v0, Lcom/facebook/analytics2/logger/UploadServiceLogic$StartServiceParams$ReSchedulingWakeLockCallback;

    iget-object v1, p0, Lcom/facebook/analytics2/logger/UploadServiceLogic$StartServiceParams;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/facebook/analytics2/logger/UploadScheduler;->getInstance(Landroid/content/Context;)Lcom/facebook/analytics2/logger/UploadScheduler;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/facebook/analytics2/logger/UploadServiceLogic$StartServiceParams$ReSchedulingWakeLockCallback;-><init>(Lcom/facebook/analytics2/logger/UploadServiceLogic$StartServiceParams;Lcom/facebook/analytics2/logger/UploadScheduler;)V

    iput-object v0, p0, Lcom/facebook/analytics2/logger/UploadServiceLogic$StartServiceParams;->mJobCallback:Lcom/facebook/analytics2/logger/UploadJobHandler$UploadJobHandlerCallback;

    .line 422
    :cond_0
    iget-object v0, p0, Lcom/facebook/analytics2/logger/UploadServiceLogic$StartServiceParams;->mJobCallback:Lcom/facebook/analytics2/logger/UploadJobHandler$UploadJobHandlerCallback;

    return-object v0
.end method

.method public getJobId()I
    .locals 1

    .line 464
    iget v0, p0, Lcom/facebook/analytics2/logger/UploadServiceLogic$StartServiceParams;->mJobId:I

    return v0
.end method

.method public getMessenger()Landroid/os/Messenger;
    .locals 1

    .line 447
    iget-object v0, p0, Lcom/facebook/analytics2/logger/UploadServiceLogic$StartServiceParams;->mMessenger:Landroid/os/Messenger;

    return-object v0
.end method

.method public getUploadJobConfig()Lcom/facebook/analytics2/logger/UploadJobConfig;
    .locals 1

    .line 460
    iget-object v0, p0, Lcom/facebook/analytics2/logger/UploadServiceLogic$StartServiceParams;->mUploadJobConfig:Lcom/facebook/analytics2/logger/UploadJobConfig;

    return-object v0
.end method
