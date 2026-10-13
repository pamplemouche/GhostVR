.class public Lcom/oculus/horizon/hsw/HSWVideoFragment;
.super Lcom/oculus/horizon/base/OculusBaseFragment;
.source "HSWVideoFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/horizon/hsw/HSWVideoFragment$Listener;,
        Lcom/oculus/horizon/hsw/HSWVideoFragment$SECTION;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mChildrenSection:Landroid/widget/LinearLayout;

.field private mClientPreferencesMethods:Lcom/oculus/horizon/client_preferences/api/ClientPreferencesMethods;
    .annotation build Lcom/facebook/ultralight/Inject;
    .end annotation
.end field

.field private mComfortSection:Landroid/widget/LinearLayout;

.field private mConfirmSection:Landroid/widget/LinearLayout;

.field private mContentSection:Landroid/widget/LinearLayout;

.field private mCurrentVideoPos:I

.field private mHandler:Landroid/os/Handler;

.field private mHasVideoCompleted:Z

.field private mIntroSection:Landroid/widget/LinearLayout;

.field private mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;
    .annotation build Lcom/facebook/ultralight/Inject;
    .end annotation
.end field

.field private final mRunnable:Ljava/lang/Runnable;

.field private mSurroundingsSection:Landroid/widget/LinearLayout;

.field private mUserProfileHelper:Lcom/oculus/horizon/profile/UserProfileHelper;
    .annotation build Lcom/facebook/ultralight/Inject;
    .end annotation
.end field

.field private mVideoView:Landroid/widget/VideoView;

.field private mWarningsSection:Landroid/widget/LinearLayout;


# direct methods
.method private static final $ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/hsw/HSWVideoFragment;)V
    .locals 1

    .prologue
    .line 36
    sget-boolean v0, Lcom/facebook/ultralight/UL;->USE_STATIC_DI:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/facebook/inject/FbInjector;->get(Landroid/content/Context;)Lcom/facebook/inject/FbInjector;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oculus/horizon/hsw/HSWVideoFragment;->$ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/hsw/HSWVideoFragment;)V

    :goto_0
    return-void

    :cond_0
    const-class v0, Lcom/oculus/horizon/hsw/HSWVideoFragment;

    invoke-static {v0, p1, p0}, Lcom/facebook/inject/FbInjector;->injectMe(Ljava/lang/Class;Ljava/lang/Object;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static final $ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/hsw/HSWVideoFragment;)V
    .locals 1

    .prologue
    .line 36
    invoke-static {p0}, Lcom/oculus/horizon/client_preferences/api/ClientPreferencesMethods;->$ul_$xXXcom_oculus_horizon_client$x5Fpreferences_api_ClientPreferencesMethods$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/client_preferences/api/ClientPreferencesMethods;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/hsw/HSWVideoFragment;->mClientPreferencesMethods:Lcom/oculus/horizon/client_preferences/api/ClientPreferencesMethods;

    invoke-static {p0}, Lcom/oculus/horizon/profile/UserProfileHelper;->$ul_$xXXcom_oculus_horizon_profile_UserProfileHelper$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/profile/UserProfileHelper;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/hsw/HSWVideoFragment;->mUserProfileHelper:Lcom/oculus/horizon/profile/UserProfileHelper;

    invoke-static {p0}, Lcom/oculus/horizon/logging/OculusLogger;->$ul_$xXXcom_oculus_horizon_logging_OculusLogger$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/logging/OculusLogger;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/hsw/HSWVideoFragment;->mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 65
    const-class v0, Lcom/oculus/horizon/hsw/HSWVideoFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/horizon/hsw/HSWVideoFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 36
    invoke-direct {p0}, Lcom/oculus/horizon/base/OculusBaseFragment;-><init>()V

    .line 48
    iput v0, p0, Lcom/oculus/horizon/hsw/HSWVideoFragment;->mCurrentVideoPos:I

    .line 49
    iput-boolean v0, p0, Lcom/oculus/horizon/hsw/HSWVideoFragment;->mHasVideoCompleted:Z

    .line 203
    new-instance v0, Lcom/oculus/horizon/hsw/HSWVideoFragment$7;

    invoke-direct {v0, p0}, Lcom/oculus/horizon/hsw/HSWVideoFragment$7;-><init>(Lcom/oculus/horizon/hsw/HSWVideoFragment;)V

    iput-object v0, p0, Lcom/oculus/horizon/hsw/HSWVideoFragment;->mRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/oculus/horizon/hsw/HSWVideoFragment;)Lcom/oculus/horizon/logging/OculusLogger;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/oculus/horizon/hsw/HSWVideoFragment;->mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oculus/horizon/hsw/HSWVideoFragment;Lcom/oculus/horizon/hsw/HSWVideoFragment$SECTION;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/oculus/horizon/hsw/HSWVideoFragment;->setSection(Lcom/oculus/horizon/hsw/HSWVideoFragment$SECTION;)V

    return-void
