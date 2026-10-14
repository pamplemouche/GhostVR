.class public final Lcom/samsung/android/app/vrsetupwizard/ui/VRSetupWizard;
.super Landroid/app/Activity;


# static fields
.field static final synthetic a:[La/e/e;


# instance fields
.field private final b:La/b;

.field private final c:Ljava/lang/String;

.field private d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [La/e/e;

    new-instance v1, La/c/b/n;

    const-class v2, Lcom/samsung/android/app/vrsetupwizard/ui/VRSetupWizard;

    invoke-static {v2}, La/c/b/o;->a(Ljava/lang/Class;)La/e/b;

    move-result-object v2

    const-string v3, "mContext"

    const-string v4, "getMContext()Lcom/samsung/android/app/vrsetupwizard/ui/VRSetupWizard;"

    invoke-direct {v1, v2, v3, v4}, La/c/b/n;-><init>(La/e/c;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, La/c/b/o;->a(La/c/b/m;)La/e/g;

    move-result-object v1

    check-cast v1, La/e/e;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/app/vrsetupwizard/ui/VRSetupWizard;->a:[La/e/e;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Lcom/samsung/android/app/vrsetupwizard/ui/b;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/vrsetupwizard/ui/b;-><init>(Lcom/samsung/android/app/vrsetupwizard/ui/VRSetupWizard;)V

    check-cast v0, La/c/a/a;

    invoke-static {v0}, La/c;->a(La/c/a/a;)La/b;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/VRSetupWizard;->b:La/b;

    const-string v0, "[VRSetupWizard]"

    iput-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/VRSetupWizard;->c:Ljava/lang/String;

    return-void
.end method

.method private final a()Lcom/samsung/android/app/vrsetupwizard/ui/VRSetupWizard;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/VRSetupWizard;->b:La/b;

    sget-object v1, Lcom/samsung/android/app/vrsetupwizard/ui/VRSetupWizard;->a:[La/e/e;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, La/b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/vrsetupwizard/ui/VRSetupWizard;

    return-object v0
.end method

.method private final b()V
    .locals 6

    invoke-direct {p0}, Lcom/samsung/android/app/vrsetupwizard/ui/VRSetupWizard;->a()Lcom/samsung/android/app/vrsetupwizard/ui/VRSetupWizard;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/common/b/h;->a(Landroid/content/Context;)Z

    move-result v0

    const/high16 v1, 0x20000000

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/app/vrsetupwizard/ui/VRSetupWizard;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "SetupWizard Done"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->b(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/app/vrsetupwizard/ui/VRSetupWizard;->a()Lcom/samsung/android/app/vrsetupwizard/ui/VRSetupWizard;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/common/c/o;->o(Landroid/content/Context;)I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/app/vrsetupwizard/ui/VRSetupWizard;->a()Lcom/samsung/android/app/vrsetupwizard/ui/VRSetupWizard;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/common/c/o;->r(Landroid/content/Context;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-direct {p0}, Lcom/samsung/android/app/vrsetupwizard/ui/VRSetupWizard;->a()Lcom/samsung/android/app/vrsetupwizard/ui/VRSetupWizard;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    const-class v3, Lcom/samsung/android/app/vrsetupwizard/ui/launcher/VRLauncherActivity;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :goto_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/vrsetupwizard/ui/VRSetupWizard;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_4

    :cond_0
    new-instance v0, Landroid/support/v7/app/s;

    new-instance v1, Landroid/view/ContextThemeWrapper;

    move-object v2, p0

    check-cast v2, Landroid/content/Context;

    const v3, 0x7f10026e

    invoke-direct {v1, v2, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    check-cast v1, Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/support/v7/app/s;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/samsung/android/app/vrsetupwizard/common/c/o;->e()Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x7f0f001c

    goto :goto_1

    :cond_1
    const v1, 0x7f0f001b

    :goto_1
    invoke-virtual {v0, v1}, Landroid/support/v7/app/s;->a(I)Landroid/support/v7/app/s;

    invoke-direct {p0}, Lcom/samsung/android/app/vrsetupwizard/ui/VRSetupWizard;->a()Lcom/samsung/android/app/vrsetupwizard/ui/VRSetupWizard;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/app/vrsetupwizard/common/c/o;->k(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    const v1, 0x7f0f001a

    goto :goto_2

    :cond_2
    const v1, 0x7f0f0019

    :goto_2
    invoke-virtual {v0, v1}, Landroid/support/v7/app/s;->b(I)Landroid/support/v7/app/s;

    const v1, 0x104000a

    new-instance v2, Lcom/samsung/android/app/vrsetupwizard/ui/a;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/vrsetupwizard/ui/a;-><init>(Lcom/samsung/android/app/vrsetupwizard/ui/VRSetupWizard;)V

    check-cast v2, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/s;->a(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/s;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/app/s;->a(Z)Landroid/support/v7/app/s;

    invoke-virtual {v0}, Landroid/support/v7/app/s;->c()Landroid/support/v7/app/r;

    return-void

    :cond_3
    invoke-direct {p0}, Lcom/samsung/android/app/vrsetupwizard/ui/VRSetupWizard;->a()Lcom/samsung/android/app/vrsetupwizard/ui/VRSetupWizard;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/common/b/h;->b(Landroid/content/Context;)Z

    move-result v0

    const/4 v2, 0x1

    const-string v3, " UpdateJobService in running in background, Stop it."

    const-string v4, "is_using_data_network"

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lcom/samsung/android/app/vrsetupwizard/ui/VRSetupWizard;->a()Lcom/samsung/android/app/vrsetupwizard/ui/VRSetupWizard;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/common/c/o;->x(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/samsung/android/app/vrsetupwizard/ui/VRSetupWizard;->c:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->b(Ljava/lang/String;)V

    sput-boolean v2, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/services/UpdateJobService;->b:Z

    :cond_4
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-direct {p0}, Lcom/samsung/android/app/vrsetupwizard/ui/VRSetupWizard;->a()Lcom/samsung/android/app/vrsetupwizard/ui/VRSetupWizard;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    const-class v3, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;

    :goto_3
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-boolean v1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/VRSetupWizard;->d:Z

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto/16 :goto_0

    :cond_5
    invoke-direct {p0}, Lcom/samsung/android/app/vrsetupwizard/ui/VRSetupWizard;->a()Lcom/samsung/android/app/vrsetupwizard/ui/VRSetupWizard;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/common/c/o;->x(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/samsung/android/app/vrsetupwizard/ui/VRSetupWizard;->c:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->b(Ljava/lang/String;)V

    sput-boolean v2, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/services/UpdateJobService;->b:Z

    :cond_6
    invoke-direct {p0}, Lcom/samsung/android/app/vrsetupwizard/ui/VRSetupWizard;->a()Lcom/samsung/android/app/vrsetupwizard/ui/VRSetupWizard;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/common/c/o;->n(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_7

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-direct {p0}, Lcom/samsung/android/app/vrsetupwizard/ui/VRSetupWizard;->a()Lcom/samsung/android/app/vrsetupwizard/ui/VRSetupWizard;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    const-class v3, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/CompatibleWarningActivity;

    goto :goto_3

    :cond_7
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-direct {p0}, Lcom/samsung/android/app/vrsetupwizard/ui/VRSetupWizard;->a()Lcom/samsung/android/app/vrsetupwizard/ui/VRSetupWizard;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    const-class v3, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/WarningAgreeActivity;

    goto :goto_3

    :goto_4
    invoke-virtual {p0}, Lcom/samsung/android/app/vrsetupwizard/ui/VRSetupWizard;->finish()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/samsung/android/app/vrsetupwizard/ui/VRSetupWizard;->a()Lcom/samsung/android/app/vrsetupwizard/ui/VRSetupWizard;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/app/vrsetupwizard/common/c/o;->j(Landroid/content/Context;)Z

    move-result p1

    sput-boolean p1, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->a:Z

    invoke-direct {p0}, Lcom/samsung/android/app/vrsetupwizard/ui/VRSetupWizard;->a()Lcom/samsung/android/app/vrsetupwizard/ui/VRSetupWizard;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    const-string v0, "[SetupWizard] VRSetupWizard onCreate()"

    invoke-static {p1, v0}, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->a(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/app/vrsetupwizard/ui/VRSetupWizard;->getApplication()Landroid/app/Application;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/app/vrsetupwizard/common/c/m;->a(Landroid/app/Application;)V

    invoke-direct {p0}, Lcom/samsung/android/app/vrsetupwizard/ui/VRSetupWizard;->a()Lcom/samsung/android/app/vrsetupwizard/ui/VRSetupWizard;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/vrsetupwizard/ui/VRSetupWizard;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "unknown"

    const-string v1, "hmt_device_model"

    invoke-static {p1, v1, v0}, Lcom/samsung/android/app/vrsetupwizard/common/c/r;->b(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "it"

    invoke-static {p1, v2}, La/c/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, p1

    check-cast v2, Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_1

    invoke-static {p1, v0}, La/c/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/app/vrsetupwizard/ui/VRSetupWizard;->a()Lcom/samsung/android/app/vrsetupwizard/ui/VRSetupWizard;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/vrsetupwizard/ui/VRSetupWizard;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "SM-R324"

    invoke-static {p1, v1, v0}, Lcom/samsung/android/app/vrsetupwizard/common/c/r;->a(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/app/vrsetupwizard/ui/VRSetupWizard;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_3

    const-string v0, "is_using_data_network"

    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/VRSetupWizard;->d:Z

    :cond_3
    const p1, 0x7f0c006d

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/vrsetupwizard/ui/VRSetupWizard;->setContentView(I)V

    invoke-direct {p0}, Lcom/samsung/android/app/vrsetupwizard/ui/VRSetupWizard;->a()Lcom/samsung/android/app/vrsetupwizard/ui/VRSetupWizard;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/app/vrsetupwizard/common/c/o;->q(Landroid/content/Context;)V

    invoke-static {}, Lcom/samsung/android/app/vrsetupwizard/common/c/b;->a()Lcom/samsung/android/app/vrsetupwizard/common/c/b;

    move-result-object p1

    invoke-direct {p0}, Lcom/samsung/android/app/vrsetupwizard/ui/VRSetupWizard;->a()Lcom/samsung/android/app/vrsetupwizard/ui/VRSetupWizard;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/vrsetupwizard/common/c/b;->b(Landroid/content/Context;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/VRSetupWizard;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "onDestory()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->b(Ljava/lang/String;)V

    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/vrsetupwizard/ui/VRSetupWizard;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/app/NotificationManager;->cancelAll()V

    return-void

    :cond_0
    new-instance v0, La/i;

    const-string v1, "null cannot be cast to non-null type android.app.NotificationManager"

    invoke-direct {v0, v1}, La/i;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected onResume()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/VRSetupWizard;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "onResume()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->b(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/app/vrsetupwizard/ui/VRSetupWizard;->b()V

    return-void
.end method
