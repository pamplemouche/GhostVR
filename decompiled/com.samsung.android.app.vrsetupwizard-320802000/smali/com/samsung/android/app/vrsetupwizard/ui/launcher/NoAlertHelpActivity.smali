.class public Lcom/samsung/android/app/vrsetupwizard/ui/launcher/NoAlertHelpActivity;
.super Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/v;


# instance fields
.field n:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/v;-><init>()V

    return-void
.end method


# virtual methods
.method public onClickOk()V
    .locals 0
    .annotation build Lbutterknife/OnClick;
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/app/vrsetupwizard/ui/launcher/NoAlertHelpActivity;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/v;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c006c

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/vrsetupwizard/ui/launcher/NoAlertHelpActivity;->setContentView(I)V

    invoke-static {p0}, Lbutterknife/ButterKnife;->a(Landroid/app/Activity;)Lbutterknife/Unbinder;

    iput-object p0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/launcher/NoAlertHelpActivity;->n:Landroid/content/Context;

    return-void
.end method

.method protected onResume()V
    .locals 1

    invoke-super {p0}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/v;->onResume()V

    const-string v0, "527"

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/common/c/m;->a(Ljava/lang/String;)V

    return-void
.end method
