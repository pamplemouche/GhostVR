.class public Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/FinishActivity;
.super Lcom/samsung/android/app/vrsetupwizard/common/ui/setupwizard/b;


# instance fields
.field private m:Landroid/content/Context;

.field private n:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/vrsetupwizard/common/ui/setupwizard/b;-><init>()V

    return-void
.end method

.method private m()V
    .locals 4

    const-string v0, "[FinishActivity]runFinishProcess"

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/FinishActivity;->m:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/common/c/o;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/FinishActivity;->m:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/app/vrsetupwizard/common/b/h;->a(Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/FinishActivity;->m:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "vrsw_shortcut_creation"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Lcom/samsung/android/app/vrsetupwizard/common/c/u;->b(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "[FinishActivity]Create shortcuts for basic apps"

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/FinishActivity;->m:Landroid/content/Context;

    const-string v3, "com.samsung.android.app.vr.gallery2"

    invoke-static {v0, v3}, Lcom/samsung/android/app/vrsetupwizard/common/c/o;->g(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/FinishActivity;->m:Landroid/content/Context;

    const/high16 v3, 0x7f0e0000

    invoke-static {v0, v3}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/samsung/android/app/vrsetupwizard/common/c/o;->a(Landroid/content/Context;Landroid/content/Intent$ShortcutIconResource;)V

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/FinishActivity;->m:Landroid/content/Context;

    const-string v3, "com.samsung.vrvideo"

    invoke-static {v0, v3}, Lcom/samsung/android/app/vrsetupwizard/common/c/o;->g(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/FinishActivity;->m:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v2, v1}, Lcom/samsung/android/app/vrsetupwizard/common/c/u;->a(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/FinishActivity;->m:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "first_setup_done"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/FinishActivity;->m:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/common/c/o;->o(Landroid/content/Context;)I

    move-result v0

    if-ne v0, v1, :cond_1

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.facebook.appmanager"

    const-string v2, "com.facebook.oxygen.appmanager.scheduler.BootstrapReceiver"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/FinishActivity;->sendBroadcast(Landroid/content/Intent;)V

    const-string v0, "com.oculus.horizon/.StartActivity"

    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v0, "[FinishActivity]com.oculus.horizon/.StartActivity"

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->b(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/FinishActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[FinishActivity]Exception : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->f(Ljava/lang/String;)V

    goto :goto_1

    :catch_1
    const-string v0, "[FinishActivity]Activity is not found."
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/FinishActivity;->finishAndRemoveTask()V

    goto :goto_3

    :goto_2
    throw v0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/FinishActivity;->m:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/common/c/o;->r(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/FinishActivity;->m:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "com.samsung.android.app.vr.home/com.samsung.android.app.vr.home.HomeActivity"

    const-string v2, "vr_system_uri"

    invoke-static {v0, v2, v1}, Lcom/samsung/android/app/vrsetupwizard/common/c/r;->a(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/FinishActivity;->m:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "vr_home_uri"

    invoke-static {v0, v2, v1}, Lcom/samsung/android/app/vrsetupwizard/common/c/r;->a(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    return-void
.end method


# virtual methods
.method public onClickStartLauncher()V
    .locals 3
    .annotation build Lbutterknife/OnClick;
    .end annotation

    const-string v0, "511"

    const-string v1, "0020"

    invoke-static {v0, v1}, Lcom/samsung/android/app/vrsetupwizard/common/c/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    const-string v0, "[FinishActivity]Go to Launcher"

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->f(Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/FinishActivity;->m:Landroid/content/Context;

    const-class v2, Lcom/samsung/android/app/vrsetupwizard/ui/launcher/VRLauncherActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/FinishActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/FinishActivity;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/samsung/android/app/vrsetupwizard/common/ui/setupwizard/b;->onCreate(Landroid/os/Bundle;)V

    iput-object p0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/FinishActivity;->m:Landroid/content/Context;

    iget-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/FinishActivity;->m:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/app/vrsetupwizard/common/c/o;->o(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/FinishActivity;->n:I

    iget-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/FinishActivity;->m:Landroid/content/Context;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[SetupWizard] FinishActivity onCreate() : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/FinishActivity;->n:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->a(Landroid/content/Context;Ljava/lang/String;)V

    const p1, 0x7f0c0071

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/FinishActivity;->setContentView(I)V

    invoke-static {p0}, Lbutterknife/ButterKnife;->a(Landroid/app/Activity;)Lbutterknife/Unbinder;

    sget-object p1, Lcom/samsung/android/app/vrsetupwizard/system/receivers/UpdateCheckIntentReceiver;->a:Lcom/samsung/android/app/vrsetupwizard/system/receivers/a;

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/FinishActivity;->m:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/vrsetupwizard/system/receivers/a;->a(Landroid/content/Context;)V

    const-string p1, "notification"

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/FinishActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    const/16 v0, 0x63

    invoke-virtual {p1, v0}, Landroid/app/NotificationManager;->cancel(I)V

    iget p1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/FinishActivity;->n:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const-string p1, "Global"

    goto :goto_0

    :cond_0
    const-string p1, "China"

    :goto_0
    const-string v0, "1000"

    invoke-static {v0, p1}, Lcom/samsung/android/app/vrsetupwizard/common/c/m;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/FinishActivity;->m:Landroid/content/Context;

    iget v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/FinishActivity;->n:I

    invoke-static {p1, v0}, Lcom/samsung/android/app/vrsetupwizard/common/c/o;->b(Landroid/content/Context;I)V

    invoke-direct {p0}, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/FinishActivity;->m()V

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/app/vrsetupwizard/common/ui/setupwizard/b;->onDestroy()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    const-string v0, "[FinishActivity]onKeyDown()"

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->b(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/FinishActivity;->finishAndRemoveTask()V

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/vrsetupwizard/common/ui/setupwizard/b;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected onResume()V
    .locals 1

    const-string v0, "[FinishActivity]onResume()"

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->b(Ljava/lang/String;)V

    invoke-super {p0}, Lcom/samsung/android/app/vrsetupwizard/common/ui/setupwizard/b;->onResume()V

    const-string v0, "511"

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/common/c/m;->a(Ljava/lang/String;)V

    return-void
.end method
