.class public abstract Lcom/facebook/analytics2/logger/UploadScheduler;
.super Ljava/lang/Object;
.source "UploadScheduler.java"


# static fields
.field private static sInstance:Lcom/facebook/analytics2/logger/UploadScheduler;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "UploadScheduler.class"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/facebook/analytics2/logger/UploadScheduler;
    .locals 3

    .prologue
    .line 22
    const-class v1, Lcom/facebook/analytics2/logger/UploadScheduler;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/facebook/analytics2/logger/UploadScheduler;->sInstance:Lcom/facebook/analytics2/logger/UploadScheduler;

    if-nez v0, :cond_0

    .line 23
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v0, v2, :cond_1

    .line 24
    new-instance v0, Lcom/facebook/analytics2/logger/LollipopUploadScheduler;

    invoke-direct {v0, p0}, Lcom/facebook/analytics2/logger/LollipopUploadScheduler;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/facebook/analytics2/logger/UploadScheduler;->sInstance:Lcom/facebook/analytics2/logger/UploadScheduler;

    .line 29
    :cond_0
    :goto_0
    sget-object v0, Lcom/facebook/analytics2/logger/UploadScheduler;->sInstance:Lcom/facebook/analytics2/logger/UploadScheduler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 26
    :cond_1
    :try_start_1
    new-instance v0, Lcom/facebook/analytics2/logger/PreLollipopUploadScheduler;

    invoke-direct {v0, p0}, Lcom/facebook/analytics2/logger/PreLollipopUploadScheduler;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/facebook/analytics2/logger/UploadScheduler;->sInstance:Lcom/facebook/analytics2/logger/UploadScheduler;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 22
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public abstract cancel(I)V
.end method

.method public abstract getScheduledMinDelayMs(I)J
.end method

.method public abstract getTargetService()Landroid/content/ComponentName;
.end method

.method public abstract schedule(ILjava/lang/String;Lcom/facebook/analytics2/logger/UploadJobConfig;JJ)V
    .param p2    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
.end method
