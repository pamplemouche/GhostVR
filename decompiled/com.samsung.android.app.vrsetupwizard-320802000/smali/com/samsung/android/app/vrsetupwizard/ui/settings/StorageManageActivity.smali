.class public Lcom/samsung/android/app/vrsetupwizard/ui/settings/StorageManageActivity;
.super Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/v;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/v;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/v;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0064

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/vrsetupwizard/ui/settings/StorageManageActivity;->setContentView(I)V

    const p1, 0x7f0f0068

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/vrsetupwizard/ui/settings/StorageManageActivity;->b(I)V

    invoke-virtual {p0}, Lcom/samsung/android/app/vrsetupwizard/ui/settings/StorageManageActivity;->f()Landroid/support/v4/app/w;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/w;->a()Landroid/support/v4/app/at;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/app/vrsetupwizard/ui/settings/c;

    invoke-direct {v0}, Lcom/samsung/android/app/vrsetupwizard/ui/settings/c;-><init>()V

    const v1, 0x7f09004a

    invoke-virtual {p1, v1, v0}, Landroid/support/v4/app/at;->a(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/at;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/at;->b()I

    return-void
.end method
