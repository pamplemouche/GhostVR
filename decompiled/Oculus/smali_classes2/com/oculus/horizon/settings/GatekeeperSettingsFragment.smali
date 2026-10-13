.class public Lcom/oculus/horizon/settings/GatekeeperSettingsFragment;
.super Lcom/oculus/horizon/settings/SubSettingsBaseFragment;
.source "GatekeeperSettingsFragment.java"

# interfaces
.implements Lcom/oculus/horizon/common/BackPressListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/horizon/settings/GatekeeperSettingsFragment$GatekeeperViewHolder;,
        Lcom/oculus/horizon/settings/GatekeeperSettingsFragment$GatekeepersAdapter;,
        Lcom/oculus/horizon/settings/GatekeeperSettingsFragment$GatekeeperRow;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field mConfigController:Lcom/oculus/config/ConfigController;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mConfigUpdater:Lcom/oculus/config/updater/ConfigUpdater;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mGatekeeperRegistry:Lcom/oculus/config/gatekeeper/GatekeeperRegistry;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mGatekeepersAdapter:Lcom/oculus/horizon/settings/GatekeeperSettingsFragment$GatekeepersAdapter;

.field private mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private mRefreshGatekeepersButton:Landroid/widget/TextView;

.field mResources:Landroid/content/res/Resources;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mStyleManager:Lcom/oculus/horizon/style/StyleManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method private static final $ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/settings/GatekeeperSettingsFragment;)V
    .locals 1

    .prologue
    .line 41
    sget-boolean v0, Lcom/facebook/ultralight/UL;->USE_STATIC_DI:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/facebook/inject/FbInjector;->get(Landroid/content/Context;)Lcom/facebook/inject/FbInjector;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oculus/horizon/settings/GatekeeperSettingsFragment;->$ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/settings/GatekeeperSettingsFragment;)V

    :goto_0
    return-void

    :cond_0
    const-class v0, Lcom/oculus/horizon/settings/GatekeeperSettingsFragment;

    invoke-static {v0, p1, p0}, Lcom/facebook/inject/FbInjector;->injectMe(Ljava/lang/Class;Ljava/lang/Object;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static final $ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/settings/GatekeeperSettingsFragment;)V
    .locals 1

    .prologue
    .line 41
    invoke-static {p0}, Lcom/oculus/config/ConfigController;->$ul_$xXXcom_oculus_config_ConfigController$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/config/ConfigController;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/settings/GatekeeperSettingsFragment;->mConfigController:Lcom/oculus/config/ConfigController;

    invoke-static {p0}, Lcom/oculus/config/ConfigModule;->$ul_$xXXcom_oculus_config_gatekeeper_GatekeeperRegistry$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/config/gatekeeper/GatekeeperRegistry;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/settings/GatekeeperSettingsFragment;->mGatekeeperRegistry:Lcom/oculus/config/gatekeeper/GatekeeperRegistry;

    invoke-static {p0}, Lcom/oculus/config/updater/ConfigUpdater;->$ul_$xXXcom_oculus_config_updater_ConfigUpdater$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/config/updater/ConfigUpdater;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/settings/GatekeeperSettingsFragment;->mConfigUpdater:Lcom/oculus/config/updater/ConfigUpdater;

    invoke-static {p0}, Lcom/facebook/common/android/AndroidModule;->$ul_$xXXandroid_content_res_Resources$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/settings/GatekeeperSettingsFragment;->mResources:Landroid/content/res/Resources;

    invoke-static {p0}, Lcom/oculus/horizon/style/StyleManager;->$ul_$xXXcom_oculus_horizon_style_StyleManager$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/style/StyleManager;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/settings/GatekeeperSettingsFragment;->mStyleManager:Lcom/oculus/horizon/style/StyleManager;

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const-class v0, Lcom/oculus/horizon/settings/GatekeeperSettingsFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/horizon/settings/GatekeeperSettingsFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/oculus/horizon/settings/SubSettingsBaseFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/oculus/horizon/settings/GatekeeperSettingsFragment;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/oculus/horizon/settings/GatekeeperSettingsFragment;->startUpdateGatekeepers()V

    return-void
.end method

.method static synthetic access$100(Lcom/oculus/horizon/settings/GatekeeperSettingsFragment;)Lcom/oculus/horizon/settings/GatekeeperSettingsFragment$GatekeepersAdapter;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/oculus/horizon/settings/GatekeeperSettingsFragment;->mGatekeepersAdapter:Lcom/oculus/horizon/settings/GatekeeperSettingsFragment$GatekeepersAdapter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oculus/horizon/settings/GatekeeperSettingsFragment;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/oculus/horizon/settings/GatekeeperSettingsFragment;->mRefreshGatekeepersButton:Landroid/widget/TextView;

    return-object v0
.end method

