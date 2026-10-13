.class public Lcom/oculus/horizon/bluetooth/HandednessFragment;
.super Lcom/oculus/horizon/bluetooth/MalibuBaseFragment;
.source "HandednessFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/horizon/bluetooth/HandednessFragment$Listener;
    }
.end annotation


# instance fields
.field mGearVRControllerHelper:Lcom/oculus/horizon/samsung/GearVRControllerHelper;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mHandednessRadioGroup:Landroid/widget/RadioGroup;

.field private mVideoView:Landroid/widget/VideoView;


# direct methods
.method private static final $ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/bluetooth/HandednessFragment;)V
    .locals 1

    .prologue
    .line 25
    sget-boolean v0, Lcom/facebook/ultralight/UL;->USE_STATIC_DI:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/facebook/inject/FbInjector;->get(Landroid/content/Context;)Lcom/facebook/inject/FbInjector;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oculus/horizon/bluetooth/HandednessFragment;->$ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/bluetooth/HandednessFragment;)V

    :goto_0
    return-void

    :cond_0
    const-class v0, Lcom/oculus/horizon/bluetooth/HandednessFragment;

    invoke-static {v0, p1, p0}, Lcom/facebook/inject/FbInjector;->injectMe(Ljava/lang/Class;Ljava/lang/Object;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static final $ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/bluetooth/HandednessFragment;)V
    .locals 1

    .prologue
    .line 25
    invoke-static {p0}, Lcom/oculus/horizon/samsung/GearVRControllerHelper;->$ul_$xXXcom_oculus_horizon_samsung_GearVRControllerHelper$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/samsung/GearVRControllerHelper;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/bluetooth/HandednessFragment;->mGearVRControllerHelper:Lcom/oculus/horizon/samsung/GearVRControllerHelper;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/oculus/horizon/bluetooth/MalibuBaseFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/oculus/horizon/bluetooth/HandednessFragment;)Landroid/widget/RadioGroup;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/oculus/horizon/bluetooth/HandednessFragment;->mHandednessRadioGroup:Landroid/widget/RadioGroup;

    return-object v0
.end method

