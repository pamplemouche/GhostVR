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
.field private static sHandlerStrongReferences:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
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
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mFallbackConfig:Lcom/facebook/analytics2/logger/UploadServiceLogic$FallbackConfig;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mHackAction:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mJobCallback:Lcom/facebook/analytics2/logger/UploadJobHandler$UploadJobHandlerCallback;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mJobId:I

.field private final mMessenger:Landroid/os/Messenger;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mUploadJobConfig:Lcom/facebook/analytics2/logger/UploadJobConfig;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method private constructor <init>(Landroid/os/Messenger;Landroid/os/Bundle;Ljava/lang/String;Lcom/facebook/analytics2/logger/UploadJobConfig;ILcom/facebook/analytics2/logger/UploadServiceLogic$FallbackConfig;Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/os/Messenger;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Lcom/facebook/analytics2/logger/UploadServiceLogic$FallbackConfig;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 357
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 359
    iput-object p1, p0, Lcom/facebook/analytics2/logger/UploadServiceLogic$StartServiceParams;->mMessenger:Landroid/os/Messenger;

    .line 360
    iput-object p2, p0, Lcom/facebook/analytics2/logger/UploadServiceLogic$StartServiceParams;->mExtras:Landroid/os/Bundle;

    .line 361
    iput-object p3, p0, Lcom/facebook/analytics2/logger/UploadServiceLogic$StartServiceParams;->mHackAction:Ljava/lang/String;

    .line 362
    iput-object p4, p0, Lcom/facebook/analytics2/logger/UploadServiceLogic$StartServiceParams;->mUploadJobConfig:Lcom/facebook/analytics2/logger/UploadJobConfig;

    .line 363
    iput p5, p0, Lcom/facebook/analytics2/logger/UploadServiceLogic$StartServiceParams;->mJobId:I

    .line 364
    iput-object p7, p0, Lcom/facebook/analytics2/logger/UploadServiceLogic$StartServiceParams;->mContext:Landroid/content/Context;

    .line 365
    iput-object p6, p0, Lcom/facebook/analytics2/logger/UploadServiceLogic$StartServiceParams;->mFallbackConfig:Lcom/facebook/analytics2/logger/UploadServiceLogic$FallbackConfig;

    .line 366
    return-void
.end method

.method static synthetic access$100()Ljava/util/List;
    .locals 1

    .prologue
    .line 317
    invoke-static {}, Lcom/facebook/analytics2/logger/UploadServiceLogic$StartServiceParams;->getHandlerStrongReferences()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/facebook/analytics2/logger/UploadServiceLogic$StartServiceParams;)Lcom/facebook/analytics2/logger/UploadServiceLogic$FallbackConfig;
    .locals 1

    .prologue
    .line 317
    iget-object v0, p0, Lcom/facebook/analytics2/logger/UploadServiceLogic$StartServiceParams;->mFallbackConfig:Lcom/facebook/analytics2/logger/UploadServiceLogic$FallbackConfig;

    return-object v0
.end method

.method static synthetic access$300(Lcom/facebook/analytics2/logger/UploadServiceLogic$StartServiceParams;)I
    .locals 1

    .prologue
    .line 317
    iget v0, p0, Lcom/facebook/analytics2/logger/UploadServiceLogic$StartServiceParams;->mJobId:I

    return v0
.end method

.method static synthetic access$400(Lcom/facebook/analytics2/logger/UploadServiceLogic$StartServiceParams;)Lcom/facebook/analytics2/logger/UploadJobConfig;
    .locals 1

    .prologue
    .line 317
    iget-object v0, p0, Lcom/facebook/analytics2/logger/UploadServiceLogic$StartServiceParams;->mUploadJobConfig:Lcom/facebook/analytics2/logger/UploadJobConfig;

    return-object v0
.end method

