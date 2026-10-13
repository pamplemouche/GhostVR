.class Lcom/facebook/analytics2/logger/AlarmBasedUploadScheduler;
.super Lcom/facebook/analytics2/logger/UploadScheduler;
.source "AlarmBasedUploadScheduler.java"


# instance fields
.field private final mComponentName:Landroid/content/ComponentName;

.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/facebook/analytics2/logger/UploadScheduler;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/facebook/analytics2/logger/AlarmBasedUploadScheduler;->mContext:Landroid/content/Context;

    .line 20
    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Lcom/facebook/analytics2/logger/AlarmBasedUploadService;

    invoke-direct {v0, p1, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/facebook/analytics2/logger/AlarmBasedUploadScheduler;->mComponentName:Landroid/content/ComponentName;

    .line 21
    return-void
.end method


# virtual methods
.method public cancel(I)V
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/facebook/analytics2/logger/AlarmBasedUploadScheduler;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/facebook/analytics2/logger/AlarmBasedUploadService;->cancelJob(Landroid/content/Context;I)V

    .line 42
    return-void
.end method

.method public getScheduledMinDelayMs(I)J
    .locals 2

    .prologue
    .line 51
    const-wide v0, 0x7fffffffffffffffL

    return-wide v0
.end method

.method public getTargetService()Landroid/content/ComponentName;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/facebook/analytics2/logger/AlarmBasedUploadScheduler;->mComponentName:Landroid/content/ComponentName;

    return-object v0
.end method

.method public schedule(ILjava/lang/String;Lcom/facebook/analytics2/logger/UploadJobConfig;JJ)V
    .locals 8
    .param p2    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 35
    iget-object v0, p0, Lcom/facebook/analytics2/logger/AlarmBasedUploadScheduler;->mContext:Landroid/content/Context;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    move-wide v6, p6

    invoke-static/range {v0 .. v7}, Lcom/facebook/analytics2/logger/AlarmBasedUploadService;->scheduleJob(Landroid/content/Context;ILjava/lang/String;Lcom/facebook/analytics2/logger/UploadJobConfig;JJ)V

    .line 37
    return-void
.end method
