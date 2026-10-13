.class public abstract Lcom/facebook/analytics2/logger/UploadScheduler;
.super Ljava/lang/Object;
.source "UploadScheduler.java"


# static fields
.field public static final JOB_NOT_SCHEDULED:J = 0x7fffffffffffffffL

.field private static sInstance:Lcom/facebook/analytics2/logger/UploadScheduler;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "UploadScheduler.class"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/facebook/analytics2/logger/UploadScheduler;
    .locals 3

    const-class v0, Lcom/facebook/analytics2/logger/UploadScheduler;

    monitor-enter v0

    .line 22
    :try_start_0
    sget-object v1, Lcom/facebook/analytics2/logger/UploadScheduler;->sInstance:Lcom/facebook/analytics2/logger/UploadScheduler;

    if-nez v1, :cond_1

    .line 23
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    .line 24
    new-instance v1, Lcom/facebook/analytics2/logger/LollipopUploadScheduler;

    invoke-direct {v1, p0}, Lcom/facebook/analytics2/logger/LollipopUploadScheduler;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/facebook/analytics2/logger/UploadScheduler;->sInstance:Lcom/facebook/analytics2/logger/UploadScheduler;

    goto :goto_0

    .line 26
    :cond_0
    new-instance v1, Lcom/facebook/analytics2/logger/PreLollipopUploadScheduler;

    invoke-direct {v1, p0}, Lcom/facebook/analytics2/logger/PreLollipopUploadScheduler;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/facebook/analytics2/logger/UploadScheduler;->sInstance:Lcom/facebook/analytics2/logger/UploadScheduler;

    .line 29
    :cond_1
    :goto_0
    sget-object p0, Lcom/facebook/analytics2/logger/UploadScheduler;->sInstance:Lcom/facebook/analytics2/logger/UploadScheduler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public abstract cancel(I)V
.end method

.method public abstract describeImpl()Ljava/lang/String;
.end method

.method public abstract getScheduledMinDelayMs(I)J
.end method

.method public abstract getTargetService()Landroid/content/ComponentName;
.end method

.method public abstract schedule(ILjava/lang/String;Lcom/facebook/analytics2/logger/UploadJobConfig;JJ)V
    .param p2    # Ljava/lang/String;
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param
.end method
