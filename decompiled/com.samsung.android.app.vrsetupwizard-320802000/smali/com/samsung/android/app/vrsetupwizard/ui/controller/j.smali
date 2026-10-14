.class Lcom/samsung/android/app/vrsetupwizard/ui/controller/j;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/j;->a:Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/j;->a:Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;->i(Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;)Landroid/app/NotificationManager;

    move-result-object v0

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/j;->a:Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;->j(Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/j;->a:Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;->a(Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;Z)Z

    new-instance v0, Landroid/support/v7/app/s;

    iget-object v1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/j;->a:Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;

    invoke-static {v1}, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;->d(Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/app/s;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0f0057

    invoke-virtual {v0, v1}, Landroid/support/v7/app/s;->a(I)Landroid/support/v7/app/s;

    iget-object v1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/j;->a:Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;

    invoke-virtual {v1}, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f003a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/s;->b(Ljava/lang/CharSequence;)Landroid/support/v7/app/s;

    iget-object v1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/j;->a:Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;

    invoke-virtual {v1}, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0041

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/app/vrsetupwizard/ui/controller/k;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/vrsetupwizard/ui/controller/k;-><init>(Lcom/samsung/android/app/vrsetupwizard/ui/controller/j;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/s;->a(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/s;

    iget-object v1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/j;->a:Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;

    invoke-virtual {v1}, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f003d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/app/vrsetupwizard/ui/controller/l;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/vrsetupwizard/ui/controller/l;-><init>(Lcom/samsung/android/app/vrsetupwizard/ui/controller/j;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/s;->b(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/s;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/app/s;->a(Z)Landroid/support/v7/app/s;

    invoke-virtual {v0}, Landroid/support/v7/app/s;->c()Landroid/support/v7/app/r;

    :cond_0
    return-void
.end method
