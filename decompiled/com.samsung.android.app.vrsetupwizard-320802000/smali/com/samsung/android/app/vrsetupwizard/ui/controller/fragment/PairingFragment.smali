.class public Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/PairingFragment;
.super Landroid/support/v4/app/Fragment;

# interfaces
.implements Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/a/b;


# instance fields
.field private a:Landroid/view/View;

.field private b:Landroid/content/Context;

.field private c:Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/a/c;

.field mTvStatus:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "[PairingFragment]onCreateView()"

    invoke-static {p3}, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->b(Ljava/lang/String;)V

    const/4 p3, 0x0

    const v0, 0x7f0c0007

    invoke-virtual {p1, v0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/PairingFragment;->a:Landroid/view/View;

    iget-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/PairingFragment;->a:Landroid/view/View;

    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->a(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    invoke-virtual {p0}, Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/PairingFragment;->k()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/PairingFragment;->b:Landroid/content/Context;

    iget-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/PairingFragment;->c:Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/a/c;

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/PairingFragment;->l()Landroid/support/v4/app/p;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/ControllerOOBEActivity;

    invoke-virtual {p1}, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/ControllerOOBEActivity;->p()Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/a/c;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/PairingFragment;->c:Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/a/c;

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/PairingFragment;->c:Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/a/c;

    invoke-interface {p1}, Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/a/c;->b()V

    invoke-static {}, Lcom/samsung/android/app/vrsetupwizard/system/controller/a;->a()Lcom/samsung/android/app/vrsetupwizard/system/controller/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/vrsetupwizard/system/controller/a;->d()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/PairingFragment;->c:Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/a/c;

    const/4 p2, 0x1

    invoke-interface {p1, p2}, Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/a/c;->b(Z)V

    iget-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/PairingFragment;->b:Landroid/content/Context;

    const p2, 0x7f0f0027

    invoke-static {p1, p2, p3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/PairingFragment;->l()Landroid/support/v4/app/p;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/p;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string p2, "mac_address"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "[PairingFragment]macAddress : "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->b(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2

    iget-object p2, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/PairingFragment;->c:Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/a/c;

    invoke-interface {p2, p1}, Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/a/c;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/PairingFragment;->c:Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/a/c;

    invoke-interface {p1}, Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/a/c;->d()V

    :goto_0
    iget-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/PairingFragment;->a:Landroid/view/View;

    return-object p1
.end method

.method public a(Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/a/c;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/PairingFragment;->c:Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/a/c;

    return-void
.end method

.method public c(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/PairingFragment;->mTvStatus:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    return-void
.end method

.method public s()V
    .locals 1

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->s()V

    const-string v0, "515"

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/common/c/m;->a(Ljava/lang/String;)V

    return-void
.end method

.method public u()V
    .locals 1

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->u()V

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/PairingFragment;->c:Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/a/c;

    invoke-interface {v0}, Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/a/c;->e()V

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/PairingFragment;->c:Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/a/c;

    invoke-interface {v0}, Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/a/c;->c()V

    return-void
.end method
