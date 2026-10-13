.class Lcom/facebook/analytics2/logger/PreLollipopUploadScheduler;
.super Lcom/facebook/analytics2/logger/UploadScheduler;
.source "PreLollipopUploadScheduler.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PreLollipopUploadScheduler"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mImpl:Lcom/facebook/analytics2/logger/UploadScheduler;
    .annotation build Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/facebook/analytics2/logger/UploadScheduler;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/facebook/analytics2/logger/PreLollipopUploadScheduler;->mContext:Landroid/content/Context;

    return-void
.end method

.method private createImpl()Lcom/facebook/analytics2/logger/UploadScheduler;
    .locals 2

    .line 71
    iget-object v0, p0, Lcom/facebook/analytics2/logger/PreLollipopUploadScheduler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/facebook/analytics2/logger/PreLollipopUploadScheduler;->selectGooglePlayServicesImplementation(Landroid/content/Context;)Lcom/facebook/analytics2/logger/UploadScheduler;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "PreLollipopUploadScheduler"

    const-string v1, "Falling back to alarm-based scheduling."

    .line 74
    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    new-instance v0, Lcom/facebook/analytics2/logger/AlarmBasedUploadScheduler;

    iget-object v1, p0, Lcom/facebook/analytics2/logger/PreLollipopUploadScheduler;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/facebook/analytics2/logger/AlarmBasedUploadScheduler;-><init>(Landroid/content/Context;)V

    :cond_0
    return-object v0
.end method

.method private declared-synchronized getImpl()Lcom/facebook/analytics2/logger/UploadScheduler;
    .locals 1
    .annotation build Ljavax/annotation/Nonnull;
    .end annotation

    monitor-enter p0

    .line 64
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

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static selectGooglePlayServicesImplementation(Landroid/content/Context;)Lcom/facebook/analytics2/logger/UploadScheduler;
    .locals 7
    .annotation build Ljavax/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "com.facebook.analytics2.logger.GooglePlayServicesFactory"

    .line 85
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "createUploadSchedulerImpl"

    const/4 v3, 0x1

    .line 86
    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 87
    new-array v2, v3, [Ljava/lang/Object;

    aput-object p0, v2, v6

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 88
    check-cast p0, Lcom/facebook/analytics2/logger/UploadScheduler;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 90
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "PreLollipopUploadScheduler"

    const-string v2, "Falling back to alarm-based scheduling: %s"

    invoke-static {v1, v2, p0}, Lcom/facebook/debug/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public cancel(I)V
    .locals 1

    .line 49
    invoke-direct {p0}, Lcom/facebook/analytics2/logger/PreLollipopUploadScheduler;->getImpl()Lcom/facebook/analytics2/logger/UploadScheduler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/analytics2/logger/UploadScheduler;->cancel(I)V

    return-void
.end method

.method public describeImpl()Ljava/lang/String;
    .locals 1

    .line 34
    invoke-direct {p0}, Lcom/facebook/analytics2/logger/PreLollipopUploadScheduler;->getImpl()Lcom/facebook/analytics2/logger/UploadScheduler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/analytics2/logger/UploadScheduler;->describeImpl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getScheduledMinDelayMs(I)J
    .locals 2

    .line 59
    invoke-direct {p0}, Lcom/facebook/analytics2/logger/PreLollipopUploadScheduler;->getImpl()Lcom/facebook/analytics2/logger/UploadScheduler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/analytics2/logger/UploadScheduler;->getScheduledMinDelayMs(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getTargetService()Landroid/content/ComponentName;
    .locals 1

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
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 44
    invoke-direct {p0}, Lcom/facebook/analytics2/logger/PreLollipopUploadScheduler;->getImpl()Lcom/facebook/analytics2/logger/UploadScheduler;

    move-result-object v0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    move-wide v6, p6

    invoke-virtual/range {v0 .. v7}, Lcom/facebook/analytics2/logger/UploadScheduler;->schedule(ILjava/lang/String;Lcom/facebook/analytics2/logger/UploadJobConfig;JJ)V

    return-void
.end method
