.class Lcom/samsung/android/app/vrsetupwizard/ui/settings/j;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/samsung/android/app/vrsetupwizard/ui/settings/f;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/vrsetupwizard/ui/settings/f;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/settings/j;->c:Lcom/samsung/android/app/vrsetupwizard/ui/settings/f;

    iput-object p2, p0, Lcom/samsung/android/app/vrsetupwizard/ui/settings/j;->a:Ljava/lang/Object;

    iput-object p3, p0, Lcom/samsung/android/app/vrsetupwizard/ui/settings/j;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    const-string p1, "536"

    const-string p2, "0017"

    const-string v0, "Always"

    invoke-static {p1, p2, v0}, Lcom/samsung/android/app/vrsetupwizard/common/c/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/settings/j;->c:Lcom/samsung/android/app/vrsetupwizard/ui/settings/f;

    iget-object p1, p1, Lcom/samsung/android/app/vrsetupwizard/ui/settings/f;->a:Lcom/samsung/android/app/vrsetupwizard/ui/settings/d;

    invoke-static {p1}, Lcom/samsung/android/app/vrsetupwizard/ui/settings/d;->a(Lcom/samsung/android/app/vrsetupwizard/ui/settings/d;)Landroid/support/v7/preference/DropDownPreference;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/app/vrsetupwizard/ui/settings/j;->a:Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/support/v7/preference/DropDownPreference;->b(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/settings/j;->c:Lcom/samsung/android/app/vrsetupwizard/ui/settings/f;

    iget-object p1, p1, Lcom/samsung/android/app/vrsetupwizard/ui/settings/f;->a:Lcom/samsung/android/app/vrsetupwizard/ui/settings/d;

    invoke-static {p1}, Lcom/samsung/android/app/vrsetupwizard/ui/settings/d;->a(Lcom/samsung/android/app/vrsetupwizard/ui/settings/d;)Landroid/support/v7/preference/DropDownPreference;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/app/vrsetupwizard/ui/settings/j;->c:Lcom/samsung/android/app/vrsetupwizard/ui/settings/f;

    iget-object p2, p2, Lcom/samsung/android/app/vrsetupwizard/ui/settings/f;->a:Lcom/samsung/android/app/vrsetupwizard/ui/settings/d;

    invoke-static {p2}, Lcom/samsung/android/app/vrsetupwizard/ui/settings/d;->a(Lcom/samsung/android/app/vrsetupwizard/ui/settings/d;)Landroid/support/v7/preference/DropDownPreference;

    move-result-object p2

    invoke-virtual {p2}, Landroid/support/v7/preference/DropDownPreference;->p()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/support/v7/preference/DropDownPreference;->a(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/settings/j;->c:Lcom/samsung/android/app/vrsetupwizard/ui/settings/f;

    iget-object p1, p1, Lcom/samsung/android/app/vrsetupwizard/ui/settings/f;->a:Lcom/samsung/android/app/vrsetupwizard/ui/settings/d;

    iget-object p1, p1, Lcom/samsung/android/app/vrsetupwizard/ui/settings/d;->a:Landroid/content/Context;

    iget-object p2, p0, Lcom/samsung/android/app/vrsetupwizard/ui/settings/j;->b:Ljava/lang/String;

    const-string v0, "vrsw_update_settings_update_check_mode"

    invoke-static {p1, v0, p2}, Lcom/samsung/android/app/vrsetupwizard/common/c/l;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/samsung/android/app/vrsetupwizard/system/receivers/UpdateCheckIntentReceiver;->a:Lcom/samsung/android/app/vrsetupwizard/system/receivers/a;

    iget-object p2, p0, Lcom/samsung/android/app/vrsetupwizard/ui/settings/j;->c:Lcom/samsung/android/app/vrsetupwizard/ui/settings/f;

    iget-object p2, p2, Lcom/samsung/android/app/vrsetupwizard/ui/settings/f;->a:Lcom/samsung/android/app/vrsetupwizard/ui/settings/d;

    iget-object p2, p2, Lcom/samsung/android/app/vrsetupwizard/ui/settings/d;->a:Landroid/content/Context;

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/vrsetupwizard/system/receivers/a;->a(Landroid/content/Context;)V

    return-void
.end method
