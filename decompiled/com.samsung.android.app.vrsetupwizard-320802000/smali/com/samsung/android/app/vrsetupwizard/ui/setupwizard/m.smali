.class Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/m;
.super Lbutterknife/a/a;


# instance fields
.field final synthetic b:Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;

.field final synthetic c:Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity_ViewBinding;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity_ViewBinding;Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/m;->c:Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity_ViewBinding;

    iput-object p2, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/m;->b:Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;

    invoke-direct {p0}, Lbutterknife/a/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/m;->b:Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;

    invoke-virtual {p1}, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->onClickInstall()V

    return-void
.end method