.end method

.method static synthetic access$200(Lcom/oculus/horizon/hsw/HSWVideoFragment;)Landroid/widget/VideoView;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/oculus/horizon/hsw/HSWVideoFragment;->mVideoView:Landroid/widget/VideoView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/oculus/horizon/hsw/HSWVideoFragment;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/oculus/horizon/hsw/HSWVideoFragment;->mRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$400(Lcom/oculus/horizon/hsw/HSWVideoFragment;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/oculus/horizon/hsw/HSWVideoFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/oculus/horizon/hsw/HSWVideoFragment;Z)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/oculus/horizon/hsw/HSWVideoFragment;->setHSWOptOut(Z)V

    return-void
.end method

.method static synthetic access$602(Lcom/oculus/horizon/hsw/HSWVideoFragment;Z)Z
    .locals 0

    .prologue
    .line 36
    iput-boolean p1, p0, Lcom/oculus/horizon/hsw/HSWVideoFragment;->mHasVideoCompleted:Z

    return p1
.end method

.method static synthetic access$700(Lcom/oculus/horizon/hsw/HSWVideoFragment;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/oculus/horizon/hsw/HSWVideoFragment;->onComplete()V

    return-void
.end method

.method static synthetic access$800()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/oculus/horizon/hsw/HSWVideoFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$902(Lcom/oculus/horizon/hsw/HSWVideoFragment;I)I
    .locals 0

    .prologue
    .line 36
    iput p1, p0, Lcom/oculus/horizon/hsw/HSWVideoFragment;->mCurrentVideoPos:I

    return p1
.end method

.method private onComplete()V
    .locals 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/oculus/horizon/hsw/HSWVideoFragment;->mUserProfileHelper:Lcom/oculus/horizon/profile/UserProfileHelper;

    invoke-virtual {v0}, Lcom/oculus/horizon/profile/UserProfileHelper;->edit()Lcom/oculus/horizon/profile/UserProfileHelper$Editor;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/profile/UserProfileHelper$Editor;->setHasSeenHSWVideo(Z)Lcom/oculus/horizon/profile/UserProfileHelper$Editor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/horizon/profile/UserProfileHelper$Editor;->commit()Z

    .line 83
    invoke-virtual {p0}, Lcom/oculus/horizon/hsw/HSWVideoFragment;->getTargetFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 84
    instance-of v1, v0, Lcom/oculus/horizon/hsw/HSWVideoFragment$Listener;

    if-eqz v1, :cond_0

    .line 85
    check-cast v0, Lcom/oculus/horizon/hsw/HSWVideoFragment$Listener;

    invoke-interface {v0}, Lcom/oculus/horizon/hsw/HSWVideoFragment$Listener;->onComplete()Z

    .line 87
    :cond_0
    return-void
.end method

.method private resetMainSectionVisibility()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 262
    iget-object v0, p0, Lcom/oculus/horizon/hsw/HSWVideoFragment;->mIntroSection:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 263
    iget-object v0, p0, Lcom/oculus/horizon/hsw/HSWVideoFragment;->mContentSection:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 264
    iget-object v0, p0, Lcom/oculus/horizon/hsw/HSWVideoFragment;->mConfirmSection:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 265
    return-void
.end method

.method private resetVideoSectionBackgrounds()V
    .locals 2

    .prologue
    .line 268
    iget-object v0, p0, Lcom/oculus/horizon/hsw/HSWVideoFragment;->mWarningsSection:Landroid/widget/LinearLayout;

    sget v1, Lcom/oculus/horizon/R$color;->oculus_gray:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 269
    iget-object v0, p0, Lcom/oculus/horizon/hsw/HSWVideoFragment;->mSurroundingsSection:Landroid/widget/LinearLayout;

    sget v1, Lcom/oculus/horizon/R$color;->oculus_gray:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 270
    iget-object v0, p0, Lcom/oculus/horizon/hsw/HSWVideoFragment;->mChildrenSection:Landroid/widget/LinearLayout;

    sget v1, Lcom/oculus/horizon/R$color;->oculus_gray:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 271
    iget-object v0, p0, Lcom/oculus/horizon/hsw/HSWVideoFragment;->mComfortSection:Landroid/widget/LinearLayout;

    sget v1, Lcom/oculus/horizon/R$color;->oculus_gray:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 272
    return-void
.end method

.method private setHSWOptOut(Z)V
    .locals 3

    .prologue
    .line 185
    iget-object v0, p0, Lcom/oculus/horizon/hsw/HSWVideoFragment;->mUserProfileHelper:Lcom/oculus/horizon/profile/UserProfileHelper;

    invoke-virtual {v0}, Lcom/oculus/horizon/profile/UserProfileHelper;->edit()Lcom/oculus/horizon/profile/UserProfileHelper$Editor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/oculus/horizon/profile/UserProfileHelper$Editor;->setHasOptedOutHSW(Z)Lcom/oculus/horizon/profile/UserProfileHelper$Editor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/horizon/profile/UserProfileHelper$Editor;->apply()V

    .line 186
    iget-object v0, p0, Lcom/oculus/horizon/hsw/HSWVideoFragment;->mClientPreferencesMethods:Lcom/oculus/horizon/client_preferences/api/ClientPreferencesMethods;

    sget-object v1, Lcom/oculus/horizon/client_preferences/api/ClientPreferencesMutationParams$PreferenceType;->TYPE_OPT_OUT_HSW:Lcom/oculus/horizon/client_preferences/api/ClientPreferencesMutationParams$PreferenceType;

    new-instance v2, Lcom/oculus/horizon/hsw/HSWVideoFragment$6;

    invoke-direct {v2, p0}, Lcom/oculus/horizon/hsw/HSWVideoFragment$6;-><init>(Lcom/oculus/horizon/hsw/HSWVideoFragment;)V

    invoke-virtual {v0, v1, p1, v2}, Lcom/oculus/horizon/client_preferences/api/ClientPreferencesMethods;->mutatePreference(Lcom/oculus/horizon/client_preferences/api/ClientPreferencesMutationParams$PreferenceType;ZLretrofit/Callback;)V

    .line 201
    return-void
.end method

.method private setSection(Lcom/oculus/horizon/hsw/HSWVideoFragment$SECTION;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 230
    invoke-direct {p0}, Lcom/oculus/horizon/hsw/HSWVideoFragment;->resetMainSectionVisibility()V

    .line 231
    sget-object v0, Lcom/oculus/horizon/hsw/HSWVideoFragment$8;->$SwitchMap$com$oculus$horizon$hsw$HSWVideoFragment$SECTION:[I

    invoke-virtual {p1}, Lcom/oculus/horizon/hsw/HSWVideoFragment$SECTION;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 239
    iget-object v0, p0, Lcom/oculus/horizon/hsw/HSWVideoFragment;->mContentSection:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 244
    :goto_0
    invoke-direct {p0}, Lcom/oculus/horizon/hsw/HSWVideoFragment;->resetVideoSectionBackgrounds()V

    .line 245
    sget-object v0, Lcom/oculus/horizon/hsw/HSWVideoFragment$8;->$SwitchMap$com$oculus$horizon$hsw$HSWVideoFragment$SECTION:[I

    invoke-virtual {p1}, Lcom/oculus/horizon/hsw/HSWVideoFragment$SECTION;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1

    .line 259
    :goto_1
    return-void

    .line 233
    :pswitch_0
    iget-object v0, p0, Lcom/oculus/horizon/hsw/HSWVideoFragment;->mIntroSection:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 236
    :pswitch_1
    iget-object v0, p0, Lcom/oculus/horizon/hsw/HSWVideoFragment;->mConfirmSection:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 247
    :pswitch_2
    iget-object v0, p0, Lcom/oculus/horizon/hsw/HSWVideoFragment;->mWarningsSection:Landroid/widget/LinearLayout;

    sget v1, Lcom/oculus/horizon/R$color;->oculus_black_1:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto :goto_1

    .line 250
    :pswitch_3
    iget-object v0, p0, Lcom/oculus/horizon/hsw/HSWVideoFragment;->mSurroundingsSection:Landroid/widget/LinearLayout;

    sget v1, Lcom/oculus/horizon/R$color;->oculus_black_1:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto :goto_1

    .line 253
    :pswitch_4
    iget-object v0, p0, Lcom/oculus/horizon/hsw/HSWVideoFragment;->mChildrenSection:Landroid/widget/LinearLayout;

    sget v1, Lcom/oculus/horizon/R$color;->oculus_black_1:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto :goto_1

    .line 256
    :pswitch_5
    iget-object v0, p0, Lcom/oculus/horizon/hsw/HSWVideoFragment;->mComfortSection:Landroid/widget/LinearLayout;

    sget v1, Lcom/oculus/horizon/R$color;->oculus_black_1:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto :goto_1

    .line 231
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 245
    :pswitch_data_1
    .packed-switch 0x3
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private setUpVideo()V
    .locals 5

    .prologue
    .line 311
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "android.resource://%s/%d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 313
    invoke-virtual {p0}, Lcom/oculus/horizon/hsw/HSWVideoFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget v4, Lcom/oculus/horizon/R$raw;->hsw:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 312
    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 315
    iget-object v1, p0, Lcom/oculus/horizon/hsw/HSWVideoFragment;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v1, v0}, Landroid/widget/VideoView;->setVideoPath(Ljava/lang/String;)V

    .line 316
    return-void
.end method


# virtual methods
.method protected getTrackingView()Lcom/oculus/horizon/logging/TrackingViews$View;
    .locals 1

    .prologue
    .line 307
    sget-object v0, Lcom/oculus/horizon/logging/TrackingViews$View;->HSW_VIDEO:Lcom/oculus/horizon/logging/TrackingViews$View;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 91
    invoke-super {p0, p1}, Lcom/oculus/horizon/base/OculusBaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 36
    invoke-virtual {p0}, Lcom/oculus/horizon/hsw/HSWVideoFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/oculus/horizon/hsw/HSWVideoFragment;->$ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/hsw/HSWVideoFragment;)V

    .line 94
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
    .line 100
    invoke-virtual {p0}, Lcom/oculus/horizon/hsw/HSWVideoFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/oculus/horizon/R$style;->Theme_Light:I

    invoke-static {v0, p1, v1}, Lcom/oculus/horizon/util/ThemeUtils;->getThemedInflater(Landroid/content/Context;Landroid/view/LayoutInflater;I)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/oculus/horizon/R$layout;->hsw_video_fragment:I

    const/4 v2, 0x0

    .line 101
    invoke-virtual {v0, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 276
    invoke-super {p0}, Lcom/oculus/horizon/base/OculusBaseFragment;->onPause()V

    .line 278
    iget-object v0, p0, Lcom/oculus/horizon/hsw/HSWVideoFragment;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 279
    iget-object v0, p0, Lcom/oculus/horizon/hsw/HSWVideoFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/oculus/horizon/hsw/HSWVideoFragment;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 281
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/hsw/HSWVideoFragment;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 282
    iget-object v0, p0, Lcom/oculus/horizon/hsw/HSWVideoFragment;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->stopPlayback()V

    .line 284
    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 288
    invoke-super {p0}, Lcom/oculus/horizon/base/OculusBaseFragment;->onResume()V

    .line 290
    invoke-direct {p0}, Lcom/oculus/horizon/hsw/HSWVideoFragment;->setUpVideo()V

    .line 291
    iget-boolean v0, p0, Lcom/oculus/horizon/hsw/HSWVideoFragment;->mHasVideoCompleted:Z

    if-eqz v0, :cond_0

    .line 292
    sget-object v0, Lcom/oculus/horizon/hsw/HSWVideoFragment$SECTION;->CONFIRM:Lcom/oculus/horizon/hsw/HSWVideoFragment$SECTION;

    invoke-direct {p0, v0}, Lcom/oculus/horizon/hsw/HSWVideoFragment;->setSection(Lcom/oculus/horizon/hsw/HSWVideoFragment$SECTION;)V

    .line 303
    :goto_0
    return-void

    .line 295
    :cond_0
    iget v0, p0, Lcom/oculus/horizon/hsw/HSWVideoFragment;->mCurrentVideoPos:I

    if-nez v0, :cond_1

    .line 296
    sget-object v0, Lcom/oculus/horizon/hsw/HSWVideoFragment$SECTION;->INTRO:Lcom/oculus/horizon/hsw/HSWVideoFragment$SECTION;

    invoke-direct {p0, v0}, Lcom/oculus/horizon/hsw/HSWVideoFragment;->setSection(Lcom/oculus/horizon/hsw/HSWVideoFragment$SECTION;)V

    goto :goto_0

    .line 300
    :cond_1
    iget-object v0, p0, Lcom/oculus/horizon/hsw/HSWVideoFragment;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    .line 301
    iget-object v0, p0, Lcom/oculus/horizon/hsw/HSWVideoFragment;->mVideoView:Landroid/widget/VideoView;

    iget v1, p0, Lcom/oculus/horizon/hsw/HSWVideoFragment;->mCurrentVideoPos:I

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->seekTo(I)V

    .line 302
    iget-object v0, p0, Lcom/oculus/horizon/hsw/HSWVideoFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/oculus/horizon/hsw/HSWVideoFragment;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4
    .param p2    # Landroid/os/Bundle;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 106
    invoke-super {p0, p1, p2}, Lcom/oculus/horizon/base/OculusBaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 108
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/oculus/horizon/hsw/HSWVideoFragment;->mHandler:Landroid/os/Handler;

    .line 109
    sget v0, Lcom/oculus/horizon/R$id;->intro_section:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/oculus/horizon/hsw/HSWVideoFragment;->mIntroSection:Landroid/widget/LinearLayout;

    .line 110
    sget v0, Lcom/oculus/horizon/R$id;->content_section:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/oculus/horizon/hsw/HSWVideoFragment;->mContentSection:Landroid/widget/LinearLayout;

    .line 111
    sget v0, Lcom/oculus/horizon/R$id;->confirm_section:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/oculus/horizon/hsw/HSWVideoFragment;->mConfirmSection:Landroid/widget/LinearLayout;

    .line 112
    sget v0, Lcom/oculus/horizon/R$id;->warnings_section:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/oculus/horizon/hsw/HSWVideoFragment;->mWarningsSection:Landroid/widget/LinearLayout;

    .line 113
    sget v0, Lcom/oculus/horizon/R$id;->surroundings_section:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/oculus/horizon/hsw/HSWVideoFragment;->mSurroundingsSection:Landroid/widget/LinearLayout;

    .line 114
    sget v0, Lcom/oculus/horizon/R$id;->children_section:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/oculus/horizon/hsw/HSWVideoFragment;->mChildrenSection:Landroid/widget/LinearLayout;

    .line 115
    sget v0, Lcom/oculus/horizon/R$id;->comfort_section:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/oculus/horizon/hsw/HSWVideoFragment;->mComfortSection:Landroid/widget/LinearLayout;

    .line 116
    sget v0, Lcom/oculus/horizon/R$id;->video:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/VideoView;

    iput-object v0, p0, Lcom/oculus/horizon/hsw/HSWVideoFragment;->mVideoView:Landroid/widget/VideoView;

    .line 118
    sget v0, Lcom/oculus/horizon/R$id;->video_confirmation_button:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 119
    sget v1, Lcom/oculus/horizon/R$id;->video_play_button:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 120
    sget v2, Lcom/oculus/horizon/R$id;->video_decline_link:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 122
    new-instance v3, Lcom/oculus/horizon/hsw/HSWVideoFragment$1;

    invoke-direct {v3, p0}, Lcom/oculus/horizon/hsw/HSWVideoFragment$1;-><init>(Lcom/oculus/horizon/hsw/HSWVideoFragment;)V

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    new-instance v1, Lcom/oculus/horizon/hsw/HSWVideoFragment$2;

    invoke-direct {v1, p0}, Lcom/oculus/horizon/hsw/HSWVideoFragment$2;-><init>(Lcom/oculus/horizon/hsw/HSWVideoFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    new-instance v0, Lcom/oculus/horizon/hsw/HSWVideoFragment$3;

    invoke-direct {v0, p0}, Lcom/oculus/horizon/hsw/HSWVideoFragment$3;-><init>(Lcom/oculus/horizon/hsw/HSWVideoFragment;)V

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    iget-object v0, p0, Lcom/oculus/horizon/hsw/HSWVideoFragment;->mVideoView:Landroid/widget/VideoView;

    new-instance v1, Lcom/oculus/horizon/hsw/HSWVideoFragment$4;

    invoke-direct {v1, p0}, Lcom/oculus/horizon/hsw/HSWVideoFragment$4;-><init>(Lcom/oculus/horizon/hsw/HSWVideoFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 163
    iget-object v0, p0, Lcom/oculus/horizon/hsw/HSWVideoFragment;->mVideoView:Landroid/widget/VideoView;

    new-instance v1, Lcom/oculus/horizon/hsw/HSWVideoFragment$5;

    invoke-direct {v1, p0}, Lcom/oculus/horizon/hsw/HSWVideoFragment$5;-><init>(Lcom/oculus/horizon/hsw/HSWVideoFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 175
    iget-object v0, p0, Lcom/oculus/horizon/hsw/HSWVideoFragment;->mVideoView:Landroid/widget/VideoView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setKeepScreenOn(Z)V

    .line 177
    invoke-direct {p0}, Lcom/oculus/horizon/hsw/HSWVideoFragment;->setUpVideo()V

    .line 179
    invoke-virtual {p0}, Lcom/oculus/horizon/hsw/HSWVideoFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/oculus/horizon/R$string;->hsw_video_title:I

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->setTitle(I)V

    .line 181
    iget-object v0, p0, Lcom/oculus/horizon/hsw/HSWVideoFragment;->mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;

    const-string v1, "hsw_introduction"

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/logging/OculusLogger;->reportHSWVideoEvent(Ljava/lang/String;)V

    .line 182
    return-void
.end method
