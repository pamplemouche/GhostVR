.class public Lcom/samsung/android/app/vrsetupwizard/ui/settings/a;
.super Landroid/support/v7/preference/s;

# interfaces
.implements Landroid/support/v7/preference/p;
.implements Lcom/samsung/android/app/vrsetupwizard/system/controller/n;


# instance fields
.field private a:Landroid/support/v7/preference/Preference;

.field private b:Landroid/support/v7/preference/Preference;

.field private c:Landroid/support/v7/preference/Preference;

.field private d:Landroid/support/v7/preference/Preference;

.field private e:Z

.field private f:Landroid/support/v7/app/az;

.field private g:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/support/v7/preference/s;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/settings/a;->e:Z

    return-void
.end method

.method private b(Landroid/content/Intent;)V
    .locals 3

    const-string v0, "mac_address"

    :try_start_0
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SettingsActivity]macAddress : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->b(Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/settings/a;->g:Landroid/content/Context;

    const-class v0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ManageControllerActivity;

    invoke-virtual {v1, p1, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/high16 p1, 0x20000000

    invoke-virtual {v1, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/vrsetupwizard/ui/settings/a;->a(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/samsung/android/app/vrsetupwizard/ui/settings/a;->l()Landroid/support/v4/app/p;

    move-result-object p1

    const v0, 0x7f010022

    const v1, 0x7f010023

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/app/p;->overridePendingTransition(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public a(ILandroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public a(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 0

    return-void
.end method

.method public a(Landroid/bluetooth/BluetoothGatt;II)V
    .locals 0

    return-void
.end method

.method public a(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/vrsetupwizard/ui/settings/a;->d(I)V

    const p1, 0x7f120002

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/vrsetupwizard/ui/settings/a;->a_(ILjava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/app/vrsetupwizard/ui/settings/a;->k()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/settings/a;->g:Landroid/content/Context;

    const-string p1, "key_manage_controller"

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/vrsetupwizard/ui/settings/a;->a(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/settings/a;->a:Landroid/support/v7/preference/Preference;

    iget-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/settings/a;->a:Landroid/support/v7/preference/Preference;

    invoke-virtual {p1, p0}, Landroid/support/v7/preference/Preference;->a(Landroid/support/v7/preference/p;)V

    const-string p1, "key_update"

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/vrsetupwizard/ui/settings/a;->a(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/settings/a;->c:Landroid/support/v7/preference/Preference;

    iget-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/settings/a;->c:Landroid/support/v7/preference/Preference;

    invoke-virtual {p1, p0}, Landroid/support/v7/preference/Preference;->a(Landroid/support/v7/preference/p;)V

    const-string p1, "key_open_source_licenses"

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/vrsetupwizard/ui/settings/a;->a(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/settings/a;->d:Landroid/support/v7/preference/Preference;

    iget-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/settings/a;->d:Landroid/support/v7/preference/Preference;

    invoke-virtual {p1, p0}, Landroid/support/v7/preference/Preference;->a(Landroid/support/v7/preference/p;)V

    const-string p1, "key_select_hand"

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/vrsetupwizard/ui/settings/a;->a(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/settings/a;->b:Landroid/support/v7/preference/Preference;

    iget-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/settings/a;->b:Landroid/support/v7/preference/Preference;

    invoke-virtual {p1, p0}, Landroid/support/v7/preference/Preference;->a(Landroid/support/v7/preference/p;)V

    return-void
.end method

.method public a(Landroid/support/v7/preference/Preference;)Z
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/settings/a;->a:Landroid/support/v7/preference/Preference;

    const/4 v1, 0x0

    const-string v2, "528"

    if-ne p1, v0, :cond_3

    const-string p1, "0009"

    invoke-static {v2, p1}, Lcom/samsung/android/app/vrsetupwizard/common/c/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/app/vrsetupwizard/system/controller/a;->a()Lcom/samsung/android/app/vrsetupwizard/system/controller/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/vrsetupwizard/system/controller/a;->d()Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "[SettingsActivity]Bluetooth turn on"

    invoke-static {p1}, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->b(Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/app/vrsetupwizard/system/controller/a;->a()Lcom/samsung/android/app/vrsetupwizard/system/controller/a;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/settings/a;->g:Landroid/content/Context;

    invoke-virtual {p1, v0, p0}, Lcom/samsung/android/app/vrsetupwizard/system/controller/a;->a(Landroid/content/Context;Lcom/samsung/android/app/vrsetupwizard/system/controller/n;)V

    iget-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/settings/a;->g:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 v0, 0x1

    const-string v2, "bluetooth_security_on_check"

    invoke-static {p1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    const-string v2, "CscFeature_Common_ConfigLocalSecurityPolicy"

    invoke-static {v2}, Lcom/samsung/android/app/vrsetupwizard/common/a/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "ChinaNalSecurity"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-eq p1, v0, :cond_1

    :cond_0
    new-instance p1, Landroid/support/v7/app/az;

    iget-object v2, p0, Lcom/samsung/android/app/vrsetupwizard/ui/settings/a;->g:Landroid/content/Context;

    invoke-direct {p1, v2}, Landroid/support/v7/app/az;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/settings/a;->f:Landroid/support/v7/app/az;

    iget-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/settings/a;->f:Landroid/support/v7/app/az;

    invoke-virtual {p0}, Lcom/samsung/android/app/vrsetupwizard/ui/settings/a;->m()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f0027

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/support/v7/app/az;->a(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/settings/a;->f:Landroid/support/v7/app/az;

    invoke-virtual {p1, v1}, Landroid/support/v7/app/az;->setCancelable(Z)V

    iget-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/settings/a;->f:Landroid/support/v7/app/az;

    invoke-virtual {p1, v1}, Landroid/support/v7/app/az;->setCanceledOnTouchOutside(Z)V

    iget-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/settings/a;->f:Landroid/support/v7/app/az;

    invoke-virtual {p1}, Landroid/support/v7/app/az;->show()V

    :cond_1
    iput-boolean v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/settings/a;->e:Z

    invoke-static {}, Lcom/samsung/android/app/vrsetupwizard/system/controller/a;->a()Lcom/samsung/android/app/vrsetupwizard/system/controller/a;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/vrsetupwizard/system/controller/a;->a(Z)V

    goto/16 :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/app/vrsetupwizard/ui/settings/a;->l()Landroid/support/v4/app/p;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/p;->getParentActivityIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/app/vrsetupwizard/ui/settings/a;->b(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/settings/a;->b:Landroid/support/v7/preference/Preference;

    const v3, 0x7f010023

    const v4, 0x7f010022

    const/high16 v5, 0x20000000

    if-ne p1, v0, :cond_4

    const-string p1, "0010"

    invoke-static {v2, p1}, Lcom/samsung/android/app/vrsetupwizard/common/c/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/settings/a;->g:Landroid/content/Context;

    const-class v2, Lcom/samsung/android/app/vrsetupwizard/ui/controller/HandednessActivity;

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {p1, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/vrsetupwizard/ui/settings/a;->a(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/samsung/android/app/vrsetupwizard/ui/settings/a;->l()Landroid/support/v4/app/p;

    move-result-object p1

    invoke-virtual {p1, v4, v3}, Landroid/support/v4/app/p;->overridePendingTransition(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/settings/a;->c:Landroid/support/v7/preference/Preference;

    if-ne p1, v0, :cond_5

    const-string p1, "0011"

    invoke-static {v2, p1}, Lcom/samsung/android/app/vrsetupwizard/common/c/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_1
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/settings/a;->g:Landroid/content/Context;

    const-class v2, Lcom/samsung/android/app/vrsetupwizard/ui/settings/UpdateSettingActivity;

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {p1, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/vrsetupwizard/ui/settings/a;->a(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/samsung/android/app/vrsetupwizard/ui/settings/a;->l()Landroid/support/v4/app/p;

    move-result-object p1

    invoke-virtual {p1, v4, v3}, Landroid/support/v4/app/p;->overridePendingTransition(II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/settings/a;->d:Landroid/support/v7/preference/Preference;

    if-ne p1, v0, :cond_6

    const-string p1, "0023"

    invoke-static {v2, p1}, Lcom/samsung/android/app/vrsetupwizard/common/c/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_2
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/settings/a;->g:Landroid/content/Context;

    const-class v2, Lcom/samsung/android/app/vrsetupwizard/ui/settings/OpenSourceActivity;

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {p1, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/vrsetupwizard/ui/settings/a;->a(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/samsung/android/app/vrsetupwizard/ui/settings/a;->l()Landroid/support/v4/app/p;

    move-result-object p1

    invoke-virtual {p1, v4, v3}, Landroid/support/v4/app/p;->overridePendingTransition(II)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_1
    :cond_6
    :goto_0
    return v1
.end method

.method public a_(I)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[SettingsActivity]onBluetoothStateChanged : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->b(Ljava/lang/String;)V

    const/4 v0, 0x0

    const/16 v1, 0xc

    if-ne p1, v1, :cond_0

    invoke-static {}, Lcom/samsung/android/app/vrsetupwizard/system/controller/a;->a()Lcom/samsung/android/app/vrsetupwizard/system/controller/a;

    move-result-object p1

    iget-object v1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/settings/a;->g:Landroid/content/Context;

    invoke-virtual {p1, v1, p0}, Lcom/samsung/android/app/vrsetupwizard/system/controller/a;->b(Landroid/content/Context;Lcom/samsung/android/app/vrsetupwizard/system/controller/n;)V

    iget-boolean p1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/settings/a;->e:Z

    if-eqz p1, :cond_2

    iput-boolean v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/settings/a;->e:Z

    invoke-virtual {p0}, Lcom/samsung/android/app/vrsetupwizard/ui/settings/a;->l()Landroid/support/v4/app/p;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/p;->getParentActivityIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/app/vrsetupwizard/ui/settings/a;->b(Landroid/content/Intent;)V

    iget-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/settings/a;->f:Landroid/support/v7/app/az;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/support/v7/app/az;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/settings/a;->f:Landroid/support/v7/app/az;

    invoke-virtual {p1}, Landroid/support/v7/app/az;->dismiss()V

    goto :goto_0

    :cond_0
    const/16 v1, 0xa

    if-ne p1, v1, :cond_2

    invoke-static {}, Lcom/samsung/android/app/vrsetupwizard/system/controller/a;->a()Lcom/samsung/android/app/vrsetupwizard/system/controller/a;

    move-result-object p1

    iget-object v1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/settings/a;->g:Landroid/content/Context;

    invoke-virtual {p1, v1, p0}, Lcom/samsung/android/app/vrsetupwizard/system/controller/a;->b(Landroid/content/Context;Lcom/samsung/android/app/vrsetupwizard/system/controller/n;)V

    iput-boolean v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/settings/a;->e:Z

    iget-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/settings/a;->f:Landroid/support/v7/app/az;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/support/v7/app/az;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/settings/a;->f:Landroid/support/v7/app/az;

    invoke-virtual {p1}, Landroid/support/v7/app/az;->dismiss()V

    :cond_1
    new-instance p1, Landroid/support/v7/app/s;

    iget-object v1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/settings/a;->g:Landroid/content/Context;

    invoke-direct {p1, v1}, Landroid/support/v7/app/s;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0f0057

    invoke-virtual {p1, v1}, Landroid/support/v7/app/s;->a(I)Landroid/support/v7/app/s;

    invoke-virtual {p0}, Lcom/samsung/android/app/vrsetupwizard/ui/settings/a;->m()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0026

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/support/v7/app/s;->b(Ljava/lang/CharSequence;)Landroid/support/v7/app/s;

    invoke-virtual {p0}, Lcom/samsung/android/app/vrsetupwizard/ui/settings/a;->m()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x104000a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/app/vrsetupwizard/ui/settings/b;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/vrsetupwizard/ui/settings/b;-><init>(Lcom/samsung/android/app/vrsetupwizard/ui/settings/a;)V

    invoke-virtual {p1, v1, v2}, Landroid/support/v7/app/s;->a(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/s;

    invoke-virtual {p1, v0}, Landroid/support/v7/app/s;->a(Z)Landroid/support/v7/app/s;

    invoke-virtual {p1}, Landroid/support/v7/app/s;->c()Landroid/support/v7/app/r;

    :cond_2
    :goto_0
    return-void
.end method

.method public a_(Z)V
    .locals 0

    return-void
.end method

.method public b(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 0

    return-void
.end method
