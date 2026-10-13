.class public Lcom/oculus/horizon/roadblock/ui/UserRoadblockProfileIntroFragment;
.super Lcom/oculus/horizon/roadblock/ui/BaseRoadblockFragment;
.source "UserRoadblockProfileIntroFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/oculus/horizon/roadblock/ui/BaseRoadblockFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected getTrackingView()Lcom/oculus/horizon/logging/TrackingViews$View;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/oculus/horizon/logging/TrackingViews$View;->ROADBLOCK_PROFILE_INTRO:Lcom/oculus/horizon/logging/TrackingViews$View;

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 20
    sget v0, Lcom/oculus/horizon/R$layout;->user_roadblock_social_intro_fragment:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 44
    invoke-super {p0}, Lcom/oculus/horizon/roadblock/ui/BaseRoadblockFragment;->onResume()V

    .line 45
    invoke-virtual {p0}, Lcom/oculus/horizon/roadblock/ui/UserRoadblockProfileIntroFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/oculus/horizon/R$string;->roadblock_user_profiles_intro_title:I

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->setTitle(I)V

    .line 46
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p2    # Landroid/os/Bundle;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 25
    invoke-super {p0, p1, p2}, Lcom/oculus/horizon/roadblock/ui/BaseRoadblockFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 27
    sget v0, Lcom/oculus/horizon/R$id;->continue_button:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 28
    new-instance v1, Lcom/oculus/horizon/roadblock/ui/UserRoadblockProfileIntroFragment$1;

    invoke-direct {v1, p0}, Lcom/oculus/horizon/roadblock/ui/UserRoadblockProfileIntroFragment$1;-><init>(Lcom/oculus/horizon/roadblock/ui/UserRoadblockProfileIntroFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 35
    return-void
.end method

.method public shouldDisableBackButton()Z
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x1

    return v0
.end method
