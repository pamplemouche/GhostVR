.class Lcom/samsung/android/app/vrsetupwizard/ui/controller/m;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/os/Bundle;

.field final synthetic b:Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/m;->b:Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;

    iput-object p2, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/m;->a:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/m;->b:Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;->a(Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;J)J

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/m;->a:Landroid/os/Bundle;

    const-string v1, "status"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/m;->a:Landroid/os/Bundle;

    const-string v2, "progress"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[ControllerFotaActivity]status : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->b(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ControllerFotaActivity]progress : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/m;->b:Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;->k(Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;)I

    move-result v0

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/m;->b:Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;

    invoke-static {v0, v1}, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;->a(Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;I)I

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/m;->b:Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;

    invoke-static {v0, v1}, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;->b(Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;I)V

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/m;->b:Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;

    iget-object v0, v0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;->mProgressBar:Landroid/support/v7/widget/SeslProgressBar;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SeslProgressBar;->setProgress(I)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const-string v0, "[ControllerFotaActivity]Complete"

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->b(Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/app/vrsetupwizard/system/controller/a;->a()Lcom/samsung/android/app/vrsetupwizard/system/controller/a;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/m;->b:Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;

    invoke-static {v1}, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;->d(Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/m;->b:Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/vrsetupwizard/system/controller/a;->b(Landroid/content/Context;Lcom/samsung/android/app/vrsetupwizard/system/controller/n;)V

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/m;->b:Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;->b(Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;Z)Z

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/m;->b:Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;

    invoke-static {v0, v1}, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;->c(Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;I)I

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/m;->b:Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;->l(Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;)V

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/m;->b:Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;->i(Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;)Landroid/app/NotificationManager;

    move-result-object v0

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    :cond_1
    :goto_0
    return-void
.end method
