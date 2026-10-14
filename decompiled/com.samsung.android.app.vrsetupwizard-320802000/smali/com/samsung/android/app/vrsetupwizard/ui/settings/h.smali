.class Lcom/samsung/android/app/vrsetupwizard/ui/settings/h;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/samsung/android/app/vrsetupwizard/ui/settings/f;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/vrsetupwizard/ui/settings/f;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/settings/h;->b:Lcom/samsung/android/app/vrsetupwizard/ui/settings/f;

    iput-object p2, p0, Lcom/samsung/android/app/vrsetupwizard/ui/settings/h;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/settings/h;->b:Lcom/samsung/android/app/vrsetupwizard/ui/settings/f;

    iget-object p1, p1, Lcom/samsung/android/app/vrsetupwizard/ui/settings/f;->a:Lcom/samsung/android/app/vrsetupwizard/ui/settings/d;

    invoke-static {p1}, Lcom/samsung/android/app/vrsetupwizard/ui/settings/d;->a(Lcom/samsung/android/app/vrsetupwizard/ui/settings/d;)Landroid/support/v7/preference/DropDownPreference;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/settings/h;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/DropDownPreference;->b(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/settings/h;->b:Lcom/samsung/android/app/vrsetupwizard/ui/settings/f;

    iget-object p1, p1, Lcom/samsung/android/app/vrsetupwizard/ui/settings/f;->a:Lcom/samsung/android/app/vrsetupwizard/ui/settings/d;

    invoke-static {p1}, Lcom/samsung/android/app/vrsetupwizard/ui/settings/d;->a(Lcom/samsung/android/app/vrsetupwizard/ui/settings/d;)Landroid/support/v7/preference/DropDownPreference;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/settings/h;->b:Lcom/samsung/android/app/vrsetupwizard/ui/settings/f;

    iget-object v0, v0, Lcom/samsung/android/app/vrsetupwizard/ui/settings/f;->a:Lcom/samsung/android/app/vrsetupwizard/ui/settings/d;

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/ui/settings/d;->a(Lcom/samsung/android/app/vrsetupwizard/ui/settings/d;)Landroid/support/v7/preference/DropDownPreference;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/preference/DropDownPreference;->p()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/DropDownPreference;->a(Ljava/lang/CharSequence;)V

    return-void
.end method
