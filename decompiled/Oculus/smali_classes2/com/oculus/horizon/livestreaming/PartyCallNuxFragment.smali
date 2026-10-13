.class public Lcom/oculus/horizon/livestreaming/PartyCallNuxFragment;
.super Lcom/oculus/horizon/base/OculusBaseFragment;
.source "PartyCallNuxFragment.java"


# instance fields
.field private mContext:Landroid/content/Context;
    .annotation build Lcom/facebook/inject/ForAppContext;
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mContinueButton:Landroid/widget/Button;

.field private mContinueIntent:Landroid/content/Intent;

.field private mPartyCallManager:Lcom/oculus/horizon/livestreaming/PartyCallManagerImpl;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mPrivacyState:Lcom/oculus/horizon/social/model/PrivacyState;

.field private mPrivacyText:Landroid/widget/TextView;

.field private mSettingsIntent:Landroid/content/Intent;

.field private mSettingsText:Landroid/widget/TextView;


# direct methods
.method private static final $ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/livestreaming/PartyCallNuxFragment;)V
    .locals 1

    .prologue
    .line 24
    sget-boolean v0, Lcom/facebook/ultralight/UL;->USE_STATIC_DI:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/facebook/inject/FbInjector;->get(Landroid/content/Context;)Lcom/facebook/inject/FbInjector;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oculus/horizon/livestreaming/PartyCallNuxFragment;->$ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/livestreaming/PartyCallNuxFragment;)V

    :goto_0
    return-void

    :cond_0
    const-class v0, Lcom/oculus/horizon/livestreaming/PartyCallNuxFragment;

    invoke-static {v0, p1, p0}, Lcom/facebook/inject/FbInjector;->injectMe(Ljava/lang/Class;Ljava/lang/Object;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static final $ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/livestreaming/PartyCallNuxFragment;)V
    .locals 1

    .prologue
    .line 24
    invoke-static {p0}, Lcom/facebook/inject/BundledAndroidModule;->$ul_$xXXandroid_content_Context$xXXcom_facebook_inject_ForAppContext$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/livestreaming/PartyCallNuxFragment;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/oculus/horizon/livestreaming/PartyCallManagerImpl;->$ul_$xXXcom_oculus_horizon_livestreaming_PartyCallManagerImpl$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/livestreaming/PartyCallManagerImpl;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/livestreaming/PartyCallNuxFragment;->mPartyCallManager:Lcom/oculus/horizon/livestreaming/PartyCallManagerImpl;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/oculus/horizon/base/OculusBaseFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/oculus/horizon/livestreaming/PartyCallNuxFragment;)Lcom/oculus/horizon/livestreaming/PartyCallManagerImpl;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/PartyCallNuxFragment;->mPartyCallManager:Lcom/oculus/horizon/livestreaming/PartyCallManagerImpl;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oculus/horizon/livestreaming/PartyCallNuxFragment;)Landroid/content/Intent;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/PartyCallNuxFragment;->mContinueIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oculus/horizon/livestreaming/PartyCallNuxFragment;)Landroid/content/Intent;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/PartyCallNuxFragment;->mSettingsIntent:Landroid/content/Intent;

    return-object v0
.end method