.method static synthetic access$500(Lcom/facebook/analytics2/logger/UploadServiceLogic$StartServiceParams;)Landroid/os/PowerManager$WakeLock;
    .locals 1

    .prologue
    .line 317
    iget-object v0, p0, Lcom/facebook/analytics2/logger/UploadServiceLogic$StartServiceParams;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method private static getHandlerStrongReferences()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation

    .prologue
    .line 331
    const-class v1, Lcom/facebook/analytics2/logger/UploadServiceLogic$StartServiceParams;

    monitor-enter v1

    .line 332
    :try_start_0
    sget-object v0, Lcom/facebook/analytics2/logger/UploadServiceLogic$StartServiceParams;->sHandlerStrongReferences:Ljava/util/List;

    if-nez v0, :cond_0

    .line 333
    new-instance v0, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/facebook/analytics2/logger/UploadServiceLogic$StartServiceParams;->sHandlerStrongReferences:Ljava/util/List;

    .line 335
    :cond_0
    sget-object v0, Lcom/facebook/analytics2/logger/UploadServiceLogic$StartServiceParams;->sHandlerStrongReferences:Ljava/util/List;

    monitor-exit v1

    return-object v0

    .line 336
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static paramsForClient(Lcom/facebook/analytics2/logger/UploadServiceLogic$ServiceCallback;Landroid/os/Bundle;Ljava/lang/String;Lcom/facebook/analytics2/logger/UploadJobConfig;ILcom/facebook/analytics2/logger/UploadServiceLogic$FallbackConfig;Landroid/content/Context;)Lcom/facebook/analytics2/logger/UploadServiceLogic$StartServiceParams;
    .locals 8
    .param p0    # Lcom/facebook/analytics2/logger/UploadServiceLogic$ServiceCallback;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Landroid/os/Bundle;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Lcom/facebook/analytics2/logger/UploadServiceLogic$FallbackConfig;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 377
    const/4 v1, 0x0

    .line 378
    if-eqz p0, :cond_0

    .line 379
    new-instance v0, Lcom/facebook/analytics2/logger/UploadServiceLogic$StartServiceParams$ServiceCallbackHandler;

    invoke-direct {v0, p0}, Lcom/facebook/analytics2/logger/UploadServiceLogic$StartServiceParams$ServiceCallbackHandler;-><init>(Lcom/facebook/analytics2/logger/UploadServiceLogic$ServiceCallback;)V

    .line 380
    new-instance v1, Landroid/os/Messenger;

    invoke-direct {v1, v0}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    .line 382
    invoke-static {}, Lcom/facebook/analytics2/logger/UploadServiceLogic$StartServiceParams;->getHandlerStrongReferences()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 384
    :cond_0
    new-instance v0, Lcom/facebook/analytics2/logger/UploadServiceLogic$StartServiceParams;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/facebook/analytics2/logger/UploadServiceLogic$StartServiceParams;-><init>(Landroid/os/Messenger;Landroid/os/Bundle;Ljava/lang/String;Lcom/facebook/analytics2/logger/UploadJobConfig;ILcom/facebook/analytics2/logger/UploadServiceLogic$FallbackConfig;Landroid/content/Context;)V

    return-object v0
.end method

