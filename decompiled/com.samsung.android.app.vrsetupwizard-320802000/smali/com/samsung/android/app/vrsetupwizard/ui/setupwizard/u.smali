.class final Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/u;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/WarningAgreeActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/WarningAgreeActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/u;->a:Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/WarningAgreeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    const-string p1, "502"

    const-string v0, "0024"

    invoke-static {p1, v0}, Lcom/samsung/android/app/vrsetupwizard/common/c/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/u;->a:Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/WarningAgreeActivity;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/u;->a:Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/WarningAgreeActivity;

    invoke-static {v1}, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/WarningAgreeActivity;->a(Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/WarningAgreeActivity;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/u;->a:Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/WarningAgreeActivity;

    invoke-static {v1}, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/WarningAgreeActivity;->e(Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/WarningAgreeActivity;)Z

    move-result v1

    const-string v2, "is_using_data_network"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/WarningAgreeActivity;->startActivity(Landroid/content/Intent;)V

    iget-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/u;->a:Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/WarningAgreeActivity;

    invoke-virtual {p1}, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/WarningAgreeActivity;->finish()V

    iget-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/u;->a:Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/WarningAgreeActivity;

    const v0, 0x7f010022

    const v1, 0x7f010023

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/WarningAgreeActivity;->overridePendingTransition(II)V

    return-void
.end method
