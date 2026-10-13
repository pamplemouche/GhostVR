.class Lcom/facebook/analytics2/logger/LollipopUploadScheduler;
.super Lcom/facebook/analytics2/logger/UploadScheduler;
.source "LollipopUploadScheduler.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/analytics2/logger/LollipopUploadScheduler$PersistableBundlePrimitiveMapper;
    }
.end annotation


# instance fields
.field private final mComponentName:Landroid/content/ComponentName;

.field private final mContext:Landroid/content/Context;

.field private final mJobScheduler:Landroid/app/job/JobScheduler;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/facebook/analytics2/logger/UploadScheduler;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/facebook/analytics2/logger/LollipopUploadScheduler;->mContext:Landroid/content/Context;

    .line 41
    const-string v0, "jobscheduler"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobScheduler;

    iput-object v0, p0, Lcom/facebook/analytics2/logger/LollipopUploadScheduler;->mJobScheduler:Landroid/app/job/JobScheduler;

    .line 42
    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Lcom/facebook/analytics2/logger/LollipopUploadService;

    invoke-direct {v0, p1, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/facebook/analytics2/logger/LollipopUploadScheduler;->mComponentName:Landroid/content/ComponentName;

    .line 43
    return-void
.end method

.method private shouldCrashForSchedulingError()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 82
    iget-object v2, p0, Lcom/facebook/analytics2/logger/LollipopUploadScheduler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 83
    iget-object v3, p0, Lcom/facebook/analytics2/logger/LollipopUploadScheduler;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v3

    .line 85
    packed-switch v3, :pswitch_data_0

    .line 96
    :try_start_0
    iget-object v3, p0, Lcom/facebook/analytics2/logger/LollipopUploadScheduler;->mComponentName:Landroid/content/ComponentName;

    const/16 v4, 0x200

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v2

    .line 97
    invoke-virtual {v2}, Landroid/content/pm/ServiceInfo;->isEnabled()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_0

    .line 104
    :goto_0
    :pswitch_0
    return v0

    :pswitch_1
    move v0, v1

    .line 91
    goto :goto_0

    .line 100
    :catch_0
    move-exception v1

    .line 101
    const-string v2, "LollipopUploadScheduler"

    const-string v3, "Error getting serviceInfo from PackageManager"

    invoke-static {v2, v3, v1}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    move v0, v1

    .line 104
    goto :goto_0

    .line 85
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public cancel(I)V
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/facebook/analytics2/logger/LollipopUploadScheduler;->mJobScheduler:Landroid/app/job/JobScheduler;

    invoke-virtual {v0, p1}, Landroid/app/job/JobScheduler;->cancel(I)V

    .line 111
    return-void
.end method

.method public getScheduledMinDelayMs(I)J
    .locals 3

    .prologue
    .line 120
    iget-object v0, p0, Lcom/facebook/analytics2/logger/LollipopUploadScheduler;->mJobScheduler:Landroid/app/job/JobScheduler;

    invoke-virtual {v0}, Landroid/app/job/JobScheduler;->getAllPendingJobs()Ljava/util/List;

    move-result-object v0

    .line 122
    if-eqz v0, :cond_1

    .line 123
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobInfo;

    .line 124
    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getId()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 125
    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getMinLatencyMillis()J

    move-result-wide v0

    .line 130
    :goto_0
    return-wide v0

    :cond_1
    const-wide v0, 0x7fffffffffffffffL

    goto :goto_0
.end method

.method public getTargetService()Landroid/content/ComponentName;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/facebook/analytics2/logger/LollipopUploadScheduler;->mComponentName:Landroid/content/ComponentName;

    return-object v0
.end method

.method public schedule(ILjava/lang/String;Lcom/facebook/analytics2/logger/UploadJobConfig;JJ)V
    .locals 6
    .param p2    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 57
    new-instance v0, Lcom/facebook/analytics2/logger/LollipopUploadScheduler$PersistableBundlePrimitiveMapper;

    new-instance v1, Landroid/os/PersistableBundle;

    invoke-direct {v1}, Landroid/os/PersistableBundle;-><init>()V

    invoke-direct {v0, v1}, Lcom/facebook/analytics2/logger/LollipopUploadScheduler$PersistableBundlePrimitiveMapper;-><init>(Landroid/os/PersistableBundle;)V

    .line 59
    const-string v1, "action"

    invoke-virtual {v0, v1, p2}, Lcom/facebook/analytics2/logger/LollipopUploadScheduler$PersistableBundlePrimitiveMapper;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    const-string v1, "__VERSION_CODE"

    invoke-static {}, Lcom/facebook/common/build/BuildConstants;->getVersionCode()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/facebook/analytics2/logger/LollipopUploadScheduler$PersistableBundlePrimitiveMapper;->putInt(Ljava/lang/String;I)V

    .line 62
    new-instance v1, Landroid/app/job/JobInfo$Builder;

    iget-object v2, p0, Lcom/facebook/analytics2/logger/LollipopUploadScheduler;->mComponentName:Landroid/content/ComponentName;

    invoke-direct {v1, p1, v2}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    .line 64
    invoke-virtual {v1, p4, p5}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;

    move-result-object v1

    .line 65
    invoke-virtual {p3, v0}, Lcom/facebook/analytics2/logger/UploadJobConfig;->toPrimitiveMap(Lcom/facebook/analytics2/logger/UploadJobConfig$PrimitiveMapWriter;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PersistableBundle;

    invoke-virtual {v1, v0}, Landroid/app/job/JobInfo$Builder;->setExtras(Landroid/os/PersistableBundle;)Landroid/app/job/JobInfo$Builder;

    move-result-object v0

    .line 66
    invoke-virtual {v0, v3}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    move-result-object v0

    .line 67
    invoke-virtual {v0, v5}, Landroid/app/job/JobInfo$Builder;->setPersisted(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v0

    .line 69
    :try_start_0
    iget-object v1, p0, Lcom/facebook/analytics2/logger/LollipopUploadScheduler;->mJobScheduler:Landroid/app/job/JobScheduler;

    invoke-virtual {v0}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    :goto_0
    return-void

    .line 70
    :catch_0
    move-exception v0

    .line 71
    invoke-direct {p0}, Lcom/facebook/analytics2/logger/LollipopUploadScheduler;->shouldCrashForSchedulingError()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 72
    throw v0

    .line 74
    :cond_0
    const-string v1, "LollipopUploadScheduler"

    const-string v2, "The Service is disabled, cannot schedule job for %s"

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/facebook/analytics2/logger/LollipopUploadScheduler;->mComponentName:Landroid/content/ComponentName;

    aput-object v4, v3, v5

    invoke-static {v1, v0, v2, v3}, Lcom/facebook/debug/log/BLog;->i(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
