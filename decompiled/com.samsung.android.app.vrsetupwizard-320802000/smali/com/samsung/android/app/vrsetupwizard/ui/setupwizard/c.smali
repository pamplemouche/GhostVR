.class Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/j;


# instance fields
.field final synthetic a:Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/c;->a:Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[DownloadInstallActivity]onServiceConnected : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->b(Ljava/lang/String;)V

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/c;->a:Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;

    invoke-static {p1}, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->a(Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/k;->c(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/c;->a:Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;

    invoke-static {p1}, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->b(Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;)Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/k;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/k;->c()V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/c;->a:Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;

    invoke-static {p1}, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->c(Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/c;->a:Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;

    new-instance v0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/d;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/d;-><init>(Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/c;)V

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :cond_1
    const-string p1, "NONE"

    sput-object p1, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/k;->c:Ljava/lang/String;

    iget-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/c;->a:Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;

    new-instance v0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/e;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/e;-><init>(Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/c;)V

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public b(Z)V
    .locals 1

    iget-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/c;->a:Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;

    new-instance v0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/f;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/f;-><init>(Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/c;)V

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/c;->a:Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;

    invoke-static {p1}, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->b(Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;)Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/k;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/c;->a:Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->a(Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/k;->b(Landroid/content/Context;)V

    return-void
.end method
