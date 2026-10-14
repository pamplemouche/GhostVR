.class public Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerPairNewActivity;
.super Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/v;

# interfaces
.implements Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/a/d;


# instance fields
.field mTextViewDescription:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
    .end annotation
.end field

.field private n:Landroid/content/Context;

.field private o:Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/PairingFragment;

.field private p:Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/SelectHandFragment;

.field private q:Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/NoDeviceFragment;

.field private r:Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/a/c;

.field private s:Z

.field private t:Landroid/support/v4/app/w;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/v;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerPairNewActivity;->s:Z

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerPairNewActivity;)V
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerPairNewActivity;->k()V

    return-void
.end method

.method static synthetic b(Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerPairNewActivity;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerPairNewActivity;->n:Landroid/content/Context;

    return-object p0
.end method

.method private p()V
    .locals 3

    const-string v0, "[ControllerPairNewActivity]init()"

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->b(Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/a/e;

    iget-object v1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerPairNewActivity;->n:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/a/e;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerPairNewActivity;->a(Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/a/c;)V

    invoke-virtual {p0}, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerPairNewActivity;->f()Landroid/support/v4/app/w;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerPairNewActivity;->t:Landroid/support/v4/app/w;

    new-instance v0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/PairingFragment;

    invoke-direct {v0}, Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/PairingFragment;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerPairNewActivity;->o:Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/PairingFragment;

    new-instance v0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/SelectHandFragment;

    invoke-direct {v0}, Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/SelectHandFragment;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerPairNewActivity;->p:Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/SelectHandFragment;

    new-instance v0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/NoDeviceFragment;

    invoke-direct {v0}, Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/NoDeviceFragment;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerPairNewActivity;->q:Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/NoDeviceFragment;

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerPairNewActivity;->o:Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/PairingFragment;

    iget-object v1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerPairNewActivity;->r:Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/a/c;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/PairingFragment;->a(Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/a/c;)V

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerPairNewActivity;->p:Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/SelectHandFragment;

    iget-object v1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerPairNewActivity;->r:Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/a/c;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/SelectHandFragment;->a(Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/a/c;)V

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerPairNewActivity;->p:Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/SelectHandFragment;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/SelectHandFragment;->a(Ljava/lang/Boolean;)V

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerPairNewActivity;->q:Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/NoDeviceFragment;

    iget-object v1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerPairNewActivity;->r:Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/a/c;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/NoDeviceFragment;->a(Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/a/c;)V

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerPairNewActivity;->r:Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/a/c;

    invoke-static {}, Lcom/samsung/android/app/vrsetupwizard/common/b/a/c;->b()Lcom/samsung/android/app/vrsetupwizard/common/b/a/c;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/app/vrsetupwizard/common/b/a/b;->a(Lcom/samsung/android/app/vrsetupwizard/common/b/a/a;)Lcom/samsung/android/app/vrsetupwizard/common/b/a/b;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/a/c;->a(Lcom/samsung/android/app/vrsetupwizard/common/b/a/b;)V

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerPairNewActivity;->r:Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/a/c;

    iget-object v1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerPairNewActivity;->o:Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/PairingFragment;

    invoke-interface {v0, p0, v1}, Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/a/c;->a(Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/a/d;Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/a/b;)V

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerPairNewActivity;->t:Landroid/support/v4/app/w;

    invoke-virtual {v0}, Landroid/support/v4/app/w;->a()Landroid/support/v4/app/at;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerPairNewActivity;->o:Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/PairingFragment;

    const v2, 0x7f09004a

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/app/at;->a(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/at;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/at;->b()I

    return-void
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/a/c;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerPairNewActivity;->r:Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/a/c;

    return-void
.end method

.method public d_()V
    .locals 3

    const-string v0, "[ControllerPairNewActivity]switchFragmentToNoDevice"

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->b(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerPairNewActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerPairNewActivity;->mTextViewDescription:Landroid/widget/TextView;

    const v1, 0x7f0f004d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerPairNewActivity;->t:Landroid/support/v4/app/w;

    invoke-virtual {v0}, Landroid/support/v4/app/w;->a()Landroid/support/v4/app/at;

    move-result-object v0

    const v1, 0x7f09004a

    iget-object v2, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerPairNewActivity;->o:Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/PairingFragment;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/at;->a(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/at;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/at;->c()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public m()V
    .locals 3

    const-string v0, "[ControllerPairNewActivity]switchFragmentToSelectHand"

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->b(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerPairNewActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerPairNewActivity;->t:Landroid/support/v4/app/w;

    invoke-virtual {v0}, Landroid/support/v4/app/w;->a()Landroid/support/v4/app/at;

    move-result-object v0

    const v1, 0x7f09004a

    iget-object v2, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerPairNewActivity;->p:Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/SelectHandFragment;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/at;->a(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/at;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/at;->c()I

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerPairNewActivity;->mTextViewDescription:Landroid/widget/TextView;

    const v1, 0x7f0f0051

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ControllerPairNewActivity]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->f(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public n()V
    .locals 3

    const-string v0, "[ControllerPairNewActivity]switchFragmentToNoDevice"

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->b(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerPairNewActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerPairNewActivity;->mTextViewDescription:Landroid/widget/TextView;

    const v1, 0x7f0f004d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerPairNewActivity;->t:Landroid/support/v4/app/w;

    invoke-virtual {v0}, Landroid/support/v4/app/w;->a()Landroid/support/v4/app/at;

    move-result-object v0

    const v1, 0x7f09004a

    iget-object v2, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerPairNewActivity;->q:Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/NoDeviceFragment;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/at;->a(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/at;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/at;->c()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ControllerPairNewActivity]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->f(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public o()V
    .locals 1

    const-string v0, "finishDeviceOOBE"

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerPairNewActivity;->o:Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/PairingFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerPairNewActivity;->r:Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/a/c;

    invoke-interface {v0}, Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/a/c;->c()V

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerPairNewActivity;->k()V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/v;->onActivityResult(IILandroid/content/Intent;)V

    invoke-static {p0}, Lcom/samsung/android/app/vrsetupwizard/common/c/k;->a(Landroid/app/Activity;)Lcom/samsung/android/app/vrsetupwizard/common/c/k;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/vrsetupwizard/common/c/k;->b()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerPairNewActivity;->p()V

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/samsung/android/app/vrsetupwizard/common/c/k;->a(Landroid/app/Activity;)Lcom/samsung/android/app/vrsetupwizard/common/c/k;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/vrsetupwizard/common/c/k;->c()V

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/v;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0009

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerPairNewActivity;->setContentView(I)V

    invoke-static {p0}, Lbutterknife/ButterKnife;->a(Landroid/app/Activity;)Lbutterknife/Unbinder;

    const p1, 0x7f0f0029

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerPairNewActivity;->b(I)V

    iput-object p0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerPairNewActivity;->n:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/app/vrsetupwizard/common/c/k;->a(Landroid/app/Activity;)Lcom/samsung/android/app/vrsetupwizard/common/c/k;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/vrsetupwizard/common/c/k;->b()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerPairNewActivity;->p()V

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/samsung/android/app/vrsetupwizard/common/c/k;->a(Landroid/app/Activity;)Lcom/samsung/android/app/vrsetupwizard/common/c/k;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/vrsetupwizard/common/c/k;->c()V

    :goto_0
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    const-string v0, "[ControllerPairNewActivity]onDestroy"

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->b(Ljava/lang/String;)V

    invoke-super {p0}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/v;->onDestroy()V

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerPairNewActivity;->r:Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/a/c;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/a/c;->a()V

    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    const-string v0, "[ControllerPairNewActivity]onKeyDown()"

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->b(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    iget-boolean v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerPairNewActivity;->s:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerPairNewActivity;->o:Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/PairingFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerPairNewActivity;->r:Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/a/c;

    invoke-interface {v0}, Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/a/c;->c()V

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerPairNewActivity;->k()V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1

    :cond_2
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/v;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 4

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v0, 0x0

    const/16 v1, 0x17

    if-lt p1, v1, :cond_0

    invoke-static {p0}, Lcom/samsung/android/app/vrsetupwizard/common/c/k;->a(Landroid/app/Activity;)Lcom/samsung/android/app/vrsetupwizard/common/c/k;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/vrsetupwizard/common/c/k;->b()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {p0}, Lcom/samsung/android/app/vrsetupwizard/common/c/k;->a(Landroid/app/Activity;)Lcom/samsung/android/app/vrsetupwizard/common/c/k;

    invoke-static {}, Lcom/samsung/android/app/vrsetupwizard/common/c/k;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerPairNewActivity;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerPairNewActivity;->n:Landroid/content/Context;

    const-string p2, "layout_inflater"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    const p2, 0x7f0c0011

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0900c4

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iget-object p3, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerPairNewActivity;->n:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v1, 0x7f0f0016

    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerPairNewActivity;->n:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f0029

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    invoke-static {p3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p2, 0x7f0900c6

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    const p3, 0x7f0900c7

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerPairNewActivity;->n:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "android.permission-group.LOCATION"

    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->getPermissionGroupInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionGroupInfo;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/pm/PermissionGroupInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v2, v1}, Landroid/content/pm/PermissionGroupInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    new-instance p2, Landroid/support/v7/app/s;

    iget-object p3, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerPairNewActivity;->n:Landroid/content/Context;

    invoke-direct {p2, p3}, Landroid/support/v7/app/s;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, p1}, Landroid/support/v7/app/s;->b(Landroid/view/View;)Landroid/support/v7/app/s;

    const/high16 p1, 0x1040000

    new-instance p3, Lcom/samsung/android/app/vrsetupwizard/ui/controller/o;

    invoke-direct {p3, p0}, Lcom/samsung/android/app/vrsetupwizard/ui/controller/o;-><init>(Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerPairNewActivity;)V

    invoke-virtual {p2, p1, p3}, Landroid/support/v7/app/s;->b(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/s;

    iget-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerPairNewActivity;->n:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p3, 0x7f0f0017

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-instance p3, Lcom/samsung/android/app/vrsetupwizard/ui/controller/p;

    invoke-direct {p3, p0}, Lcom/samsung/android/app/vrsetupwizard/ui/controller/p;-><init>(Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerPairNewActivity;)V

    invoke-virtual {p2, p1, p3}, Landroid/support/v7/app/s;->a(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/s;

    invoke-virtual {p2, v0}, Landroid/support/v7/app/s;->a(Z)Landroid/support/v7/app/s;

    invoke-virtual {p2}, Landroid/support/v7/app/s;->b()Landroid/support/v7/app/r;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v7/app/r;->show()V

    return-void

    :cond_0
    :goto_0
    array-length p1, p2

    if-ge v0, p1, :cond_2

    aget p1, p3, v0

    if-gez p1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "[ControllerPairNewActivity]Necessary permission "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p2, p2, v0

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " was refused!"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->f(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerPairNewActivity;->k()V

    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerPairNewActivity;->p()V

    return-void
.end method
