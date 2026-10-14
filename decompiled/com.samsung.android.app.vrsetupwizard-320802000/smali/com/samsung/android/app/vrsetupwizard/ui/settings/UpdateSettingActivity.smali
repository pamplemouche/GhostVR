.class public Lcom/samsung/android/app/vrsetupwizard/ui/settings/UpdateSettingActivity;
.super Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/v;


# static fields
.field private static n:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/v;-><init>()V

    return-void
.end method

.method static synthetic l()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/app/vrsetupwizard/ui/settings/UpdateSettingActivity;->n:Z

    return v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "[UpdateSettingActivity]onCreate()"

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->b(Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/v;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0072

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/vrsetupwizard/ui/settings/UpdateSettingActivity;->setContentView(I)V

    iput-object p0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/settings/UpdateSettingActivity;->m:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/samsung/android/app/vrsetupwizard/ui/settings/UpdateSettingActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/vrsetupwizard/ui/settings/UpdateSettingActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "storage_manage"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    sput-boolean p1, Lcom/samsung/android/app/vrsetupwizard/ui/settings/UpdateSettingActivity;->n:Z

    :cond_0
    const p1, 0x7f0f004b

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/vrsetupwizard/ui/settings/UpdateSettingActivity;->b(I)V

    invoke-virtual {p0}, Lcom/samsung/android/app/vrsetupwizard/ui/settings/UpdateSettingActivity;->f()Landroid/support/v4/app/w;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/w;->a()Landroid/support/v4/app/at;

    move-result-object p1

    const v0, 0x7f09004a

    new-instance v1, Lcom/samsung/android/app/vrsetupwizard/ui/settings/d;

    invoke-direct {v1}, Lcom/samsung/android/app/vrsetupwizard/ui/settings/d;-><init>()V

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/app/at;->a(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/at;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/at;->b()I

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    const-string v0, "[UpdateSettingActivity]onKeyDown()"

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->b(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/vrsetupwizard/ui/settings/UpdateSettingActivity;->finish()V

    const v0, 0x7f010021

    const v1, 0x7f010024

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/vrsetupwizard/ui/settings/UpdateSettingActivity;->overridePendingTransition(II)V

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/v;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/vrsetupwizard/ui/settings/UpdateSettingActivity;->finish()V

    const v0, 0x7f010021

    const v1, 0x7f010024

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/vrsetupwizard/ui/settings/UpdateSettingActivity;->overridePendingTransition(II)V

    :goto_0
    invoke-super {p0, p1}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/v;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method protected onResume()V
    .locals 1

    const-string v0, "[UpdateSettingActivity]onResume()"

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->b(Ljava/lang/String;)V

    invoke-super {p0}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/v;->onResume()V

    const-string v0, "536"

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/common/c/m;->a(Ljava/lang/String;)V

    return-void
.end method
