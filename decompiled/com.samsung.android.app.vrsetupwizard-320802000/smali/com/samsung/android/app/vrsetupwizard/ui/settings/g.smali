.class Lcom/samsung/android/app/vrsetupwizard/ui/settings/g;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic a:Lcom/samsung/android/app/vrsetupwizard/ui/settings/f;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/vrsetupwizard/ui/settings/f;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/settings/g;->a:Lcom/samsung/android/app/vrsetupwizard/ui/settings/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/settings/g;->a:Lcom/samsung/android/app/vrsetupwizard/ui/settings/f;

    iget-object p1, p1, Lcom/samsung/android/app/vrsetupwizard/ui/settings/f;->a:Lcom/samsung/android/app/vrsetupwizard/ui/settings/d;

    invoke-static {p1}, Lcom/samsung/android/app/vrsetupwizard/ui/settings/d;->a(Lcom/samsung/android/app/vrsetupwizard/ui/settings/d;)Landroid/support/v7/preference/DropDownPreference;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v7/preference/DropDownPreference;->o()Ljava/lang/String;

    move-result-object p1

    const-string v0, "0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/settings/g;->a:Lcom/samsung/android/app/vrsetupwizard/ui/settings/f;

    iget-object p1, p1, Lcom/samsung/android/app/vrsetupwizard/ui/settings/f;->a:Lcom/samsung/android/app/vrsetupwizard/ui/settings/d;

    invoke-static {p1}, Lcom/samsung/android/app/vrsetupwizard/ui/settings/d;->b(Lcom/samsung/android/app/vrsetupwizard/ui/settings/d;)Landroid/support/v7/preference/SwitchPreferenceCompat;

    move-result-object p1

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/settings/g;->a:Lcom/samsung/android/app/vrsetupwizard/ui/settings/f;

    iget-object p1, p1, Lcom/samsung/android/app/vrsetupwizard/ui/settings/f;->a:Lcom/samsung/android/app/vrsetupwizard/ui/settings/d;

    invoke-static {p1}, Lcom/samsung/android/app/vrsetupwizard/ui/settings/d;->b(Lcom/samsung/android/app/vrsetupwizard/ui/settings/d;)Landroid/support/v7/preference/SwitchPreferenceCompat;

    move-result-object p1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/support/v7/preference/SwitchPreferenceCompat;->a(Z)V

    return-void
.end method
