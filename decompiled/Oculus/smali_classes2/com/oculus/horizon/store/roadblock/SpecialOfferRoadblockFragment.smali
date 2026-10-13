.class public Lcom/oculus/horizon/store/roadblock/SpecialOfferRoadblockFragment;
.super Landroidx/fragment/app/DialogFragment;
.source "SpecialOfferRoadblockFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/horizon/store/roadblock/SpecialOfferRoadblockFragment$Listener;,
        Lcom/oculus/horizon/store/roadblock/SpecialOfferRoadblockFragment$Status;
    }
.end annotation


# instance fields
.field private mListener:Lcom/oculus/horizon/store/roadblock/SpecialOfferRoadblockFragment$Listener;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mStatus:Lcom/oculus/horizon/store/roadblock/SpecialOfferRoadblockFragment$Status;

.field private mStoreWideOfferModel:Lcom/oculus/horizon/store/StoreWideOfferModel;

.field private mUserProfileHelper:Lcom/oculus/horizon/profile/UserProfileHelper;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method private static final $ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/store/roadblock/SpecialOfferRoadblockFragment;)V
    .locals 1

    .prologue
    .line 33
    sget-boolean v0, Lcom/facebook/ultralight/UL;->USE_STATIC_DI:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/facebook/inject/FbInjector;->get(Landroid/content/Context;)Lcom/facebook/inject/FbInjector;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oculus/horizon/store/roadblock/SpecialOfferRoadblockFragment;->$ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/store/roadblock/SpecialOfferRoadblockFragment;)V

    :goto_0
    return-void

    :cond_0
    const-class v0, Lcom/oculus/horizon/store/roadblock/SpecialOfferRoadblockFragment;

    invoke-static {v0, p1, p0}, Lcom/facebook/inject/FbInjector;->injectMe(Ljava/lang/Class;Ljava/lang/Object;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static final $ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/store/roadblock/SpecialOfferRoadblockFragment;)V
    .locals 1

    .prologue
    .line 33
    invoke-static {p0}, Lcom/oculus/horizon/profile/UserProfileHelper;->$ul_$xXXcom_oculus_horizon_profile_UserProfileHelper$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/profile/UserProfileHelper;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/store/roadblock/SpecialOfferRoadblockFragment;->mUserProfileHelper:Lcom/oculus/horizon/profile/UserProfileHelper;

    invoke-static {p0}, Lcom/oculus/horizon/logging/OculusLogger;->$ul_$xXXcom_oculus_horizon_logging_OculusLogger$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/logging/OculusLogger;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/store/roadblock/SpecialOfferRoadblockFragment;->mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/oculus/horizon/store/roadblock/SpecialOfferRoadblockFragment;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/oculus/horizon/store/roadblock/SpecialOfferRoadblockFragment;->close()V

    return-void
.end method

.method private close()V
    .locals 1

    .prologue
    .line 140
    invoke-virtual {p0}, Lcom/oculus/horizon/store/roadblock/SpecialOfferRoadblockFragment;->dismiss()V

    .line 141
    iget-object v0, p0, Lcom/oculus/horizon/store/roadblock/SpecialOfferRoadblockFragment;->mListener:Lcom/oculus/horizon/store/roadblock/SpecialOfferRoadblockFragment$Listener;

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/oculus/horizon/store/roadblock/SpecialOfferRoadblockFragment;->mListener:Lcom/oculus/horizon/store/roadblock/SpecialOfferRoadblockFragment$Listener;

    invoke-interface {v0}, Lcom/oculus/horizon/store/roadblock/SpecialOfferRoadblockFragment$Listener;->onClose()V

    .line 144
    :cond_0
    return-void
.end method

