.class Lcom/samsung/android/app/vrsetupwizard/ui/controller/k;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/samsung/android/app/vrsetupwizard/ui/controller/j;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/vrsetupwizard/ui/controller/j;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/k;->a:Lcom/samsung/android/app/vrsetupwizard/ui/controller/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object p2, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/k;->a:Lcom/samsung/android/app/vrsetupwizard/ui/controller/j;

    iget-object p2, p2, Lcom/samsung/android/app/vrsetupwizard/ui/controller/j;->a:Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;

    const/4 v0, 0x1

    invoke-static {p2, v0}, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;->b(Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;Z)Z

    iget-object p2, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/k;->a:Lcom/samsung/android/app/vrsetupwizard/ui/controller/j;

    iget-object p2, p2, Lcom/samsung/android/app/vrsetupwizard/ui/controller/j;->a:Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;->a(Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;I)I

    iget-object p2, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/k;->a:Lcom/samsung/android/app/vrsetupwizard/ui/controller/j;

    iget-object p2, p2, Lcom/samsung/android/app/vrsetupwizard/ui/controller/j;->a:Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;

    const-wide/16 v1, 0x0

    invoke-static {p2, v1, v2}, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;->a(Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;J)J

    iget-object p2, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/k;->a:Lcom/samsung/android/app/vrsetupwizard/ui/controller/j;

    iget-object p2, p2, Lcom/samsung/android/app/vrsetupwizard/ui/controller/j;->a:Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;

    invoke-static {p2, v0}, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;->a(Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;Z)Z

    iget-object p2, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/k;->a:Lcom/samsung/android/app/vrsetupwizard/ui/controller/j;

    iget-object p2, p2, Lcom/samsung/android/app/vrsetupwizard/ui/controller/j;->a:Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;

    invoke-static {p2}, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;->h(Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;)Landroid/os/Handler;

    move-result-object p2

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/k;->a:Lcom/samsung/android/app/vrsetupwizard/ui/controller/j;

    iget-object v0, v0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/j;->a:Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;->g(Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;)Ljava/lang/Runnable;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    invoke-virtual {p2, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-static {}, Lcom/samsung/android/app/vrsetupwizard/system/controller/a;->a()Lcom/samsung/android/app/vrsetupwizard/system/controller/a;

    move-result-object p2

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/k;->a:Lcom/samsung/android/app/vrsetupwizard/ui/controller/j;

    iget-object v0, v0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/j;->a:Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;->d(Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/k;->a:Lcom/samsung/android/app/vrsetupwizard/ui/controller/j;

    iget-object v1, v1, Lcom/samsung/android/app/vrsetupwizard/ui/controller/j;->a:Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;

    invoke-static {v1}, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;->c(Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/samsung/android/app/vrsetupwizard/system/controller/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
