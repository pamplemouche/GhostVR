.class Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/k;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;ILjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/k;->c:Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;

    iput p2, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/k;->a:I

    iput-object p3, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/k;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/k;->c:Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;

    new-instance v1, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/l;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/l;-><init>(Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/k;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