.method public static paramsForService(Landroid/os/Bundle;Landroid/content/Context;)Lcom/facebook/analytics2/logger/UploadServiceLogic$StartServiceParams;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/analytics2/logger/IllegalRemoteArgumentException;
        }
    .end annotation

    .prologue
    const/4 v4, -0x1

    .line 390
    const-string v0, "_messenger"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/os/Messenger;

    .line 391
    const-string v0, "_extras"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 392
    const-string v0, "_hack_action"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 393
    const-string v0, "_job_id"

    invoke-virtual {p0, v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 394
    if-ne v5, v4, :cond_0

    .line 395
    new-instance v0, Lcom/facebook/analytics2/logger/IllegalRemoteArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_job_id is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_job_id"

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/analytics2/logger/IllegalRemoteArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 397
    :cond_0
    const-string v0, "_fallback_config"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v7

    .line 399
    new-instance v0, Lcom/facebook/analytics2/logger/UploadServiceLogic$StartServiceParams;

    new-instance v4, Lcom/facebook/analytics2/logger/UploadJobConfig;

    const-string v6, "_upload_job_config"

    .line 403
    invoke-virtual {p0, v6}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v6

    invoke-direct {v4, v6}, Lcom/facebook/analytics2/logger/UploadJobConfig;-><init>(Landroid/os/Bundle;)V

    if-eqz v7, :cond_1

    new-instance v6, Lcom/facebook/analytics2/logger/UploadServiceLogic$FallbackConfig;

    invoke-direct {v6, v7}, Lcom/facebook/analytics2/logger/UploadServiceLogic$FallbackConfig;-><init>(Landroid/os/Bundle;)V

    :goto_0
    move-object v7, p1

    invoke-direct/range {v0 .. v7}, Lcom/facebook/analytics2/logger/UploadServiceLogic$StartServiceParams;-><init>(Landroid/os/Messenger;Landroid/os/Bundle;Ljava/lang/String;Lcom/facebook/analytics2/logger/UploadJobConfig;ILcom/facebook/analytics2/logger/UploadServiceLogic$FallbackConfig;Landroid/content/Context;)V

    return-object v0

    :cond_1
    const/4 v6, 0x0

    goto :goto_0
.end method


# virtual methods
.method public acknowledgeServiceStarted(Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 430
    iget-object v0, p0, Lcom/facebook/analytics2/logger/UploadServiceLogic$StartServiceParams;->mContext:Landroid/content/Context;

    .line 431
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 432
    const/4 v1, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UploadServiceLogic-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 435
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getShortClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-service-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/facebook/analytics2/logger/UploadServiceLogic$StartServiceParams;->mJobId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 433
    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/analytics2/logger/UploadServiceLogic$StartServiceParams;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 437
    iget-object v0, p0, Lcom/facebook/analytics2/logger/UploadServiceLogic$StartServiceParams;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 439
    iget-object v0, p0, Lcom/facebook/analytics2/logger/UploadServiceLogic$StartServiceParams;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-static {}, Lcom/facebook/analytics2/logger/UploadServiceLogic;->access$000()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 441
    iget-object v0, p0, Lcom/facebook/analytics2/logger/UploadServiceLogic$StartServiceParams;->mMessenger:Landroid/os/Messenger;

    if-eqz v0, :cond_0

    .line 443
    :try_start_0
    iget-object v0, p0, Lcom/facebook/analytics2/logger/UploadServiceLogic$StartServiceParams;->mMessenger:Landroid/os/Messenger;

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 448
    :cond_0
    :goto_0
    return-void

    .line 444
    :catch_0
    move-exception v0

    .line 445
    const-string v0, "UploadServiceLogic"

    const-string v1, "The peer died unexpectedly, possible wakelock gap detected."

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public asBundle()Landroid/os/Bundle;
    .locals 4

    .prologue
    .line 410
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 411
    const-string v1, "_messenger"

    iget-object v2, p0, Lcom/facebook/analytics2/logger/UploadServiceLogic$StartServiceParams;->mMessenger:Landroid/os/Messenger;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 412
    const-string v1, "_extras"

    iget-object v2, p0, Lcom/facebook/analytics2/logger/UploadServiceLogic$StartServiceParams;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 413
    const-string v1, "_hack_action"

    iget-object v2, p0, Lcom/facebook/analytics2/logger/UploadServiceLogic$StartServiceParams;->mHackAction:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    const-string v1, "_upload_job_config"

    new-instance v2, Landroid/os/Bundle;

    iget-object v3, p0, Lcom/facebook/analytics2/logger/UploadServiceLogic$StartServiceParams;->mUploadJobConfig:Lcom/facebook/analytics2/logger/UploadJobConfig;

    invoke-virtual {v3}, Lcom/facebook/analytics2/logger/UploadJobConfig;->toBundle()Landroid/os/Bundle;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 415
    const-string v1, "_job_id"

    iget v2, p0, Lcom/facebook/analytics2/logger/UploadServiceLogic$StartServiceParams;->mJobId:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 416
    iget-object v1, p0, Lcom/facebook/analytics2/logger/UploadServiceLogic$StartServiceParams;->mFallbackConfig:Lcom/facebook/analytics2/logger/UploadServiceLogic$FallbackConfig;

    if-eqz v1, :cond_0

    .line 417
    const-string v1, "_fallback_config"

    iget-object v2, p0, Lcom/facebook/analytics2/logger/UploadServiceLogic$StartServiceParams;->mFallbackConfig:Lcom/facebook/analytics2/logger/UploadServiceLogic$FallbackConfig;

    invoke-virtual {v2}, Lcom/facebook/analytics2/logger/UploadServiceLogic$FallbackConfig;->toBundle()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 419
    :cond_0
    return-object v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 455
    iget-object v0, p0, Lcom/facebook/analytics2/logger/UploadServiceLogic$StartServiceParams;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public getHackAction()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 460
    iget-object v0, p0, Lcom/facebook/analytics2/logger/UploadServiceLogic$StartServiceParams;->mHackAction:Ljava/lang/String;

    return-object v0
.end method

.method public getJobCallback()Lcom/facebook/analytics2/logger/UploadJobHandler$UploadJobHandlerCallback;
    .locals 2

    .prologue
    .line 423
    iget-object v0, p0, Lcom/facebook/analytics2/logger/UploadServiceLogic$StartServiceParams;->mJobCallback:Lcom/facebook/analytics2/logger/UploadJobHandler$UploadJobHandlerCallback;

    if-nez v0, :cond_0

    .line 424
    new-instance v0, Lcom/facebook/analytics2/logger/UploadServiceLogic$StartServiceParams$ReSchedulingWakeLockCallback;

    iget-object v1, p0, Lcom/facebook/analytics2/logger/UploadServiceLogic$StartServiceParams;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/facebook/analytics2/logger/UploadScheduler;->getInstance(Landroid/content/Context;)Lcom/facebook/analytics2/logger/UploadScheduler;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/facebook/analytics2/logger/UploadServiceLogic$StartServiceParams$ReSchedulingWakeLockCallback;-><init>(Lcom/facebook/analytics2/logger/UploadServiceLogic$StartServiceParams;Lcom/facebook/analytics2/logger/UploadScheduler;)V

    iput-object v0, p0, Lcom/facebook/analytics2/logger/UploadServiceLogic$StartServiceParams;->mJobCallback:Lcom/facebook/analytics2/logger/UploadJobHandler$UploadJobHandlerCallback;

    .line 426
    :cond_0
    iget-object v0, p0, Lcom/facebook/analytics2/logger/UploadServiceLogic$StartServiceParams;->mJobCallback:Lcom/facebook/analytics2/logger/UploadJobHandler$UploadJobHandlerCallback;

    return-object v0
.end method

.method public getJobId()I
    .locals 1

    .prologue
    .line 468
    iget v0, p0, Lcom/facebook/analytics2/logger/UploadServiceLogic$StartServiceParams;->mJobId:I

    return v0
.end method

.method public getUploadJobConfig()Lcom/facebook/analytics2/logger/UploadJobConfig;
    .locals 1

    .prologue
    .line 464
    iget-object v0, p0, Lcom/facebook/analytics2/logger/UploadServiceLogic$StartServiceParams;->mUploadJobConfig:Lcom/facebook/analytics2/logger/UploadJobConfig;

    return-object v0
.end method
