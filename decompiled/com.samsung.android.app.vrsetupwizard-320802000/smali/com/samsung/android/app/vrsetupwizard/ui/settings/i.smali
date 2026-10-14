.class Lcom/samsung/android/app/vrsetupwizard/ui/settings/i;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/samsung/android/app/vrsetupwizard/ui/settings/f;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/vrsetupwizard/ui/settings/f;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/settings/i;->b:Lcom/samsung/android/app/vrsetupwizard/ui/settings/f;

    iput-object p2, p0, Lcom/samsung/android/app/vrsetupwizard/ui/settings/i;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/settings/i;->b:Lcom/samsung/android/app/vrsetupwizard/ui/settings/f;

    iget-object p1, p1, Lcom/samsung/android/app/vrsetupwizard/ui/settings/f;->a:Lcom/samsung/android/app/vrsetupwizard/ui/settings/d;

    invoke-static {p1}, Lcom/samsung/android/app/vrsetupwizard/ui/settings/d;->a(Lcom/samsung/android/app/vrsetupwizard/ui/settings/d;)Landroid/support/v7/preference/DropDownPreference;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/app/vrsetupwizard/ui/settings/i;->a:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/support/v7/preference/DropDownPreference;->b(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/settings/i;->b:Lcom/samsung/android/app/vrsetupwizard/ui/settings/f;

    iget-object p1, p1, Lcom/samsung/android/app/vrsetupwizard/ui/settings/f;->a:Lcom/samsung/android/app/vrsetupwizard/ui/settings/d;

    invoke-static {p1}, Lcom/samsung/android/app/vrsetupwizard/ui/settings/d;->a(Lcom/samsung/android/app/vrsetupwizard/ui/settings/d;)Landroid/support/v7/preference/DropDownPreference;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/app/vrsetupwizard/ui/settings/i;->b:Lcom/samsung/android/app/vrsetupwizard/ui/settings/f;

    iget-object p2, p2, Lcom/samsung/android/app/vrsetupwizard/ui/settings/f;->a:Lcom/samsung/android/app/vrsetupwizard/ui/settings/d;

    invoke-static {p2}, Lcom/samsung/android/app/vrsetupwizard/ui/settings/d;->a(Lcom/samsung/android/app/vrsetupwizard/ui/settings/d;)Landroid/support/v7/preference/DropDownPreference;

    move-result-object p2

    invoke-virtual {p2}, Landroid/support/v7/preference/DropDownPreference;->p()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/support/v7/preference/DropDownPreference;->a(Ljava/lang/CharSequence;)V

    return-void
.end method
