.class Lcom/samsung/android/app/vrsetupwizard/ui/controller/f;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/f;->a:Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/f;->a:Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;->a(Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;)J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    add-long/2addr v1, v3

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;->a(Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;J)J

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ControllerFotaActivity]mTimerCount : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/f;->a:Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;

    invoke-static {v1}, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;->a(Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/f;->a:Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;->a(Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;)J

    move-result-wide v0

    iget-object v2, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/f;->a:Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;

    invoke-static {v2}, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;->b(Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;)J

    move-result-wide v5

    cmp-long v2, v0, v5

    if-ltz v2, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/f;->a:Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;->c(Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/app/vrsetupwizard/system/controller/a;->a()Lcom/samsung/android/app/vrsetupwizard/system/controller/a;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/f;->a:Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;

    invoke-static {v1}, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;->d(Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/f;->a:Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;

    invoke-static {v2}, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;->c(Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/vrsetupwizard/system/controller/a;->b(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/f;->a:Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;->e(Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/f;->a:Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;->f(Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/f;->a:Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;->h(Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/f;->a:Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;

    invoke-static {v1}, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;->g(Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    :goto_0
    return-void
.end method
