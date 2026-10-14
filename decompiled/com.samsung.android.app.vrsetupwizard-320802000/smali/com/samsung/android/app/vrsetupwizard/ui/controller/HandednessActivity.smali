.class public Lcom/samsung/android/app/vrsetupwizard/ui/controller/HandednessActivity;
.super Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/v;


# instance fields
.field mBtnLeftHand:Landroid/widget/Button;
    .annotation build Lbutterknife/BindView;
    .end annotation
.end field

.field mBtnRightHand:Landroid/widget/Button;
    .annotation build Lbutterknife/BindView;
    .end annotation
.end field

.field private n:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/v;-><init>()V

    return-void
.end method

.method private b(Z)V
    .locals 5

    const v0, 0x7f06016a

    const v1, 0x7f060169

    const v2, 0x7f060168

    const v3, 0x7f060167

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/HandednessActivity;->mBtnLeftHand:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/samsung/android/app/vrsetupwizard/ui/controller/HandednessActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    iget-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/HandednessActivity;->mBtnLeftHand:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/samsung/android/app/vrsetupwizard/ui/controller/HandednessActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setTextColor(I)V

    iget-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/HandednessActivity;->mBtnRightHand:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/samsung/android/app/vrsetupwizard/ui/controller/HandednessActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    iget-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/HandednessActivity;->mBtnRightHand:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/samsung/android/app/vrsetupwizard/ui/controller/HandednessActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setTextColor(I)V

    iget-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/HandednessActivity;->n:Landroid/content/Context;

    const-string v0, "left"

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/HandednessActivity;->mBtnLeftHand:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/samsung/android/app/vrsetupwizard/ui/controller/HandednessActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-static {v3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/widget/Button;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    iget-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/HandednessActivity;->mBtnLeftHand:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/samsung/android/app/vrsetupwizard/ui/controller/HandednessActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/widget/Button;->setTextColor(I)V

    iget-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/HandednessActivity;->mBtnRightHand:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/samsung/android/app/vrsetupwizard/ui/controller/HandednessActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    iget-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/HandednessActivity;->mBtnRightHand:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/samsung/android/app/vrsetupwizard/ui/controller/HandednessActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setTextColor(I)V

    iget-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/HandednessActivity;->n:Landroid/content/Context;

    const-string v0, "right"

    :goto_0
    invoke-static {p1, v0}, Lcom/samsung/android/app/vrsetupwizard/common/c/o;->i(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onClickLeftHand()V
    .locals 1
    .annotation build Lbutterknife/OnClick;
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/app/vrsetupwizard/ui/controller/HandednessActivity;->b(Z)V

    return-void
.end method

.method public onClickRightHand()V
    .locals 1
    .annotation build Lbutterknife/OnClick;
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/vrsetupwizard/ui/controller/HandednessActivity;->b(Z)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/v;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0067

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/vrsetupwizard/ui/controller/HandednessActivity;->setContentView(I)V

    invoke-static {p0}, Lbutterknife/ButterKnife;->a(Landroid/app/Activity;)Lbutterknife/Unbinder;

    iput-object p0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/HandednessActivity;->n:Landroid/content/Context;

    const p1, 0x7f0f0049

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/vrsetupwizard/ui/controller/HandednessActivity;->b(I)V

    iget-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/HandednessActivity;->n:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/app/vrsetupwizard/common/c/o;->w(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "left"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-direct {p0, p1}, Lcom/samsung/android/app/vrsetupwizard/ui/controller/HandednessActivity;->b(Z)V

    return-void
.end method

.method protected onResume()V
    .locals 1

    invoke-super {p0}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/v;->onResume()V

    const-string v0, "520"

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/common/c/m;->a(Ljava/lang/String;)V

    return-void
.end method
