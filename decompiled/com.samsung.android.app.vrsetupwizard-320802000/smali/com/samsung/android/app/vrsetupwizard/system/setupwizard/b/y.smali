.class Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/y;
.super Ljava/util/TimerTask;


# instance fields
.field final synthetic a:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/x;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/x;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/y;->a:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/x;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/y;->a:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/x;

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/x;->a(Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/x;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/y;->a:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/x;

    iget-object v1, v1, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/x;->a:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/y;->a:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/x;

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/x;->b(Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/x;)V

    return-void
.end method