.method private startUpdateGatekeepers()V
    .locals 3

    .prologue
    .line 122
    iget-object v0, p0, Lcom/oculus/horizon/settings/GatekeeperSettingsFragment;->mRefreshGatekeepersButton:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/oculus/horizon/settings/GatekeeperSettingsFragment;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/oculus/horizon/R$string;->gatekeepers_refresh_refreshing:I

    .line 123
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 122
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    iget-object v0, p0, Lcom/oculus/horizon/settings/GatekeeperSettingsFragment;->mConfigUpdater:Lcom/oculus/config/updater/ConfigUpdater;

    .line 125
    invoke-virtual {v0}, Lcom/oculus/config/updater/ConfigUpdater;->fetchAsync()Lbolts/Task;

    move-result-object v0

    new-instance v1, Lcom/oculus/horizon/settings/GatekeeperSettingsFragment$2;

    invoke-direct {v1, p0}, Lcom/oculus/horizon/settings/GatekeeperSettingsFragment$2;-><init>(Lcom/oculus/horizon/settings/GatekeeperSettingsFragment;)V

    .line 126
    invoke-virtual {v0, v1}, Lbolts/Task;->continueWith(Lbolts/Continuation;)Lbolts/Task;

    .line 135
    return-void
.end method


# virtual methods
.method protected getTitleBarTextResourceId()I
    .locals 1

    .prologue
    .line 118
    sget v0, Lcom/oculus/horizon/R$string;->settings_gatekeepers:I

    return v0
.end method

.method protected getTrackingView()Lcom/oculus/horizon/logging/TrackingViews$View;
    .locals 1

    .prologue
    .line 93
    sget-object v0, Lcom/oculus/horizon/logging/TrackingViews$View;->SETTINGS_GATEKEEPERS:Lcom/oculus/horizon/logging/TrackingViews$View;

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .prologue
    .line 105
    invoke-super {p0, p1, p2, p3}, Lcom/oculus/horizon/settings/SubSettingsBaseFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 106
    if-nez p1, :cond_0

    .line 107
    iget-object v0, p0, Lcom/oculus/horizon/settings/GatekeeperSettingsFragment;->mGatekeepersAdapter:Lcom/oculus/horizon/settings/GatekeeperSettingsFragment$GatekeepersAdapter;

    invoke-virtual {v0}, Lcom/oculus/horizon/settings/GatekeeperSettingsFragment$GatekeepersAdapter;->update()V

    .line 109
    :cond_0
    return-void
.end method

.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 113
    const/4 v0, 0x0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 60
    invoke-super {p0, p1}, Lcom/oculus/horizon/settings/SubSettingsBaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 41
    invoke-virtual {p0}, Lcom/oculus/horizon/settings/GatekeeperSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/oculus/horizon/settings/GatekeeperSettingsFragment;->$ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/settings/GatekeeperSettingsFragment;)V

    .line 64
    new-instance v0, Lcom/oculus/horizon/settings/GatekeeperSettingsFragment$GatekeepersAdapter;

    invoke-direct {v0, p0}, Lcom/oculus/horizon/settings/GatekeeperSettingsFragment$GatekeepersAdapter;-><init>(Lcom/oculus/horizon/settings/GatekeeperSettingsFragment;)V

    iput-object v0, p0, Lcom/oculus/horizon/settings/GatekeeperSettingsFragment;->mGatekeepersAdapter:Lcom/oculus/horizon/settings/GatekeeperSettingsFragment$GatekeepersAdapter;

    .line 65
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 70
    invoke-virtual {p0}, Lcom/oculus/horizon/settings/GatekeeperSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 71
    sget v0, Lcom/oculus/horizon/R$layout;->settings_gatekeepers:I

    invoke-virtual {p1, v0, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 73
    sget v0, Lcom/oculus/horizon/R$id;->refresh_gatekeepers:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oculus/horizon/settings/GatekeeperSettingsFragment;->mRefreshGatekeepersButton:Landroid/widget/TextView;

    .line 74
    iget-object v0, p0, Lcom/oculus/horizon/settings/GatekeeperSettingsFragment;->mRefreshGatekeepersButton:Landroid/widget/TextView;

    new-instance v3, Lcom/oculus/horizon/settings/GatekeeperSettingsFragment$1;

    invoke-direct {v3, p0}, Lcom/oculus/horizon/settings/GatekeeperSettingsFragment$1;-><init>(Lcom/oculus/horizon/settings/GatekeeperSettingsFragment;)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    sget v0, Lcom/oculus/horizon/R$id;->gatekeepers_recycler_view:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/oculus/horizon/settings/GatekeeperSettingsFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 83
    iget-object v0, p0, Lcom/oculus/horizon/settings/GatekeeperSettingsFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v3, Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v4, 0x1

    invoke-direct {v3, v1, v4, v5}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 85
    iget-object v0, p0, Lcom/oculus/horizon/settings/GatekeeperSettingsFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v3, Lcom/oculus/horizon/util/ui/LineDividerDecoration;

    invoke-direct {v3, v1}, Lcom/oculus/horizon/util/ui/LineDividerDecoration;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 86
    iget-object v0, p0, Lcom/oculus/horizon/settings/GatekeeperSettingsFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/oculus/horizon/settings/GatekeeperSettingsFragment;->mGatekeepersAdapter:Lcom/oculus/horizon/settings/GatekeeperSettingsFragment$GatekeepersAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 88
    return-object v2
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 98
    invoke-super {p0}, Lcom/oculus/horizon/settings/SubSettingsBaseFragment;->onResume()V

    .line 100
    invoke-virtual {p0}, Lcom/oculus/horizon/settings/GatekeeperSettingsFragment;->updateTitleBarText()V

    .line 101
    return-void
.end method
