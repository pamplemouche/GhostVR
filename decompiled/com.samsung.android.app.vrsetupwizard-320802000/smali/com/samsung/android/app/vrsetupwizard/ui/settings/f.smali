.class Lcom/samsung/android/app/vrsetupwizard/ui/settings/f;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v7/preference/o;


# instance fields
.field final synthetic a:Lcom/samsung/android/app/vrsetupwizard/ui/settings/d;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/vrsetupwizard/ui/settings/d;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/settings/f;->a:Lcom/samsung/android/app/vrsetupwizard/ui/settings/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 5

    iget-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/settings/f;->a:Lcom/samsung/android/app/vrsetupwizard/ui/settings/d;

    invoke-static {p1}, Lcom/samsung/android/app/vrsetupwizard/ui/settings/d;->a(Lcom/samsung/android/app/vrsetupwizard/ui/settings/d;)Landroid/support/v7/preference/DropDownPreference;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v7/preference/DropDownPreference;->o()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Landroid/support/v7/app/s;

    iget-object v2, p0, Lcom/samsung/android/app/vrsetupwizard/ui/settings/f;->a:Lcom/samsung/android/app/vrsetupwizard/ui/settings/d;

    iget-object v2, v2, Lcom/samsung/android/app/vrsetupwizard/ui/settings/d;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/support/v7/app/s;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0f00d9

    invoke-virtual {v1, v2}, Landroid/support/v7/app/s;->a(I)Landroid/support/v7/app/s;

    move-result-object v2

    const v3, 0x7f0f00d8

    invoke-virtual {v2, v3}, Landroid/support/v7/app/s;->b(I)Landroid/support/v7/app/s;

    move-result-object v2

    const v3, 0x104000a

    new-instance v4, Lcom/samsung/android/app/vrsetupwizard/ui/settings/j;

    invoke-direct {v4, p0, p2, v0}, Lcom/samsung/android/app/vrsetupwizard/ui/settings/j;-><init>(Lcom/samsung/android/app/vrsetupwizard/ui/settings/f;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/support/v7/app/s;->a(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/s;

    move-result-object p2

    const/high16 v2, 0x1040000

    new-instance v3, Lcom/samsung/android/app/vrsetupwizard/ui/settings/i;

    invoke-direct {v3, p0, p1}, Lcom/samsung/android/app/vrsetupwizard/ui/settings/i;-><init>(Lcom/samsung/android/app/vrsetupwizard/ui/settings/f;Ljava/lang/String;)V

    invoke-virtual {p2, v2, v3}, Landroid/support/v7/app/s;->b(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/s;

    move-result-object p2

    new-instance v2, Lcom/samsung/android/app/vrsetupwizard/ui/settings/h;

    invoke-direct {v2, p0, p1}, Lcom/samsung/android/app/vrsetupwizard/ui/settings/h;-><init>(Lcom/samsung/android/app/vrsetupwizard/ui/settings/f;Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Landroid/support/v7/app/s;->a(Landroid/content/DialogInterface$OnCancelListener;)Landroid/support/v7/app/s;

    move-result-object p1

    new-instance p2, Lcom/samsung/android/app/vrsetupwizard/ui/settings/g;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/vrsetupwizard/ui/settings/g;-><init>(Lcom/samsung/android/app/vrsetupwizard/ui/settings/f;)V

    invoke-virtual {p1, p2}, Landroid/support/v7/app/s;->a(Landroid/content/DialogInterface$OnDismissListener;)Landroid/support/v7/app/s;

    invoke-virtual {v1}, Landroid/support/v7/app/s;->c()Landroid/support/v7/app/r;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/settings/f;->a:Lcom/samsung/android/app/vrsetupwizard/ui/settings/d;

    invoke-static {p1}, Lcom/samsung/android/app/vrsetupwizard/ui/settings/d;->a(Lcom/samsung/android/app/vrsetupwizard/ui/settings/d;)Landroid/support/v7/preference/DropDownPreference;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/DropDownPreference;->b(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/settings/f;->a:Lcom/samsung/android/app/vrsetupwizard/ui/settings/d;

    invoke-static {p1}, Lcom/samsung/android/app/vrsetupwizard/ui/settings/d;->a(Lcom/samsung/android/app/vrsetupwizard/ui/settings/d;)Landroid/support/v7/preference/DropDownPreference;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/app/vrsetupwizard/ui/settings/f;->a:Lcom/samsung/android/app/vrsetupwizard/ui/settings/d;

    invoke-static {p2}, Lcom/samsung/android/app/vrsetupwizard/ui/settings/d;->a(Lcom/samsung/android/app/vrsetupwizard/ui/settings/d;)Landroid/support/v7/preference/DropDownPreference;

    move-result-object p2

    invoke-virtual {p2}, Landroid/support/v7/preference/DropDownPreference;->p()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/support/v7/preference/DropDownPreference;->a(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/settings/f;->a:Lcom/samsung/android/app/vrsetupwizard/ui/settings/d;

    iget-object p1, p1, Lcom/samsung/android/app/vrsetupwizard/ui/settings/d;->a:Landroid/content/Context;

    const-string p2, "vrsw_update_settings_update_check_mode"

    invoke-static {p1, p2, v0}, Lcom/samsung/android/app/vrsetupwizard/common/c/l;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/samsung/android/app/vrsetupwizard/system/receivers/UpdateCheckIntentReceiver;->a:Lcom/samsung/android/app/vrsetupwizard/system/receivers/a;

    iget-object p2, p0, Lcom/samsung/android/app/vrsetupwizard/ui/settings/f;->a:Lcom/samsung/android/app/vrsetupwizard/ui/settings/d;

    iget-object p2, p2, Lcom/samsung/android/app/vrsetupwizard/ui/settings/d;->a:Landroid/content/Context;

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/vrsetupwizard/system/receivers/a;->a(Landroid/content/Context;)V

    :goto_0
    const-string p1, "0"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string p2, "initial_app_auto_update"

    const-string v1, "0017"

    const-string v2, "536"

    const/4 v3, 0x1

    if-eqz p1, :cond_1

    const-string p1, "Never"

    invoke-static {v2, v1, p1}, Lcom/samsung/android/app/vrsetupwizard/common/c/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/settings/f;->a:Lcom/samsung/android/app/vrsetupwizard/ui/settings/d;

    iget-object p1, p1, Lcom/samsung/android/app/vrsetupwizard/ui/settings/d;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lcom/samsung/android/app/vrsetupwizard/common/c/t;->a(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    iget-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/settings/f;->a:Lcom/samsung/android/app/vrsetupwizard/ui/settings/d;

    invoke-static {p1}, Lcom/samsung/android/app/vrsetupwizard/ui/settings/d;->b(Lcom/samsung/android/app/vrsetupwizard/ui/settings/d;)Landroid/support/v7/preference/SwitchPreferenceCompat;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/SwitchPreferenceCompat;->a(Z)V

    goto :goto_1

    :cond_1
    const-string p1, "1"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "Wi-Fi only"

    invoke-static {v2, v1, p1}, Lcom/samsung/android/app/vrsetupwizard/common/c/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/settings/f;->a:Lcom/samsung/android/app/vrsetupwizard/ui/settings/d;

    iget-object p1, p1, Lcom/samsung/android/app/vrsetupwizard/ui/settings/d;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, p2, v3}, Lcom/samsung/android/app/vrsetupwizard/common/c/t;->a(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    iget-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/settings/f;->a:Lcom/samsung/android/app/vrsetupwizard/ui/settings/d;

    invoke-static {p1}, Lcom/samsung/android/app/vrsetupwizard/ui/settings/d;->b(Lcom/samsung/android/app/vrsetupwizard/ui/settings/d;)Landroid/support/v7/preference/SwitchPreferenceCompat;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/support/v7/preference/SwitchPreferenceCompat;->a(Z)V

    :goto_1
    return v3
.end method
