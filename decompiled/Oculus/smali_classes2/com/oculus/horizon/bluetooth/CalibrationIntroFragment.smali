.class public Lcom/oculus/horizon/bluetooth/CalibrationIntroFragment;
.super Lcom/oculus/horizon/bluetooth/MalibuBaseFragment;
.source "CalibrationIntroFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/horizon/bluetooth/CalibrationIntroFragment$Listener;
    }
.end annotation


# instance fields
.field private mActionButton:Landroid/widget/Button;

.field private mConnecting:Z

.field private mProgressPanel:Landroid/view/View;

.field mVRResources:Lcom/oculus/horizon/samsung/VRResources;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method private static final $ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/bluetooth/CalibrationIntroFragment;)V
    .locals 1

    .prologue
    .line 20
    sget-boolean v0, Lcom/facebook/ultralight/UL;->USE_STATIC_DI:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/facebook/inject/FbInjector;->get(Landroid/content/Context;)Lcom/facebook/inject/FbInjector;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oculus/horizon/bluetooth/CalibrationIntroFragment;->$ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/bluetooth/CalibrationIntroFragment;)V

    :goto_0
    return-void

    :cond_0
    const-class v0, Lcom/oculus/horizon/bluetooth/CalibrationIntroFragment;

    invoke-static {v0, p1, p0}, Lcom/facebook/inject/FbInjector;->injectMe(Ljava/lang/Class;Ljava/lang/Object;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static final $ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/bluetooth/CalibrationIntroFragment;)V
    .locals 1

    .prologue
    .line 20
    invoke-static {p0}, Lcom/oculus/horizon/samsung/VRResources;->$ul_$xXXcom_oculus_horizon_samsung_VRResources$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/samsung/VRResources;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/bluetooth/CalibrationIntroFragment;->mVRResources:Lcom/oculus/horizon/samsung/VRResources;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/oculus/horizon/bluetooth/MalibuBaseFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/oculus/horizon/bluetooth/CalibrationIntroFragment;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/oculus/horizon/bluetooth/CalibrationIntroFragment;->onComplete()V

    return-void
.end method

.method private getListener()Lcom/oculus/horizon/bluetooth/CalibrationIntroFragment$Listener;
    .locals 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/oculus/horizon/bluetooth/CalibrationIntroFragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 90
    instance-of v1, v0, Lcom/oculus/horizon/bluetooth/CalibrationIntroFragment$Listener;

    if-eqz v1, :cond_0

    .line 91
    check-cast v0, Lcom/oculus/horizon/bluetooth/CalibrationIntroFragment$Listener;

    .line 93
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static newInstance()Landroidx/fragment/app/Fragment;
    .locals 1

    .prologue
    .line 23
    new-instance v0, Lcom/oculus/horizon/bluetooth/CalibrationIntroFragment;

    invoke-direct {v0}, Lcom/oculus/horizon/bluetooth/CalibrationIntroFragment;-><init>()V

    return-object v0
.end method

.method private onComplete()V
    .locals 1

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/oculus/horizon/bluetooth/CalibrationIntroFragment;->getListener()Lcom/oculus/horizon/bluetooth/CalibrationIntroFragment$Listener;

    move-result-object v0

    .line 98
    if-eqz v0, :cond_0

    .line 99
    invoke-interface {v0}, Lcom/oculus/horizon/bluetooth/CalibrationIntroFragment$Listener;->onIntroComplete()V

    .line 101
    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 20
    invoke-super {p0}, Lcom/oculus/horizon/bluetooth/MalibuBaseFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method protected getTrackingView()Lcom/oculus/horizon/logging/TrackingViews$View;
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x0

    return-object v0
.end method

