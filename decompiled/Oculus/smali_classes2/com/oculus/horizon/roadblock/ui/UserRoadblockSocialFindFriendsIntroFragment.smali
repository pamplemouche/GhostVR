.class public Lcom/oculus/horizon/roadblock/ui/UserRoadblockSocialFindFriendsIntroFragment;
.super Lcom/oculus/horizon/roadblock/ui/BaseRoadblockFragment;
.source "UserRoadblockSocialFindFriendsIntroFragment.java"


# instance fields
.field private mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method private static final $ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/roadblock/ui/UserRoadblockSocialFindFriendsIntroFragment;)V
    .locals 1

    .prologue
    .line 27
    sget-boolean v0, Lcom/facebook/ultralight/UL;->USE_STATIC_DI:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/facebook/inject/FbInjector;->get(Landroid/content/Context;)Lcom/facebook/inject/FbInjector;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oculus/horizon/roadblock/ui/UserRoadblockSocialFindFriendsIntroFragment;->$ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/roadblock/ui/UserRoadblockSocialFindFriendsIntroFragment;)V

    :goto_0
    return-void

    :cond_0
    const-class v0, Lcom/oculus/horizon/roadblock/ui/UserRoadblockSocialFindFriendsIntroFragment;

    invoke-static {v0, p1, p0}, Lcom/facebook/inject/FbInjector;->injectMe(Ljava/lang/Class;Ljava/lang/Object;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static final $ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/roadblock/ui/UserRoadblockSocialFindFriendsIntroFragment;)V
    .locals 1

    .prologue
    .line 27
    invoke-static {p0}, Lcom/oculus/horizon/logging/OculusLogger;->$ul_$xXXcom_oculus_horizon_logging_OculusLogger$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/logging/OculusLogger;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/roadblock/ui/UserRoadblockSocialFindFriendsIntroFragment;->mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/oculus/horizon/roadblock/ui/BaseRoadblockFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/oculus/horizon/roadblock/ui/UserRoadblockSocialFindFriendsIntroFragment;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/oculus/horizon/roadblock/ui/UserRoadblockSocialFindFriendsIntroFragment;->openFBConnectFragment()V

    return-void
.end method

.method private openFBConnectFragment()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 92
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 93
    const-string v1, "extra_fragment_arg_back_finishes"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 94
    sget-object v1, Lcom/oculus/horizon/fbconnectui/FBConnectCommonArgs;->ARG_IS_IN_NUX_FLOW:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 96
    invoke-virtual {p0}, Lcom/oculus/horizon/roadblock/ui/UserRoadblockSocialFindFriendsIntroFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/oculus/horizon/fbconnectui/FBConnectFragment;

    invoke-static {v1, v2, v0}, Lcom/oculus/horizon/main/MainActivity;->newFragmentIntent(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    .line 97
    const-string v1, "extra_skip_roadblocks"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 98
    invoke-virtual {p0}, Lcom/oculus/horizon/roadblock/ui/UserRoadblockSocialFindFriendsIntroFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/fragment/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 99
    return-void
.end method


# virtual methods
.method protected getTrackingView()Lcom/oculus/horizon/logging/TrackingViews$View;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/oculus/horizon/logging/TrackingViews$View;->ROADBLOCK_FIND_FRIENDS:Lcom/oculus/horizon/logging/TrackingViews$View;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 33
    invoke-super {p0, p1}, Lcom/oculus/horizon/roadblock/ui/BaseRoadblockFragment;->onCreate(Landroid/os/Bundle;)V

    .line 27
    invoke-virtual {p0}, Lcom/oculus/horizon/roadblock/ui/UserRoadblockSocialFindFriendsIntroFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/oculus/horizon/roadblock/ui/UserRoadblockSocialFindFriendsIntroFragment;->$ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/roadblock/ui/UserRoadblockSocialFindFriendsIntroFragment;)V

    .line 35
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    .prologue
    .line 72
    sget v0, Lcom/oculus/horizon/R$menu;->common_skip:I

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 73
    invoke-super {p0, p1, p2}, Lcom/oculus/horizon/roadblock/ui/BaseRoadblockFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 74
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 40
    sget v0, Lcom/oculus/horizon/R$layout;->user_roadblock_social_find_friends_intro_fragment:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    .line 78
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v1, Lcom/oculus/horizon/R$id;->action_skip:I

    if-ne v0, v1, :cond_0

    .line 79
    iget-object v0, p0, Lcom/oculus/horizon/roadblock/ui/UserRoadblockSocialFindFriendsIntroFragment;->mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;

    iget-object v1, p0, Lcom/oculus/horizon/roadblock/ui/UserRoadblockSocialFindFriendsIntroFragment;->mRoadblock:Lcom/oculus/horizon/roadblock/model/Roadblock;

    iget-object v1, v1, Lcom/oculus/horizon/roadblock/model/Roadblock;->roadblockType:Lcom/oculus/horizon/roadblock/model/Roadblock$Type;

    invoke-virtual {v1}, Lcom/oculus/horizon/roadblock/model/Roadblock$Type;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/logging/OculusLogger;->reportRoadblockSkippedEvent(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p0}, Lcom/oculus/horizon/roadblock/ui/UserRoadblockSocialFindFriendsIntroFragment;->onRoadblockCompleted()V

    .line 81
    const/4 v0, 0x1

    .line 83
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/oculus/horizon/roadblock/ui/BaseRoadblockFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 66
    invoke-super {p0}, Lcom/oculus/horizon/roadblock/ui/BaseRoadblockFragment;->onResume()V

    .line 67
    invoke-virtual {p0}, Lcom/oculus/horizon/roadblock/ui/UserRoadblockSocialFindFriendsIntroFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/oculus/horizon/R$string;->roadblock_find_friends_title:I

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->setTitle(I)V

    .line 68
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 46
    invoke-super {p0, p1, p2}, Lcom/oculus/horizon/roadblock/ui/BaseRoadblockFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 47
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/roadblock/ui/UserRoadblockSocialFindFriendsIntroFragment;->setHasOptionsMenu(Z)V

    .line 49
    sget v0, Lcom/oculus/horizon/R$id;->continue_button:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 50
    new-instance v1, Lcom/oculus/horizon/roadblock/ui/UserRoadblockSocialFindFriendsIntroFragment$1;

    invoke-direct {v1, p0}, Lcom/oculus/horizon/roadblock/ui/UserRoadblockSocialFindFriendsIntroFragment$1;-><init>(Lcom/oculus/horizon/roadblock/ui/UserRoadblockSocialFindFriendsIntroFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    return-void
.end method

.method public shouldDisableBackButton()Z
    .locals 1

    .prologue
    .line 88
    const/4 v0, 0x0

    return v0
.end method