.method public static launchMe(Landroidx/fragment/app/FragmentManager;Lcom/oculus/horizon/store/roadblock/SpecialOfferRoadblockFragment$Listener;Lcom/oculus/horizon/store/StoreWideOfferModel;Lcom/oculus/horizon/store/roadblock/SpecialOfferRoadblockFragment$Status;Lcom/oculus/horizon/logging/TrackingViews$View;)V
    .locals 2
    .param p1    # Lcom/oculus/horizon/store/roadblock/SpecialOfferRoadblockFragment$Listener;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/oculus/horizon/logging/TrackingViews$View;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 156
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    invoke-static {p3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 160
    const-string v1, "offer_model_key"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 161
    const-string v1, "offer_status_key"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 162
    const-string v1, "tracking_view_source"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 163
    new-instance v1, Lcom/oculus/horizon/store/roadblock/SpecialOfferRoadblockFragment;

    invoke-direct {v1}, Lcom/oculus/horizon/store/roadblock/SpecialOfferRoadblockFragment;-><init>()V

    .line 164
    invoke-direct {v1, p1}, Lcom/oculus/horizon/store/roadblock/SpecialOfferRoadblockFragment;->setListener(Lcom/oculus/horizon/store/roadblock/SpecialOfferRoadblockFragment$Listener;)V

    .line 165
    invoke-virtual {v1, v0}, Lcom/oculus/horizon/store/roadblock/SpecialOfferRoadblockFragment;->setArguments(Landroid/os/Bundle;)V

    .line 166
    const/4 v0, 0x0

    invoke-virtual {v1, p0, v0}, Lcom/oculus/horizon/store/roadblock/SpecialOfferRoadblockFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 167
    return-void
.end method

.method private setListener(Lcom/oculus/horizon/store/roadblock/SpecialOfferRoadblockFragment$Listener;)V
    .locals 0

    .prologue
    .line 147
    iput-object p1, p0, Lcom/oculus/horizon/store/roadblock/SpecialOfferRoadblockFragment;->mListener:Lcom/oculus/horizon/store/roadblock/SpecialOfferRoadblockFragment$Listener;

    .line 148
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 55
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 33
    invoke-virtual {p0}, Lcom/oculus/horizon/store/roadblock/SpecialOfferRoadblockFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/oculus/horizon/store/roadblock/SpecialOfferRoadblockFragment;->$ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/store/roadblock/SpecialOfferRoadblockFragment;)V

    .line 59
    const/4 v0, 0x2

    sget v1, Lcom/oculus/horizon/R$style;->Theme_OculusDialog_FullScreen:I

    invoke-virtual {p0, v0, v1}, Lcom/oculus/horizon/store/roadblock/SpecialOfferRoadblockFragment;->setStyle(II)V

    .line 61
    invoke-virtual {p0}, Lcom/oculus/horizon/store/roadblock/SpecialOfferRoadblockFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 63
    const-string v0, "offer_model_key"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/store/StoreWideOfferModel;

    iput-object v0, p0, Lcom/oculus/horizon/store/roadblock/SpecialOfferRoadblockFragment;->mStoreWideOfferModel:Lcom/oculus/horizon/store/StoreWideOfferModel;

    .line 64
    const-string v0, "offer_status_key"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/store/roadblock/SpecialOfferRoadblockFragment$Status;

    iput-object v0, p0, Lcom/oculus/horizon/store/roadblock/SpecialOfferRoadblockFragment;->mStatus:Lcom/oculus/horizon/store/roadblock/SpecialOfferRoadblockFragment$Status;

    .line 66
    iget-object v0, p0, Lcom/oculus/horizon/store/roadblock/SpecialOfferRoadblockFragment;->mStoreWideOfferModel:Lcom/oculus/horizon/store/StoreWideOfferModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oculus/horizon/store/roadblock/SpecialOfferRoadblockFragment;->mStoreWideOfferModel:Lcom/oculus/horizon/store/StoreWideOfferModel;

    invoke-virtual {v0}, Lcom/oculus/horizon/store/StoreWideOfferModel;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oculus/horizon/store/roadblock/SpecialOfferRoadblockFragment;->mStatus:Lcom/oculus/horizon/store/roadblock/SpecialOfferRoadblockFragment$Status;

    if-nez v0, :cond_2

    .line 67
    :cond_0
    invoke-direct {p0}, Lcom/oculus/horizon/store/roadblock/SpecialOfferRoadblockFragment;->close()V

    .line 78
    :cond_1
    :goto_0
    return-void

    .line 69
    :cond_2
    iget-object v0, p0, Lcom/oculus/horizon/store/roadblock/SpecialOfferRoadblockFragment;->mUserProfileHelper:Lcom/oculus/horizon/profile/UserProfileHelper;

    invoke-virtual {v0}, Lcom/oculus/horizon/profile/UserProfileHelper;->edit()Lcom/oculus/horizon/profile/UserProfileHelper$Editor;

    move-result-object v0

    iget-object v2, p0, Lcom/oculus/horizon/store/roadblock/SpecialOfferRoadblockFragment;->mStoreWideOfferModel:Lcom/oculus/horizon/store/StoreWideOfferModel;

    iget-object v2, v2, Lcom/oculus/horizon/store/StoreWideOfferModel;->id:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/oculus/horizon/profile/UserProfileHelper$Editor;->markHasSeenSpecialOfferRoadblock(Ljava/lang/String;)Lcom/oculus/horizon/profile/UserProfileHelper$Editor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/horizon/profile/UserProfileHelper$Editor;->apply()V

    .line 71
    const-string v0, "tracking_view_source"

    .line 72
    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/logging/TrackingViews$View;

    .line 73
    if-eqz v0, :cond_1

    .line 74
    iget-object v1, p0, Lcom/oculus/horizon/store/roadblock/SpecialOfferRoadblockFragment;->mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;

    iget-object v2, p0, Lcom/oculus/horizon/store/roadblock/SpecialOfferRoadblockFragment;->mStoreWideOfferModel:Lcom/oculus/horizon/store/StoreWideOfferModel;

    iget-object v2, v2, Lcom/oculus/horizon/store/StoreWideOfferModel;->id:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/oculus/horizon/logging/OculusLogger;->reportStoreWideOfferRoadblockSeen(Ljava/lang/String;Lcom/oculus/horizon/logging/TrackingViews$View;)V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 82
    sget v0, Lcom/oculus/horizon/R$layout;->special_offer_roadblock_fragment:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 87
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/DialogFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 89
    sget v0, Lcom/oculus/horizon/R$id;->toolbar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    .line 90
    sget-object v1, Lcom/oculus/horizon/store/roadblock/SpecialOfferRoadblockFragment$3;->$SwitchMap$com$oculus$horizon$store$roadblock$SpecialOfferRoadblockFragment$Status:[I

    iget-object v2, p0, Lcom/oculus/horizon/store/roadblock/SpecialOfferRoadblockFragment;->mStatus:Lcom/oculus/horizon/store/roadblock/SpecialOfferRoadblockFragment$Status;

    invoke-virtual {v2}, Lcom/oculus/horizon/store/roadblock/SpecialOfferRoadblockFragment$Status;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 98
    :goto_0
    sget v1, Lcom/oculus/horizon/R$drawable;->close_button:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/Toolbar;->setNavigationIcon(I)V

    .line 99
    new-instance v1, Lcom/oculus/horizon/store/roadblock/SpecialOfferRoadblockFragment$1;

    invoke-direct {v1, p0}, Lcom/oculus/horizon/store/roadblock/SpecialOfferRoadblockFragment$1;-><init>(Lcom/oculus/horizon/store/roadblock/SpecialOfferRoadblockFragment;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/Toolbar;->setOnMenuItemClickListener(Landroidx/appcompat/widget/Toolbar$OnMenuItemClickListener;)V

    .line 112
    sget v0, Lcom/oculus/horizon/R$id;->action_button:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 113
    new-instance v1, Lcom/oculus/horizon/store/roadblock/SpecialOfferRoadblockFragment$2;

    invoke-direct {v1, p0}, Lcom/oculus/horizon/store/roadblock/SpecialOfferRoadblockFragment$2;-><init>(Lcom/oculus/horizon/store/roadblock/SpecialOfferRoadblockFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    sget v0, Lcom/oculus/horizon/R$id;->offer_main_description_text_view:I

    .line 122
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 123
    sget-object v1, Lcom/oculus/horizon/store/roadblock/SpecialOfferRoadblockFragment$3;->$SwitchMap$com$oculus$horizon$store$roadblock$SpecialOfferRoadblockFragment$Status:[I

    iget-object v2, p0, Lcom/oculus/horizon/store/roadblock/SpecialOfferRoadblockFragment;->mStatus:Lcom/oculus/horizon/store/roadblock/SpecialOfferRoadblockFragment$Status;

    invoke-virtual {v2}, Lcom/oculus/horizon/store/roadblock/SpecialOfferRoadblockFragment$Status;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_1

    .line 132
    :goto_1
    iget-object v0, p0, Lcom/oculus/horizon/store/roadblock/SpecialOfferRoadblockFragment;->mStoreWideOfferModel:Lcom/oculus/horizon/store/StoreWideOfferModel;

    iget-object v0, v0, Lcom/oculus/horizon/store/StoreWideOfferModel;->displayTerms:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 133
    sget v0, Lcom/oculus/horizon/R$id;->offer_terms_text_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 134
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 135
    iget-object v1, p0, Lcom/oculus/horizon/store/roadblock/SpecialOfferRoadblockFragment;->mStoreWideOfferModel:Lcom/oculus/horizon/store/StoreWideOfferModel;

    iget-object v1, v1, Lcom/oculus/horizon/store/StoreWideOfferModel;->displayTerms:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 137
    :cond_0
    return-void

    .line 92
    :pswitch_0
    iget-object v1, p0, Lcom/oculus/horizon/store/roadblock/SpecialOfferRoadblockFragment;->mStoreWideOfferModel:Lcom/oculus/horizon/store/StoreWideOfferModel;

    iget-object v1, v1, Lcom/oculus/horizon/store/StoreWideOfferModel;->displayTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 95
    :pswitch_1
    iget-object v1, p0, Lcom/oculus/horizon/store/roadblock/SpecialOfferRoadblockFragment;->mStoreWideOfferModel:Lcom/oculus/horizon/store/StoreWideOfferModel;

    iget-object v1, v1, Lcom/oculus/horizon/store/StoreWideOfferModel;->displayPostTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 125
    :pswitch_2
    iget-object v1, p0, Lcom/oculus/horizon/store/roadblock/SpecialOfferRoadblockFragment;->mStoreWideOfferModel:Lcom/oculus/horizon/store/StoreWideOfferModel;

    iget-object v1, v1, Lcom/oculus/horizon/store/StoreWideOfferModel;->displayLongDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 128
    :pswitch_3
    iget-object v1, p0, Lcom/oculus/horizon/store/roadblock/SpecialOfferRoadblockFragment;->mStoreWideOfferModel:Lcom/oculus/horizon/store/StoreWideOfferModel;

    iget-object v1, v1, Lcom/oculus/horizon/store/StoreWideOfferModel;->displayPostDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 90
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 123
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
