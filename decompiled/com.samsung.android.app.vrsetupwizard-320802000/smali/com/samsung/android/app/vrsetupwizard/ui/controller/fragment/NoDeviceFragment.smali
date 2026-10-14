.class public Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/NoDeviceFragment;
.super Landroid/support/v4/app/Fragment;


# instance fields
.field private a:Landroid/view/View;

.field private b:Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/a/c;

.field private c:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "[NoDeviceFragment]CreateView()"

    invoke-static {p3}, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->b(Ljava/lang/String;)V

    const p3, 0x7f0c0006

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/NoDeviceFragment;->a:Landroid/view/View;

    iget-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/NoDeviceFragment;->a:Landroid/view/View;

    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->a(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    invoke-virtual {p0}, Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/NoDeviceFragment;->l()Landroid/support/v4/app/p;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/p;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/NoDeviceFragment;->c:Landroid/content/Context;

    iget-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/NoDeviceFragment;->a:Landroid/view/View;

    return-object p1
.end method

.method public a(Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/a/c;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/NoDeviceFragment;->b:Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/a/c;

    return-void
.end method

.method public onClickScan()V
    .locals 1
    .annotation build Lbutterknife/OnClick;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/NoDeviceFragment;->b:Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/a/c;

    invoke-interface {v0}, Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/a/c;->f()V

    return-void
.end method

.method public s()V
    .locals 1

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->s()V

    const-string v0, "521"

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/common/c/m;->a(Ljava/lang/String;)V

    return-void
.end method
