.class public Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/ControllerOOBEActivity;
.super Lcom/samsung/android/app/vrsetupwizard/common/ui/setupwizard/b;

# interfaces
.implements Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/a/d;


# instance fields
.field private m:Landroid/content/Context;

.field mButtonArea:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/BindView;
    .end annotation
.end field

.field mTextViewDescription:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
    .end annotation
.end field

.field private n:Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/PairingFragment;

.field private o:Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/SelectHandFragment;

.field private p:Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/NoDeviceFragment;

.field private q:Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/a/c;

.field private r:Landroid/support/v4/app/w;

.field private s:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/app/vrsetupwizard/common/ui/setupwizard/b;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/ControllerOOBEActivity;->s:Z

    return-void
.end method

.method private q()V
    .locals 3

    const-string v0, "[ControllerOOBEActivity]init()"

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->b(Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/a/e;

    iget-object v1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/ControllerOOBEActivity;->m:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/a/e;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/ControllerOOBEActivity;->a(Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/a/c;)V

    invoke-virtual {p0}, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/ControllerOOBEActivity;->f()Landroid/support/v4/app/w;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/ControllerOOBEActivity;->r:Landroid/support/v4/app/w;

    new-instance v0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/PairingFragment;

    invoke-direct {v0}, Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/PairingFragment;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/ControllerOOBEActivity;->n:Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/PairingFragment;

    new-instance v0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/SelectHandFragment;

    invoke-direct {v0}, Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/SelectHandFragment;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/ControllerOOBEActivity;->o:Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/SelectHandFragment;

    new-instance v0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/NoDeviceFragment;

    invoke-direct {v0}, Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/NoDeviceFragment;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/ControllerOOBEActivity;->p:Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/NoDeviceFragment;

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/ControllerOOBEActivity;->n:Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/PairingFragment;

    iget-object v1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/ControllerOOBEActivity;->q:Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/a/c;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/PairingFragment;->a(Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/a/c;)V

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/ControllerOOBEActivity;->o:Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/SelectHandFragment;

    iget-object v1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/ControllerOOBEActivity;->q:Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/a/c;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/SelectHandFragment;->a(Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/a/c;)V

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/ControllerOOBEActivity;->o:Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/SelectHandFragment;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/SelectHandFragment;->a(Ljava/lang/Boolean;)V

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/ControllerOOBEActivity;->p:Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/NoDeviceFragment;

    iget-object v1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/ControllerOOBEActivity;->q:Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/a/c;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/NoDeviceFragment;->a(Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/a/c;)V

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/ControllerOOBEActivity;->q:Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/a/c;

    invoke-static {}, Lcom/samsung/android/app/vrsetupwizard/common/b/a/c;->b()Lcom/samsung/android/app/vrsetupwizard/common/b/a/c;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/app/vrsetupwizard/common/b/a/b;->a(Lcom/samsung/android/app/vrsetupwizard/common/b/a/a;)Lcom/samsung/android/app/vrsetupwizard/common/b/a/b;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/a/c;->a(Lcom/samsung/android/app/vrsetupwizard/common/b/a/b;)V

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/ControllerOOBEActivity;->q:Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/a/c;

    iget-object v1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/ControllerOOBEActivity;->n:Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/PairingFragment;

    invoke-interface {v0, p0, v1}, Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/a/c;->a(Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/a/d;Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/a/b;)V

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/ControllerOOBEActivity;->r:Landroid/support/v4/app/w;

    invoke-virtual {v0}, Landroid/support/v4/app/w;->a()Landroid/support/v4/app/at;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/ControllerOOBEActivity;->n:Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/PairingFragment;

    const v2, 0x7f09004a

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/app/at;->a(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/at;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/at;->c()I

    return-void
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/a/c;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/ControllerOOBEActivity;->q:Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/a/c;

    return-void
.end method

.method public b(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/ControllerOOBEActivity;->mButtonArea:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/ControllerOOBEActivity;->mButtonArea:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method public d_()V
    .locals 3

    const-string v0, "[ControllerOOBEActivity]switchFragmentToNoDevice"

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->b(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/ControllerOOBEActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/ControllerOOBEActivity;->r:Landroid/support/v4/app/w;

    invoke-virtual {v0}, Landroid/support/v4/app/w;->a()Landroid/support/v4/app/at;

    move-result-object v0

    const v1, 0x7f09004a

    iget-object v2, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/ControllerOOBEActivity;->n:Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/PairingFragment;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/at;->a(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/at;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/at;->c()I

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/ControllerOOBEActivity;->b(Z)V

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/ControllerOOBEActivity;->mTextViewDescription:Landroid/widget/TextView;

    const v1, 0x7f0f004d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public m()V
    .locals 3

    const-string v0, "[ControllerOOBEActivity]switchFragmentToSelectHand"

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->b(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/ControllerOOBEActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/ControllerOOBEActivity;->r:Landroid/support/v4/app/w;

    invoke-virtual {v0}, Landroid/support/v4/app/w;->a()Landroid/support/v4/app/at;

    move-result-object v0

    const v1, 0x7f09004a

    iget-object v2, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/ControllerOOBEActivity;->o:Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/SelectHandFragment;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/at;->a(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/at;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/at;->c()I

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/ControllerOOBEActivity;->mTextViewDescription:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v1, 0xf

    const/16 v2, 0x18

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    iget-object v1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/ControllerOOBEActivity;->mTextViewDescription:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/ControllerOOBEActivity;->b(Z)V

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/ControllerOOBEActivity;->mTextViewDescription:Landroid/widget/TextView;

    const v1, 0x7f0f0051

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ControllerOOBEActivity]"

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

    const-string v0, "[ControllerOOBEActivity]switchFragmentToNoDevice"

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->b(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/ControllerOOBEActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/ControllerOOBEActivity;->r:Landroid/support/v4/app/w;

    invoke-virtual {v0}, Landroid/support/v4/app/w;->a()Landroid/support/v4/app/at;

    move-result-object v0

    const v1, 0x7f09004a

    iget-object v2, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/ControllerOOBEActivity;->p:Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/NoDeviceFragment;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/at;->a(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/at;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/at;->c()I

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/ControllerOOBEActivity;->b(Z)V

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/ControllerOOBEActivity;->mTextViewDescription:Landroid/widget/TextView;

    const v1, 0x7f0f004d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ControllerOOBEActivity]"

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
    .locals 3

    const-string v0, "finishDeviceOOBE"

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/ControllerOOBEActivity;->n:Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/PairingFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/ControllerOOBEActivity;->q:Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/a/c;

    invoke-interface {v0}, Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/a/c;->c()V

    :cond_0
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/ControllerOOBEActivity;->m:Landroid/content/Context;

    const-class v2, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/FinishActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/ControllerOOBEActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    invoke-virtual {p0}, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/ControllerOOBEActivity;->finish()V

    return-void
.end method

.method public onClickSkipButton()V
    .locals 2
    .annotation build Lbutterknife/OnClick;
    .end annotation

    const-string v0, "515"

    const-string v1, "0022"

    invoke-static {v0, v1}, Lcom/samsung/android/app/vrsetupwizard/common/c/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/ControllerOOBEActivity;->o()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/samsung/android/app/vrsetupwizard/common/ui/setupwizard/b;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0005

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/ControllerOOBEActivity;->setContentView(I)V

    invoke-static {p0}, Lbutterknife/ButterKnife;->a(Landroid/app/Activity;)Lbutterknife/Unbinder;

    iput-object p0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/ControllerOOBEActivity;->m:Landroid/content/Context;

    iget-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/ControllerOOBEActivity;->m:Landroid/content/Context;

    const-string v0, "[SetupWizard] ControllerOOBEActivity onCreate()"

    invoke-static {p1, v0}, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->a(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/ControllerOOBEActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/ControllerOOBEActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "mac_address"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/ControllerOOBEActivity;->s:Z

    :cond_0
    invoke-static {p0}, Lcom/samsung/android/app/vrsetupwizard/common/c/k;->a(Landroid/app/Activity;)Lcom/samsung/android/app/vrsetupwizard/common/c/k;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/vrsetupwizard/common/c/k;->b()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/ControllerOOBEActivity;->q()V

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lcom/samsung/android/app/vrsetupwizard/common/c/k;->a(Landroid/app/Activity;)Lcom/samsung/android/app/vrsetupwizard/common/c/k;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/vrsetupwizard/common/c/k;->c()V

    :goto_0
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    const-string v0, "[ControllerOOBEActivity]onDestroy"

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->b(Ljava/lang/String;)V

    invoke-super {p0}, Lcom/samsung/android/app/vrsetupwizard/common/ui/setupwizard/b;->onDestroy()V

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/ControllerOOBEActivity;->q:Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/a/c;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/a/c;->a()V

    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    const-string v0, "[ControllerOOBEActivity]onKeyDown()"

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->b(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/vrsetupwizard/common/ui/setupwizard/b;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    const/4 p1, 0x0

    :goto_0
    array-length v0, p2

    if-ge p1, v0, :cond_1

    aget v0, p3, p1

    if-gez v0, :cond_0

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[ControllerOOBEActivity]Necessary permission "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p1, p2, p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " was refused!"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->f(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/ControllerOOBEActivity;->o()V

    return-void

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/ControllerOOBEActivity;->q()V

    return-void
.end method

.method public p()Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/a/c;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/ControllerOOBEActivity;->q:Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/a/c;

    return-object v0
.end method