.method static synthetic access$100(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    invoke-static {p0}, Lcom/oculus/horizon/bluetooth/HandednessFragment;->getHandednessById(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/oculus/horizon/bluetooth/HandednessFragment;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/oculus/horizon/bluetooth/HandednessFragment;->onContinueClick()V

    return-void
.end method

.method private static getHandednessById(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    sget v0, Lcom/oculus/horizon/R$id;->option_right:I

    if-ne p0, v0, :cond_0

    const-string v0, "right"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "left"

    goto :goto_0
.end method

.method private static getIdByHandedness(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 118
    const-string v0, "right"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/oculus/horizon/R$id;->option_right:I

    :goto_0
    return v0

    :cond_0
    sget v0, Lcom/oculus/horizon/R$id;->option_left:I

    goto :goto_0
.end method

.method private getListener()Lcom/oculus/horizon/bluetooth/HandednessFragment$Listener;
    .locals 2

    .prologue
    .line 99
    invoke-virtual {p0}, Lcom/oculus/horizon/bluetooth/HandednessFragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 100
    instance-of v1, v0, Lcom/oculus/horizon/bluetooth/HandednessFragment$Listener;

    if-eqz v1, :cond_0

    .line 101
    check-cast v0, Lcom/oculus/horizon/bluetooth/HandednessFragment$Listener;

    .line 103
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static newInstance(Z)Landroidx/fragment/app/Fragment;
    .locals 2

    .prologue
    .line 130
    new-instance v0, Lcom/oculus/horizon/bluetooth/HandednessFragment;

    invoke-direct {v0}, Lcom/oculus/horizon/bluetooth/HandednessFragment;-><init>()V

    .line 131
    invoke-static {p0}, Lcom/oculus/horizon/bluetooth/HandednessFragment;->createArguments(Z)Landroid/os/Bundle;

    move-result-object v1

    .line 132
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 133
    return-object v0
.end method

.method private onContinueClick()V
    .locals 1

    .prologue
    .line 107
    invoke-direct {p0}, Lcom/oculus/horizon/bluetooth/HandednessFragment;->getListener()Lcom/oculus/horizon/bluetooth/HandednessFragment$Listener;

    move-result-object v0

    .line 108
    if-eqz v0, :cond_0

    .line 109
    invoke-interface {v0}, Lcom/oculus/horizon/bluetooth/HandednessFragment$Listener;->onContinueClick()V

    .line 111
    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 25
    invoke-super {p0}, Lcom/oculus/horizon/bluetooth/MalibuBaseFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method protected getTrackingView()Lcom/oculus/horizon/logging/TrackingViews$View;
    .locals 1

    .prologue
    .line 95
    sget-object v0, Lcom/oculus/horizon/logging/TrackingViews$View;->BLUETOOTH_HANDEDNESS:Lcom/oculus/horizon/logging/TrackingViews$View;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 34
    invoke-super {p0, p1}, Lcom/oculus/horizon/bluetooth/MalibuBaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 25
    invoke-virtual {p0}, Lcom/oculus/horizon/bluetooth/HandednessFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/oculus/horizon/bluetooth/HandednessFragment;->$ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/bluetooth/HandednessFragment;)V

    .line 36
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
    .line 41
    invoke-virtual {p0, p1}, Lcom/oculus/horizon/bluetooth/HandednessFragment;->getThemedInflater(Landroid/view/LayoutInflater;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/oculus/horizon/R$layout;->bluetooth_handedness_fragment:I

    const/4 v2, 0x0

    .line 42
    invoke-virtual {v0, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 88
    iput-object v0, p0, Lcom/oculus/horizon/bluetooth/HandednessFragment;->mVideoView:Landroid/widget/VideoView;

    .line 89
    iput-object v0, p0, Lcom/oculus/horizon/bluetooth/HandednessFragment;->mHandednessRadioGroup:Landroid/widget/RadioGroup;

    .line 90
    invoke-super {p0}, Lcom/oculus/horizon/bluetooth/MalibuBaseFragment;->onDestroyView()V

    .line 91
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 82
    invoke-super {p0}, Lcom/oculus/horizon/bluetooth/MalibuBaseFragment;->onResume()V

    .line 83
    invoke-virtual {p0}, Lcom/oculus/horizon/bluetooth/HandednessFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/oculus/horizon/R$string;->bluetooth_malibu_handedness_title:I

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->setTitle(I)V

    .line 84
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 5
    .param p2    # Landroid/os/Bundle;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 47
    invoke-super {p0, p1, p2}, Lcom/oculus/horizon/bluetooth/MalibuBaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 48
    sget v0, Lcom/oculus/horizon/R$id;->video:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/VideoView;

    iput-object v0, p0, Lcom/oculus/horizon/bluetooth/HandednessFragment;->mVideoView:Landroid/widget/VideoView;

    .line 49
    iget-object v0, p0, Lcom/oculus/horizon/bluetooth/HandednessFragment;->mVideoView:Landroid/widget/VideoView;

    new-instance v1, Lcom/oculus/horizon/bluetooth/HandednessFragment$1;

    invoke-direct {v1, p0}, Lcom/oculus/horizon/bluetooth/HandednessFragment$1;-><init>(Lcom/oculus/horizon/bluetooth/HandednessFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 56
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "android.resource://%s/%d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 60
    invoke-virtual {p0}, Lcom/oculus/horizon/bluetooth/HandednessFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget v4, Lcom/oculus/horizon/R$raw;->bluetooth_recenter:I

    .line 61
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 57
    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 62
    iget-object v1, p0, Lcom/oculus/horizon/bluetooth/HandednessFragment;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v1, v0}, Landroid/widget/VideoView;->setVideoPath(Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Lcom/oculus/horizon/bluetooth/HandednessFragment;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    .line 65
    sget v0, Lcom/oculus/horizon/R$id;->handedness_options:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/oculus/horizon/bluetooth/HandednessFragment;->mHandednessRadioGroup:Landroid/widget/RadioGroup;

    .line 66
    sget v0, Lcom/oculus/horizon/R$id;->action:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 67
    new-instance v1, Lcom/oculus/horizon/bluetooth/HandednessFragment$2;

    invoke-direct {v1, p0}, Lcom/oculus/horizon/bluetooth/HandednessFragment$2;-><init>(Lcom/oculus/horizon/bluetooth/HandednessFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    iget-object v0, p0, Lcom/oculus/horizon/bluetooth/HandednessFragment;->mHandednessRadioGroup:Landroid/widget/RadioGroup;

    iget-object v1, p0, Lcom/oculus/horizon/bluetooth/HandednessFragment;->mGearVRControllerHelper:Lcom/oculus/horizon/samsung/GearVRControllerHelper;

    invoke-virtual {v1}, Lcom/oculus/horizon/samsung/GearVRControllerHelper;->getHandedness()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/oculus/horizon/bluetooth/HandednessFragment;->getIdByHandedness(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    .line 78
    return-void
.end method