.method public isConnecting()Z
    .locals 1

    .prologue
    .line 104
    iget-boolean v0, p0, Lcom/oculus/horizon/bluetooth/CalibrationIntroFragment;->mConnecting:Z

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 39
    invoke-super {p0, p1}, Lcom/oculus/horizon/bluetooth/MalibuBaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 20
    invoke-virtual {p0}, Lcom/oculus/horizon/bluetooth/CalibrationIntroFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/oculus/horizon/bluetooth/CalibrationIntroFragment;->$ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/bluetooth/CalibrationIntroFragment;)V

    .line 41
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p2    # Landroid/view/ViewGroup;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 46
    invoke-virtual {p0, p1}, Lcom/oculus/horizon/bluetooth/CalibrationIntroFragment;->getThemedInflater(Landroid/view/LayoutInflater;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/oculus/horizon/R$layout;->bluetooth_malibu_fragment:I

    const/4 v2, 0x0

    .line 47
    invoke-virtual {v0, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 77
    iput-object v0, p0, Lcom/oculus/horizon/bluetooth/CalibrationIntroFragment;->mProgressPanel:Landroid/view/View;

    .line 78
    iput-object v0, p0, Lcom/oculus/horizon/bluetooth/CalibrationIntroFragment;->mActionButton:Landroid/widget/Button;

    .line 79
    invoke-super {p0}, Lcom/oculus/horizon/bluetooth/MalibuBaseFragment;->onDestroyView()V

    .line 80
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3
    .param p2    # Landroid/os/Bundle;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 52
    invoke-super {p0, p1, p2}, Lcom/oculus/horizon/bluetooth/MalibuBaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 53
    sget v0, Lcom/oculus/horizon/R$id;->image:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/oculus/horizon/bluetooth/CalibrationIntroFragment;->mVRResources:Lcom/oculus/horizon/samsung/VRResources;

    sget v2, Lcom/oculus/horizon/R$drawable;->bluetooth_malibu_calibration:I

    .line 54
    invoke-virtual {v1, v2}, Lcom/oculus/horizon/samsung/VRResources;->getIdentifier(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 55
    sget v0, Lcom/oculus/horizon/R$id;->title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v1, Lcom/oculus/horizon/R$string;->bluetooth_calibration_intro_title:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 56
    sget v0, Lcom/oculus/horizon/R$id;->description:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v1, Lcom/oculus/horizon/R$string;->bluetooth_calibration_intro_description:I

    .line 57
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 59
    sget v0, Lcom/oculus/horizon/R$id;->progress_panel:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/bluetooth/CalibrationIntroFragment;->mProgressPanel:Landroid/view/View;

    .line 60
    sget v0, Lcom/oculus/horizon/R$id;->progress_text:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v1, Lcom/oculus/horizon/R$string;->bluetooth_connecting:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 62
    sget v0, Lcom/oculus/horizon/R$id;->action:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/oculus/horizon/bluetooth/CalibrationIntroFragment;->mActionButton:Landroid/widget/Button;

    .line 63
    iget-object v0, p0, Lcom/oculus/horizon/bluetooth/CalibrationIntroFragment;->mActionButton:Landroid/widget/Button;

    sget v1, Lcom/oculus/horizon/R$string;->common_next:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 64
    iget-object v0, p0, Lcom/oculus/horizon/bluetooth/CalibrationIntroFragment;->mActionButton:Landroid/widget/Button;

    new-instance v1, Lcom/oculus/horizon/bluetooth/CalibrationIntroFragment$1;

    invoke-direct {v1, p0}, Lcom/oculus/horizon/bluetooth/CalibrationIntroFragment$1;-><init>(Lcom/oculus/horizon/bluetooth/CalibrationIntroFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/bluetooth/CalibrationIntroFragment;->setConnecting(Z)V

    .line 73
    return-void
.end method

.method public setConnecting(Z)V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 108
    if-eqz p1, :cond_0

    .line 109
    iget-object v0, p0, Lcom/oculus/horizon/bluetooth/CalibrationIntroFragment;->mProgressPanel:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 110
    iget-object v0, p0, Lcom/oculus/horizon/bluetooth/CalibrationIntroFragment;->mActionButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 115
    :goto_0
    iput-boolean p1, p0, Lcom/oculus/horizon/bluetooth/CalibrationIntroFragment;->mConnecting:Z

    .line 116
    return-void

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/bluetooth/CalibrationIntroFragment;->mProgressPanel:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 113
    iget-object v0, p0, Lcom/oculus/horizon/bluetooth/CalibrationIntroFragment;->mActionButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method
