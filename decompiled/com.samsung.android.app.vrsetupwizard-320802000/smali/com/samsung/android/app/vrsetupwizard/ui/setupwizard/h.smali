.class Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/h;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/h;->a:Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/h;->a:Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;

    invoke-static {p1}, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->e(Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;)V

    return-void
.end method
