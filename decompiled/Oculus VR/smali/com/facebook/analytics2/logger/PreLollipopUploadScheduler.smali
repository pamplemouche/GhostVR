.class Lcom/facebook/analytics2/logger/PreLollipopUploadScheduler;
.super Lcom/facebook/analytics2/logger/UploadScheduler;
.source "PreLollipopUploadScheduler.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mImpl:Lcom/facebook/analytics2/logger/UploadScheduler;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/facebook/analytics2/logger/UploadScheduler;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/facebook/analytics2/logger/PreLollipopUploadScheduler;->mContext:Landroid/content/Context;

    .line 30
    return-void
.end method

.method private createImpl()Lcom/facebook/analytics2/logger/UploadScheduler;
    .locals 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/facebook/analytics2/logger/PreLollipopUploadScheduler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/facebook/analytics2/logger/PreLollipopUploadScheduler;->selectGooglePlayServicesImplementation(Landroid/content/Context;)Lcom/facebook/analytics2/logger/UploadScheduler;

    move-result-object v0

    .line 73
    if-nez v0, :cond_0

    .line 74
    const-string v0, "PreLollipopUploadScheduler"

    const-string v1, "Falling back to alarm-based scheduling."

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    new-instance v0, Lcom/facebook/analytics2/logger/AlarmBasedUploadScheduler;

    iget-object v1, p0, Lcom/facebook/analytics2/logger/PreLollipopUploadScheduler;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/facebook/analytics2/logger/AlarmBasedUploadScheduler;-><init>(Landroid/content/Context;)V

    .line 78
    :cond_0
    return-object v0
.end method

.method private declared-synchronized getImpl()Lcom/facebook/analytics2/logger/UploadScheduler;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 64
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/analytics2/logger/PreLollipopUploadScheduler;->mImpl:Lcom/facebook/analytics2/logger/UploadScheduler;

    if-nez v0, :cond_0

    .line 65
    invoke-direct {p0}, Lcom/facebook/analytics2/logger/PreLollipopUploadScheduler;->createImpl()Lcom/facebook/analytics2/logger/UploadScheduler;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/analytics2/logger/PreLollipopUploadScheduler;->mImpl:Lcom/facebook/analytics2/logger/UploadScheduler;

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/facebook/analytics2/logger/PreLollipopUploadScheduler;->mImpl:Lcom/facebook/analytics2/logger/UploadScheduler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 64
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static selectGooglePlayServicesImplementation(Landroid/content/Context;)Lcom/facebook/analytics2/logger/UploadScheduler;
    .locals 6
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 84
    :try_start_0
    const-string v0, "com.facebook.analytics2.logger.GooglePlayServicesFactory"

    .line 85
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 86
    const-string v2, "createUploadSchedulerImpl"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/content/Context;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 87
    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 88
    check-cast v0, Lcom/facebook/analytics2/logger/UploadScheduler;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    :goto_0
    return-object v0

    .line 89
    :catch_0
    move-exception v0

    .line 90
    const-string v2, "PreLollipopUploadScheduler"

    const-string v3, "Falling back to alarm-based scheduling: %s"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcom/facebook/debug/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    move-object v0, v1

    .line 91
    goto :goto_0
.end method


# virtual methods
.method public cancel(I)V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/facebook/analytics2/logger/PreLollipopUploadScheduler;->getImpl()Lcom/facebook/analytics2/logger/UploadScheduler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/analytics2/logger/UploadScheduler;->cancel(I)V

    .line 50
    return-void
.end method

.method public getScheduledMinDelayMs(I)J
    .locals 2

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/facebook/analytics2/logger/PreLollipopUploadScheduler;->getImpl()Lcom/facebook/analytics2/logger/UploadScheduler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/analytics2/logger/UploadScheduler;->getScheduledMinDelayMs(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getTargetService()Landroid/content/ComponentName;
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/facebook/analytics2/logger/PreLollipopUploadScheduler;->getImpl()Lcom/facebook/analytics2/logger/UploadScheduler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/analytics2/logger/UploadScheduler;->getTargetService()Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public schedule(ILjava/lang/String;Lcom/facebook/analytics2/logger/UploadJobConfig;JJ)V
    .locals 8
    .param p2    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/facebook/analytics2/logger/PreLollipopUploadScheduler;->getImpl()Lcom/facebook/analytics2/logger/UploadScheduler;

    move-result-object v0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    move-wide v6, p6

    invoke-virtual/range {v0 .. v7}, Lcom/facebook/analytics2/logger/UploadScheduler;->schedule(ILjava/lang/String;Lcom/facebook/analytics2/logger/UploadJobConfig;JJ)V

    .line 45
    return-void
.end method
