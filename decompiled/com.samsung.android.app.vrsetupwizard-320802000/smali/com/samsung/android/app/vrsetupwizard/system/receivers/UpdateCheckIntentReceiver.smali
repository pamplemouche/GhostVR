.class public final Lcom/samsung/android/app/vrsetupwizard/system/receivers/UpdateCheckIntentReceiver;
.super Landroid/content/BroadcastReceiver;


# static fields
.field public static final a:Lcom/samsung/android/app/vrsetupwizard/system/receivers/a;

.field private static c:J


# instance fields
.field private b:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/app/vrsetupwizard/system/receivers/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/vrsetupwizard/system/receivers/a;-><init>(La/c/b/h;)V

    sput-object v0, Lcom/samsung/android/app/vrsetupwizard/system/receivers/UpdateCheckIntentReceiver;->a:Lcom/samsung/android/app/vrsetupwizard/system/receivers/a;

    const-wide/32 v0, 0x5265c00

    sput-wide v0, Lcom/samsung/android/app/vrsetupwizard/system/receivers/UpdateCheckIntentReceiver;->c:J

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/app/vrsetupwizard/system/receivers/UpdateCheckIntentReceiver;->b:I

    return-void
.end method

.method public static final synthetic a()J
    .locals 2

    sget-wide v0, Lcom/samsung/android/app/vrsetupwizard/system/receivers/UpdateCheckIntentReceiver;->c:J

    return-wide v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10

    const-string v0, "mContext"

    invoke-static {p1, v0}, La/c/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "intent"

    invoke-static {p2, v0}, La/c/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[UpdateCheckIntentReceiver]onReceive() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->b(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/samsung/android/app/vrsetupwizard/common/c/o;->t(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_10

    invoke-static {p1}, Lcom/samsung/android/app/vrsetupwizard/common/b/h;->a(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_7

    :cond_0
    const-string v1, "com.samsung.android.app.vrsetupwizard.action.REQUEST_VR_APP_UPDATE_VRSW"

    invoke-static {v0, v1}, La/c/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    const-string v1, "reset"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[UpdateCheckIntentReceiver]reset : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->b(Ljava/lang/String;)V

    if-eqz v1, :cond_1

    sget-object p2, Lcom/samsung/android/app/vrsetupwizard/system/receivers/UpdateCheckIntentReceiver;->a:Lcom/samsung/android/app/vrsetupwizard/system/receivers/a;

    invoke-virtual {p2, p1}, Lcom/samsung/android/app/vrsetupwizard/system/receivers/a;->a(Landroid/content/Context;)V

    return-void

    :cond_1
    const-string v1, "docked"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    const/4 v1, 0x1

    if-ne p2, v1, :cond_2

    return-void

    :cond_2
    invoke-static {p1}, Lcom/samsung/android/app/vrsetupwizard/common/c/o;->o(Landroid/content/Context;)I

    move-result p2

    iput p2, p0, Lcom/samsung/android/app/vrsetupwizard/system/receivers/UpdateCheckIntentReceiver;->b:I

    const-string p2, "jobscheduler"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_f

    check-cast p2, Landroid/app/job/JobScheduler;

    const-string v3, "vrsw_update_settings_update_check_mode"

    const-string v4, "1"

    invoke-static {p1, v3, v4}, Lcom/samsung/android/app/vrsetupwizard/common/c/l;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/samsung/android/app/vrsetupwizard/system/receivers/UpdateCheckIntentReceiver;->b:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_3

    const-string v4, "0"

    invoke-static {v3, v4}, La/c/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p2}, Landroid/app/job/JobScheduler;->cancelAll()V

    return-void

    :cond_3
    invoke-virtual {p2}, Landroid/app/job/JobScheduler;->getAllPendingJobs()Ljava/util/List;

    move-result-object v3

    const-string v4, "jobScheduler.allPendingJobs"

    invoke-static {v3, v4}, La/c/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Ljava/lang/Iterable;

    instance-of v5, v3, Ljava/util/Collection;

    const/16 v6, 0xc83

    const-string v7, "it"

    if-eqz v5, :cond_5

    move-object v5, v3

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_5

    :cond_4
    const/4 v3, 0x0

    goto :goto_1

    :cond_5
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/job/JobInfo;

    invoke-static {v5, v7}, La/c/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Landroid/app/job/JobInfo;->getId()I

    move-result v8

    if-ne v8, v6, :cond_7

    invoke-virtual {v5}, Landroid/app/job/JobInfo;->isPeriodic()Z

    move-result v5

    if-nez v5, :cond_7

    const/4 v5, 0x1

    goto :goto_0

    :cond_7
    const/4 v5, 0x0

    :goto_0
    if-eqz v5, :cond_6

    const/4 v3, 0x1

    :goto_1
    invoke-virtual {p2}, Landroid/app/job/JobScheduler;->getAllPendingJobs()Ljava/util/List;

    move-result-object v5

    invoke-static {v5, v4}, La/c/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Ljava/lang/Iterable;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_8
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    move-object v9, v8

    check-cast v9, Landroid/app/job/JobInfo;

    invoke-static {v9, v7}, La/c/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v9}, Landroid/app/job/JobInfo;->getId()I

    move-result v9

    if-eq v9, v6, :cond_9

    const/4 v9, 0x1

    goto :goto_3

    :cond_9
    const/4 v9, 0x0

    :goto_3
    if-eqz v9, :cond_8

    invoke-interface {v4, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_a
    check-cast v4, Ljava/util/List;

    check-cast v4, Ljava/lang/Iterable;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/job/JobInfo;

    invoke-static {v4, v7}, La/c/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->getId()I

    move-result v4

    invoke-virtual {p2, v4}, Landroid/app/job/JobScheduler;->cancel(I)V

    goto :goto_4

    :cond_b
    const-string v2, "android.intent.action.BOOT_COMPLETED"

    const-string v4, "com.samsung.intent.action.REQUEST_VR_APP_UPDATE"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, La/a/b;->a([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    if-nez v3, :cond_e

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt v0, v2, :cond_d

    const-string v0, "usagestats"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_c

    check-cast v0, Landroid/app/usage/UsageStatsManager;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[VRSW] Add JobScheduler by VRSVC : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/app/usage/UsageStatsManager;->getAppStandbyBucket()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    :cond_c
    new-instance p1, La/i;

    const-string p2, "null cannot be cast to non-null type android.app.usage.UsageStatsManager"

    invoke-direct {p1, p2}, La/i;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_d
    const-string v0, "[VRSW] Add JobScheduler by VRSVC"

    :goto_5
    invoke-static {p1, v0}, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->a(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v0, Landroid/app/job/JobInfo$Builder;

    new-instance v2, Landroid/content/ComponentName;

    const-class v3, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/services/UpdateJobService;

    invoke-direct {v2, p1, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-direct {v0, v6, v2}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    new-instance p1, Landroid/os/PersistableBundle;

    invoke-direct {p1}, Landroid/os/PersistableBundle;-><init>()V

    const-string v2, "run_by_vrsvc"

    const-string v3, "true"

    invoke-virtual {p1, v2, v3}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/app/job/JobInfo$Builder;->setExtras(Landroid/os/PersistableBundle;)Landroid/app/job/JobInfo$Builder;

    invoke-virtual {v0, v1}, Landroid/app/job/JobInfo$Builder;->setPersisted(Z)Landroid/app/job/JobInfo$Builder;

    invoke-virtual {v0, v1}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    invoke-virtual {v0}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    goto :goto_6

    :cond_e
    sget-object p2, Lcom/samsung/android/app/vrsetupwizard/system/receivers/UpdateCheckIntentReceiver;->a:Lcom/samsung/android/app/vrsetupwizard/system/receivers/a;

    invoke-virtual {p2, p1}, Lcom/samsung/android/app/vrsetupwizard/system/receivers/a;->a(Landroid/content/Context;)V

    :goto_6
    return-void

    :cond_f
    new-instance p1, La/i;

    const-string p2, "null cannot be cast to non-null type android.app.job.JobScheduler"

    invoke-direct {p1, p2}, La/i;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_10
    :goto_7
    invoke-static {p1}, Lcom/samsung/android/app/vrsetupwizard/common/c/o;->q(Landroid/content/Context;)V

    return-void
.end method
