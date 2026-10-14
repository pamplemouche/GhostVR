.class Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/c;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/c;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/d;->a:Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/d;->a:Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/c;

    iget-object v0, v0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/c;->a:Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;

    invoke-static {}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/k;->e()Landroid/content/Intent;

    move-result-object v1

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
