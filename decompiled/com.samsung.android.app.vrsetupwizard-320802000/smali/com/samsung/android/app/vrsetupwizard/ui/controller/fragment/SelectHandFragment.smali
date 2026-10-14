.class public Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/SelectHandFragment;
.super Landroid/support/v4/app/Fragment;


# instance fields
.field private a:Landroid/view/View;

.field private b:Landroid/content/Context;

.field private c:Z

.field private d:Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/a/c;

.field mLinearLayoutOOBE:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/BindView;
    .end annotation
.end field

.field mLinearLayoutPairNewBottomMargin:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/SelectHandFragment;->c:Z

    return-void
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "[SelectHandFragment]onCreateView()"

    invoke-static {p3}, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->b(Ljava/lang/String;)V

    const/4 p3, 0x0

    const v0, 0x7f0c0008

    invoke-virtual {p1, v0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/SelectHandFragment;->a:Landroid/view/View;

    invoke-virtual {p0}, Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/SelectHandFragment;->l()Landroid/support/v4/app/p;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/p;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/SelectHandFragment;->b:Landroid/content/Context;

    iget-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/SelectHandFragment;->a:Landroid/view/View;

    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->a(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    iget-boolean p1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/SelectHandFragment;->c:Z

    const/16 p2, 0x8

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/SelectHandFragment;->mLinearLayoutOOBE:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/SelectHandFragment;->mLinearLayoutPairNewBottomMargin:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/SelectHandFragment;->mLinearLayoutOOBE:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/SelectHandFragment;->mLinearLayoutPairNewBottomMargin:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_0
    iget-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/SelectHandFragment;->a:Landroid/view/View;

    return-object p1
.end method

.method public a(Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/a/c;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/SelectHandFragment;->d:Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/a/c;

    return-void
.end method

.method public a(Ljava/lang/Boolean;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/SelectHandFragment;->c:Z

    return-void
.end method

.method public onClickLeftHanded()V
    .locals 2
    .annotation build Lbutterknife/OnClick;
    .end annotation

    const-string v0, "[SelectHandFragment]left handed"

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/SelectHandFragment;->b:Landroid/content/Context;

    const-string v1, "left"

    invoke-static {v0, v1}, Lcom/samsung/android/app/vrsetupwizard/common/c/o;->i(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/SelectHandFragment;->d:Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/a/c;

    invoke-interface {v0}, Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/a/c;->g()V

    return-void
.end method

.method public onClickRightHanded()V
    .locals 2
    .annotation build Lbutterknife/OnClick;
    .end annotation

    const-string v0, "[SelectHandFragment]right handed"

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/SelectHandFragment;->b:Landroid/content/Context;

    const-string v1, "right"

    invoke-static {v0, v1}, Lcom/samsung/android/app/vrsetupwizard/common/c/o;->i(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/SelectHandFragment;->d:Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/a/c;

    invoke-interface {v0}, Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/a/c;->g()V

    return-void
.end method

.method public s()V
    .locals 1

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->s()V

    const-string v0, "519"

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/common/c/m;->a(Ljava/lang/String;)V

    return-void
.end method