.method private getPrivacyStateString(Lcom/oculus/horizon/social/model/PrivacyState;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 102
    sget-object v0, Lcom/oculus/horizon/livestreaming/PartyCallNuxFragment$3;->$SwitchMap$com$oculus$horizon$social$model$PrivacyState:[I

    invoke-virtual {p1}, Lcom/oculus/horizon/social/model/PrivacyState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 111
    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/PartyCallNuxFragment;->mContext:Landroid/content/Context;

    sget v1, Lcom/oculus/horizon/R$string;->settings_privacy_common_just_me_title:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 104
    :pswitch_0
    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/PartyCallNuxFragment;->mContext:Landroid/content/Context;

    sget v1, Lcom/oculus/horizon/R$string;->settings_privacy_common_anyone_title:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 106
    :pswitch_1
    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/PartyCallNuxFragment;->mContext:Landroid/content/Context;

    sget v1, Lcom/oculus/horizon/R$string;->settings_privacy_common_friends_title:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 108
    :pswitch_2
    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/PartyCallNuxFragment;->mContext:Landroid/content/Context;

    sget v1, Lcom/oculus/horizon/R$string;->settings_privacy_common_specific_friends_title:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 102
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method protected getTrackingView()Lcom/oculus/horizon/logging/TrackingViews$View;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/oculus/horizon/logging/TrackingViews$View;->PARTY_CALL_NUX:Lcom/oculus/horizon/logging/TrackingViews$View;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 38
    invoke-super {p0, p1}, Lcom/oculus/horizon/base/OculusBaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 24
    invoke-virtual {p0}, Lcom/oculus/horizon/livestreaming/PartyCallNuxFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/oculus/horizon/livestreaming/PartyCallNuxFragment;->$ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/livestreaming/PartyCallNuxFragment;)V

    .line 42
    invoke-virtual {p0}, Lcom/oculus/horizon/livestreaming/PartyCallNuxFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 43
    const-string v0, "privacy"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/social/model/PrivacyState;

    iput-object v0, p0, Lcom/oculus/horizon/livestreaming/PartyCallNuxFragment;->mPrivacyState:Lcom/oculus/horizon/social/model/PrivacyState;

    .line 44
    const-string v0, "nux_continue_intent"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, p0, Lcom/oculus/horizon/livestreaming/PartyCallNuxFragment;->mContinueIntent:Landroid/content/Intent;

    .line 45
    const-string v0, "nux_settings_intent"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, p0, Lcom/oculus/horizon/livestreaming/PartyCallNuxFragment;->mSettingsIntent:Landroid/content/Intent;

    .line 46
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 51
    sget v0, Lcom/oculus/horizon/R$layout;->party_call_nux_fragment:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 117
    iput-object v0, p0, Lcom/oculus/horizon/livestreaming/PartyCallNuxFragment;->mContinueButton:Landroid/widget/Button;

    .line 118
    iput-object v0, p0, Lcom/oculus/horizon/livestreaming/PartyCallNuxFragment;->mSettingsText:Landroid/widget/TextView;

    .line 119
    iput-object v0, p0, Lcom/oculus/horizon/livestreaming/PartyCallNuxFragment;->mPrivacyText:Landroid/widget/TextView;

    .line 121
    invoke-super {p0}, Lcom/oculus/horizon/base/OculusBaseFragment;->onDestroyView()V

    .line 122
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3
    .param p2    # Landroid/os/Bundle;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 61
    invoke-super {p0, p1, p2}, Lcom/oculus/horizon/base/OculusBaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 63
    sget v0, Lcom/oculus/horizon/R$id;->text_privacy:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oculus/horizon/livestreaming/PartyCallNuxFragment;->mPrivacyText:Landroid/widget/TextView;

    .line 64
    sget v0, Lcom/oculus/horizon/R$id;->nux_go_to_settings:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oculus/horizon/livestreaming/PartyCallNuxFragment;->mSettingsText:Landroid/widget/TextView;

    .line 66
    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/PartyCallNuxFragment;->mPrivacyState:Lcom/oculus/horizon/social/model/PrivacyState;

    sget-object v1, Lcom/oculus/horizon/social/model/PrivacyState;->SELF:Lcom/oculus/horizon/social/model/PrivacyState;

    if-ne v0, v1, :cond_0

    .line 67
    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/PartyCallNuxFragment;->mPrivacyText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/oculus/horizon/livestreaming/PartyCallNuxFragment;->mContext:Landroid/content/Context;

    sget v2, Lcom/oculus/horizon/R$string;->live_streaming_nux_message_privacy_closed:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/PartyCallNuxFragment;->mSettingsText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/oculus/horizon/livestreaming/PartyCallNuxFragment;->mContext:Landroid/content/Context;

    sget v2, Lcom/oculus/horizon/R$string;->live_streaming_nux_manage_privacy_settings:I

    .line 69
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 68
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    :goto_0
    sget v0, Lcom/oculus/horizon/R$id;->continue_button:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/oculus/horizon/livestreaming/PartyCallNuxFragment;->mContinueButton:Landroid/widget/Button;

    .line 82
    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/PartyCallNuxFragment;->mContinueButton:Landroid/widget/Button;

    new-instance v1, Lcom/oculus/horizon/livestreaming/PartyCallNuxFragment$1;

    invoke-direct {v1, p0}, Lcom/oculus/horizon/livestreaming/PartyCallNuxFragment$1;-><init>(Lcom/oculus/horizon/livestreaming/PartyCallNuxFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/PartyCallNuxFragment;->mSettingsText:Landroid/widget/TextView;

    new-instance v1, Lcom/oculus/horizon/livestreaming/PartyCallNuxFragment$2;

    invoke-direct {v1, p0}, Lcom/oculus/horizon/livestreaming/PartyCallNuxFragment$2;-><init>(Lcom/oculus/horizon/livestreaming/PartyCallNuxFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    return-void

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/PartyCallNuxFragment;->mPrivacyText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/oculus/horizon/livestreaming/PartyCallNuxFragment;->mContext:Landroid/content/Context;

    sget v2, Lcom/oculus/horizon/R$string;->live_streaming_nux_message_privacy_open:I

    .line 73
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/oculus/horizon/livestreaming/PartyCallNuxFragment;->mPrivacyState:Lcom/oculus/horizon/social/model/PrivacyState;

    .line 74
    invoke-direct {p0, v2}, Lcom/oculus/horizon/livestreaming/PartyCallNuxFragment;->getPrivacyStateString(Lcom/oculus/horizon/social/model/PrivacyState;)Ljava/lang/String;

    move-result-object v2

    .line 72
    invoke-static {v1, v2}, Lcom/facebook/common/stringformat/StringFormatUtil;->formatStrLocaleSafe(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 71
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/PartyCallNuxFragment;->mSettingsText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/oculus/horizon/livestreaming/PartyCallNuxFragment;->mContext:Landroid/content/Context;

    sget v2, Lcom/oculus/horizon/R$string;->live_streaming_nux_manage_activity_settings:I

    .line 76
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 75
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
