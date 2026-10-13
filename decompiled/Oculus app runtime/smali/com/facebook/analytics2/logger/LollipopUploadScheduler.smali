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


# static fields
.field private static final TAG:Ljava/lang/String; = "LollipopUploadScheduler"


# instance fields
.field private final mComponentName:Landroid/content/ComponentName;

.field private final mContext:Landroid/content/Context;

.field private final mJobScheduler:Landroid/app/job/JobScheduler;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 31
    invoke-direct {p0}, Lcom/facebook/analytics2/logger/UploadScheduler;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/facebook/analytics2/logger/LollipopUploadScheduler;->mContext:Landroid/content/Context;

    const-string v0, "jobscheduler"

    .line 33
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobScheduler;

    iput-object v0, p0, Lcom/facebook/analytics2/logger/LollipopUploadScheduler;->mJobScheduler:Landroid/app/job/JobScheduler;

    .line 34
    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Lcom/facebook/analytics2/logger/LollipopUploadService;

    invoke-direct {v0, p1, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/facebook/analytics2/logger/LollipopUploadScheduler;->mComponentName:Landroid/content/ComponentName;

    return-void
.end method


# virtual methods
.method public cancel(I)V
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/facebook/analytics2/logger/LollipopUploadScheduler;->mJobScheduler:Landroid/app/job/JobScheduler;

    invoke-virtual {v0, p1}, Landroid/app/job/JobScheduler;->cancel(I)V

    return-void
.end method

.method public describeImpl()Ljava/lang/String;
    .locals 1

    const-string v0, "jobscheduler"

    return-object v0
.end method

.method public getScheduledMinDelayMs(I)J
    .locals 3

    .line 89
    iget-object v0, p0, Lcom/facebook/analytics2/logger/LollipopUploadScheduler;->mJobScheduler:Landroid/app/job/JobScheduler;

    invoke-virtual {v0}, Landroid/app/job/JobScheduler;->getAllPendingJobs()Ljava/util/List;

    move-result-object v0

    .line 91
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/job/JobInfo;

    .line 92
    invoke-virtual {v1}, Landroid/app/job/JobInfo;->getId()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 93
    invoke-virtual {v1}, Landroid/app/job/JobInfo;->getMinLatencyMillis()J

    move-result-wide v0

    return-wide v0

    :cond_1
    const-wide v0, 0x7fffffffffffffffL

    return-wide v0
.end method

.method public getTargetService()Landroid/content/ComponentName;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/facebook/analytics2/logger/LollipopUploadScheduler;->mComponentName:Landroid/content/ComponentName;

    return-object v0
.end method

.method public schedule(ILjava/lang/String;Lcom/facebook/analytics2/logger/UploadJobConfig;JJ)V
    .locals 1
    .param p2    # Ljava/lang/String;
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 49
    new-instance p6, Lcom/facebook/analytics2/logger/LollipopUploadScheduler$PersistableBundlePrimitiveMapper;

    new-instance p7, Landroid/os/PersistableBundle;

    invoke-direct {p7}, Landroid/os/PersistableBundle;-><init>()V

    invoke-direct {p6, p7}, Lcom/facebook/analytics2/logger/LollipopUploadScheduler$PersistableBundlePrimitiveMapper;-><init>(Landroid/os/PersistableBundle;)V

    const-string p7, "action"

    .line 51
    invoke-virtual {p6, p7, p2}, Lcom/facebook/analytics2/logger/LollipopUploadScheduler$PersistableBundlePrimitiveMapper;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x1

    const-string p7, "__VERSION_CODE"

    .line 52
    invoke-virtual {p6, p7, p2}, Lcom/facebook/analytics2/logger/LollipopUploadScheduler$PersistableBundlePrimitiveMapper;->putInt(Ljava/lang/String;I)V

    .line 54
    new-instance p7, Landroid/app/job/JobInfo$Builder;

    iget-object v0, p0, Lcom/facebook/analytics2/logger/LollipopUploadScheduler;->mComponentName:Landroid/content/ComponentName;

    invoke-direct {p7, p1, v0}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    .line 56
    invoke-virtual {p7, p4, p5}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;

    move-result-object p1

    .line 57
    invoke-virtual {p3, p6}, Lcom/facebook/analytics2/logger/UploadJobConfig;->toPrimitiveMap(Lcom/facebook/analytics2/logger/UploadJobConfig$PrimitiveMapWriter;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/os/PersistableBundle;

    invoke-virtual {p1, p3}, Landroid/app/job/JobInfo$Builder;->setExtras(Landroid/os/PersistableBundle;)Landroid/app/job/JobInfo$Builder;

    move-result-object p1

    .line 58
    invoke-virtual {p1, p2}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    move-result-object p1

    const/4 p3, 0x0

    .line 59
    invoke-virtual {p1, p3}, Landroid/app/job/JobInfo$Builder;->setPersisted(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object p1

    .line 61
    :try_start_0
    iget-object p4, p0, Lcom/facebook/analytics2/logger/LollipopUploadScheduler;->mJobScheduler:Landroid/app/job/JobScheduler;

    invoke-virtual {p1}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object p1

    invoke-virtual {p4, p1}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 66
    iget-object p4, p0, Lcom/facebook/analytics2/logger/LollipopUploadScheduler;->mContext:Landroid/content/Context;

    invoke-virtual {p4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p4

    .line 67
    iget-object p5, p0, Lcom/facebook/analytics2/logger/LollipopUploadScheduler;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {p4, p5}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result p4

    if-eq p4, p2, :cond_0

    if-eqz p4, :cond_0

    .line 70
    new-array p2, p2, [Ljava/lang/Object;

    iget-object p4, p0, Lcom/facebook/analytics2/logger/LollipopUploadScheduler;->mComponentName:Landroid/content/ComponentName;

    aput-object p4, p2, p3

    const-string p3, "LollipopUploadScheduler"

    const-string p4, "Service has been disabled; cannot schedule job for %s"

    invoke-static {p3, p1, p4, p2}, Lcom/facebook/debug/log/BLog;->i(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 73
    :cond_0
    throw p1
.end method
