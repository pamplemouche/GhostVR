.class Lcom/samsung/android/app/vrsetupwizard/ui/settings/l;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/samsung/android/app/vrsetupwizard/ui/settings/d;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/vrsetupwizard/ui/settings/d;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/settings/l;->a:Lcom/samsung/android/app/vrsetupwizard/ui/settings/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    new-instance p1, Landroid/os/PersistableBundle;

    invoke-direct {p1}, Landroid/os/PersistableBundle;-><init>()V

    const-string p2, "manual_update"

    const-string v0, "true"

    invoke-virtual {p1, p2, v0}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p2, Landroid/app/job/JobInfo$Builder;

    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/settings/l;->a:Lcom/samsung/android/app/vrsetupwizard/ui/settings/d;

    iget-object v1, v1, Lcom/samsung/android/app/vrsetupwizard/ui/settings/d;->a:Landroid/content/Context;

    const-class v2, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/services/UpdateJobService;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v1, 0x0

    invoke-direct {p2, v1, v0}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/app/job/JobInfo$Builder;->setExtras(Landroid/os/PersistableBundle;)Landroid/app/job/JobInfo$Builder;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/app/vrsetupwizard/ui/settings/l;->a:Lcom/samsung/android/app/vrsetupwizard/ui/settings/d;

    iget-object p2, p2, Lcom/samsung/android/app/vrsetupwizard/ui/settings/d;->a:Landroid/content/Context;

    const-string v0, "jobscheduler"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/job/JobScheduler;

    invoke-virtual {p1}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    iget-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/settings/l;->a:Lcom/samsung/android/app/vrsetupwizard/ui/settings/d;

    invoke-virtual {p1}, Lcom/samsung/android/app/vrsetupwizard/ui/settings/d;->l()Landroid/support/v4/app/p;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/p;->finishAndRemoveTask()V

    return-void
.end method
