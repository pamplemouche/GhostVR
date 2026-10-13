.class public Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;
.super Lcom/oculus/horizon/base/OculusBaseFragment;
.source "LiveStreamingSessionFragment.java"

# interfaces
.implements Lcom/oculus/horizon/livestreaming/PartyCallManagerImpl$CallStatusObserver;
.implements Lcom/oculus/horizon/livestreaming/PartyCallManagerImpl$PartyStatusObserver;
.implements Lcom/oculus/horizon/platformplugin/PlatformPluginManager$Client;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mActionHandler:Landroid/os/Handler;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mActiveBroadcastingParticipant:J

.field private mActiveVideoTrack:Lorg/webrtc/VideoTrack;

.field private mApplicationLabel:Landroid/widget/TextView;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mApplicationScreenshot:Lcom/facebook/drawee/view/SimpleDraweeView;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mAudioManager:Landroid/media/AudioManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mBroadcastReceiver:Lcom/facebook/secure/receiver/SecureBroadcastReceiver;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mCallRequestId:Ljava/lang/String;

.field private mCallTimeoutCallback:Ljava/lang/Runnable;

.field private mHeadphonesConnected:Z

.field private mLiveStreamRenderer:Lorg/webrtc/SurfaceViewRenderer;

.field private mLiveStreamingButtonControls:Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls;

.field private mMainStreamPanel:Landroid/widget/FrameLayout;

.field private mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mPackageLauncherUtils:Lcom/oculus/horizon/util/launch/PackageLauncherUtils;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mParty:Lcom/oculus/horizon/api/common/Party;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mPartyCallMethods:Lcom/oculus/horizon/livestreaming/api/PartyCallMethods;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mPartyMethods:Lcom/oculus/horizon/parties/api/PartyMethods;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mPlatformLabel:Landroid/widget/TextView;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mPlatformPluginManager:Lcom/oculus/horizon/platformplugin/PlatformPluginManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mPreviousVolume:I

.field private mProfilePhotoHolder:Landroid/widget/LinearLayout;

.field private mRingPlayer:Landroid/media/MediaPlayer;

.field private mRootEglBase:Lorg/webrtc/EglBase;

.field private mSessionManager:Lcom/oculus/horizon/livestreaming/PartyCallManagerImpl;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mSocialMethods:Lcom/oculus/horizon/social/SocialMethods;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mSocialUtils:Lcom/oculus/horizon/social/SocialUtils;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mStatusChecker:Ljava/lang/Runnable;

.field private mStatusLabel:Landroid/widget/TextView;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mTracksCheckHandler:Landroid/os/Handler;

.field private mUser:Lcom/oculus/horizon/api/common/user/User;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mVideoBroadcastingParticipants:[J

.field private mVideoRenderer:Lorg/webrtc/VideoRenderer;


# direct methods
.method private static final $ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;)V
    .locals 1

    .prologue
    .line 75
    sget-boolean v0, Lcom/facebook/ultralight/UL;->USE_STATIC_DI:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/facebook/inject/FbInjector;->get(Landroid/content/Context;)Lcom/facebook/inject/FbInjector;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->$ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;)V

    :goto_0
    return-void

    :cond_0
    const-class v0, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;

    invoke-static {v0, p1, p0}, Lcom/facebook/inject/FbInjector;->injectMe(Ljava/lang/Class;Ljava/lang/Object;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static final $ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;)V
    .locals 1

    .prologue
    .line 75
    invoke-static {p0}, Lcom/oculus/horizon/livestreaming/api/PartyCallMethods;->$ul_$xXXcom_oculus_horizon_livestreaming_api_PartyCallMethods$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/livestreaming/api/PartyCallMethods;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->mPartyCallMethods:Lcom/oculus/horizon/livestreaming/api/PartyCallMethods;

    invoke-static {p0}, Lcom/oculus/horizon/parties/api/PartyMethods;->$ul_$xXXcom_oculus_horizon_parties_api_PartyMethods$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/parties/api/PartyMethods;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->mPartyMethods:Lcom/oculus/horizon/parties/api/PartyMethods;

    invoke-static {p0}, Lcom/oculus/horizon/logging/OculusLogger;->$ul_$xXXcom_oculus_horizon_logging_OculusLogger$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/logging/OculusLogger;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;

    invoke-static {p0}, Lcom/facebook/common/android/AndroidModule;->$ul_$xXXandroid_media_AudioManager$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Landroid/media/AudioManager;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->mAudioManager:Landroid/media/AudioManager;

    invoke-static {p0}, Lcom/oculus/horizon/platformplugin/PlatformPluginModule;->$ul_$xXXcom_oculus_horizon_platformplugin_PlatformPluginManager$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/platformplugin/PlatformPluginManager;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->mPlatformPluginManager:Lcom/oculus/horizon/platformplugin/PlatformPluginManager;

    invoke-static {p0}, Lcom/oculus/horizon/util/launch/PackageLauncherUtils;->$ul_$xXXcom_oculus_horizon_util_launch_PackageLauncherUtils$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/util/launch/PackageLauncherUtils;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->mPackageLauncherUtils:Lcom/oculus/horizon/util/launch/PackageLauncherUtils;

    invoke-static {p0}, Lcom/oculus/horizon/livestreaming/PartyCallManagerImpl;->$ul_$xXXcom_oculus_horizon_livestreaming_PartyCallManagerImpl$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/livestreaming/PartyCallManagerImpl;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->mSessionManager:Lcom/oculus/horizon/livestreaming/PartyCallManagerImpl;

    invoke-static {p0}, Lcom/oculus/horizon/social/SocialMethods;->$ul_$xXXcom_oculus_horizon_social_SocialMethods$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/social/SocialMethods;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->mSocialMethods:Lcom/oculus/horizon/social/SocialMethods;

    invoke-static {p0}, Lcom/oculus/horizon/social/SocialUtils;->$ul_$xXXcom_oculus_horizon_social_SocialUtils$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/social/SocialUtils;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->mSocialUtils:Lcom/oculus/horizon/social/SocialUtils;

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 80
    const-class v0, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->TAG:Ljava/lang/String;

    .line 83
    const-string v0, "oculus_p2p"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 84
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/oculus/horizon/base/OculusBaseFragment;-><init>()V

    .line 128
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->mBroadcastReceiver:Lcom/facebook/secure/receiver/SecureBroadcastReceiver;

    .line 132
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->mHeadphonesConnected:Z

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    sget-object v0, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;Z)V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->onHeadphonesStateChange(Z)V

    return-void
.end method

.method static synthetic access$1000(Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->cancelPartyCallRequest(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;)V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->onLeaveButtonClick()V

    return-void
.end method

.method static synthetic access$1200(Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;)Lcom/oculus/horizon/logging/OculusLogger;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;)Lcom/oculus/horizon/util/launch/PackageLauncherUtils;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->mPackageLauncherUtils:Lcom/oculus/horizon/util/launch/PackageLauncherUtils;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;)V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->launchRoomsPDP()V

    return-void
.end method

.method static synthetic access$1500(Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;)J
    .locals 2

    .prologue
    .line 75
    iget-wide v0, p0, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->mActiveBroadcastingParticipant:J

    return-wide v0
.end method

.method static synthetic access$1600(Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;)Z
    .locals 1

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->mHeadphonesConnected:Z

    return v0
.end method

.method static synthetic access$1700(Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;)I
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->mPreviousVolume:I

    return v0
.end method

.method static synthetic access$1702(Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;I)I
    .locals 0

    .prologue
    .line 75
    iput p1, p0, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->mPreviousVolume:I

    return p1
.end method

.method static synthetic access$1800(Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;)Landroid/media/AudioManager;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;Z)V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->setMicrophoneMuted(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;)V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->onCallTimeout()V

    return-void
.end method

.method static synthetic access$2000(Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;)V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->ring()V

    return-void
.end method

.method static synthetic access$2100(Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->mActionHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->mCallTimeoutCallback:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;I)V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->showErrorDialog(I)V

    return-void
.end method

.method static synthetic access$2402(Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;Lcom/oculus/horizon/api/common/user/User;)Lcom/oculus/horizon/api/common/user/User;
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->mUser:Lcom/oculus/horizon/api/common/user/User;

    return-object p1
.end method

.method static synthetic access$2500(Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;)V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->refreshCurrentUserDetails()V

    return-void
.end method

.method static synthetic access$2600(Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;)V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->popBackStack()V

    return-void
.end method

.method static synthetic access$300(Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;)Lcom/oculus/horizon/livestreaming/PartyCallManagerImpl;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->mSessionManager:Lcom/oculus/horizon/livestreaming/PartyCallManagerImpl;

    return-object v0
.end method

.method static synthetic access$400(Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;)Lcom/oculus/horizon/platformplugin/PlatformPluginManager;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->mPlatformPluginManager:Lcom/oculus/horizon/platformplugin/PlatformPluginManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;[J)V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->onVideoBroadcastingParticipantsUpdated([J)V

    return-void
.end method

.method static synthetic access$600(Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;)V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->refetchUserProfile()V

    return-void
.end method

.method static synthetic access$700(Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->mStatusChecker:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$800(Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->mTracksCheckHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$900(Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->mCallRequestId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$902(Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->mCallRequestId:Ljava/lang/String;

    return-object p1
.end method

.method private addProfilePicToView(Lcom/oculus/horizon/api/common/user/User;Z)V
    .locals 3

    .prologue
    .line 751
    new-instance v0, Lcom/oculus/horizon/livestreaming/widget/CircularAvatarProfilePicture;

    .line 752
    invoke-virtual {p0}, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/oculus/horizon/livestreaming/widget/CircularAvatarProfilePicture;-><init>(Landroid/content/Context;Lcom/oculus/horizon/api/common/user/User;)V

    .line 753
    invoke-virtual {v0, p2}, Lcom/oculus/horizon/livestreaming/widget/CircularAvatarProfilePicture;->setUsernameVisible(Z)V

    .line 754
    iget-object v1, p0, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->mProfilePhotoHolder:Landroid/widget/LinearLayout;

    const/4 v2, -0x1

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 755
    return-void
.end method

.method private animateUserProfilePicture()V
    .locals 3

    .prologue
    .line 964
    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->mProfilePhotoHolder:Landroid/widget/LinearLayout;

    .line 965
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 966
    const v1, 0x800035

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 968
    invoke-virtual {p0}, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/oculus/horizon/R$dimen;->livestreaming_button_margin:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 970
    invoke-virtual {p0}, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/oculus/horizon/R$dimen;->livestreaming_button_margin:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 971
    iget-object v1, p0, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->mProfilePhotoHolder:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 972
    return-void
.end method

.method private cancelPartyCallRequest(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 699
    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->mPartyCallMethods:Lcom/oculus/horizon/livestreaming/api/PartyCallMethods;

    new-instance v1, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment$12;

    invoke-direct {v1, p0}, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment$12;-><init>(Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;)V

    invoke-virtual {v0, p1, v1}, Lcom/oculus/horizon/livestreaming/api/PartyCallMethods;->cancelPartyCall(Ljava/lang/String;Lretrofit/Callback;)V

    .line 714
    return-void
.end method

.method private generateUsersInPartyString(Ljava/util/List;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/oculus/horizon/api/common/user/User;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 807
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v1

    .line 808
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/api/common/user/User;

    .line 809
    iget-object v3, p0, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->mSocialUtils:Lcom/oculus/horizon/social/SocialUtils;

    invoke-virtual {v3, v0}, Lcom/oculus/horizon/social/SocialUtils;->itsMe(Lcom/oculus/horizon/api/common/user/User;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 810
    iget-object v3, v0, Lcom/oculus/horizon/api/common/user/User;->name:Ljava/lang/String;

    if-eqz v3, :cond_1

    iget-object v0, v0, Lcom/oculus/horizon/api/common/user/User;->name:Ljava/lang/String;

    :goto_1
    invoke-virtual {v1, v0}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    goto :goto_0

    :cond_1
    iget-object v0, v0, Lcom/oculus/horizon/api/common/user/User;->alias:Ljava/lang/String;

    goto :goto_1

    .line 814
    :cond_2
    invoke-virtual {p0}, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oculus/horizon/util/string/StringUtils;->getFormattedList(Landroid/content/Context;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private generateUsersProfiles()V
    .locals 10

    .prologue
    const/4 v3, 0x0

    .line 758
    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->mParty:Lcom/oculus/horizon/api/common/Party;

    if-nez v0, :cond_1

    .line 794
    :cond_0
    return-void

    .line 761
    :cond_1
    new-instance v5, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->mParty:Lcom/oculus/horizon/api/common/Party;

    iget-object v0, v0, Lcom/oculus/horizon/api/common/Party;->party_users:Lcom/oculus/horizon/api/common/Party$PartyUsers;

    invoke-virtual {v0}, Lcom/oculus/horizon/api/common/Party$PartyUsers;->size()I

    move-result v0

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 762
    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->mParty:Lcom/oculus/horizon/api/common/Party;

    iget-object v0, v0, Lcom/oculus/horizon/api/common/Party;->party_users:Lcom/oculus/horizon/api/common/Party$PartyUsers;

    iget-object v0, v0, Lcom/oculus/horizon/api/common/Party$PartyUsers;->nodes:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 764
    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->mProfilePhotoHolder:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v6

    .line 765
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 766
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    move v4, v3

    .line 767
    :goto_0
    if-ge v4, v6, :cond_4

    .line 768
    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->mProfilePhotoHolder:Landroid/widget/LinearLayout;

    .line 769
    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/livestreaming/widget/CircularAvatarProfilePicture;

    move v2, v3

    .line 771
    :goto_1
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_7

    .line 772
    invoke-virtual {v0}, Lcom/oculus/horizon/livestreaming/widget/CircularAvatarProfilePicture;->getUserId()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oculus/horizon/api/common/user/User;

    iget-object v1, v1, Lcom/oculus/horizon/api/common/user/User;->id:Ljava/lang/String;

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 773
    const/4 v1, 0x1

    .line 774
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 775
    invoke-virtual {v0, v3}, Lcom/oculus/horizon/livestreaming/widget/CircularAvatarProfilePicture;->setUsernameVisible(Z)V

    move v0, v1

    .line 779
    :goto_2
    if-nez v0, :cond_2

    .line 780
    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->mProfilePhotoHolder:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 767
    :cond_2
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_0

    .line 771
    :cond_3
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    .line 784
    :cond_4
    invoke-interface {v5, v7}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 785
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 786
    iget-object v2, p0, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->mProfilePhotoHolder:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    goto :goto_3

    :cond_5
    move v1, v3

    .line 789
    :goto_4
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 790
    iget-object v2, p0, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->mSocialUtils:Lcom/oculus/horizon/social/SocialUtils;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/api/common/user/User;

    invoke-virtual {v2, v0}, Lcom/oculus/horizon/social/SocialUtils;->itsMe(Lcom/oculus/horizon/api/common/user/User;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 791
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/api/common/user/User;

    invoke-direct {p0, v0, v3}, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->addProfilePicToView(Lcom/oculus/horizon/api/common/user/User;Z)V

    .line 789
    :cond_6
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_4

    :cond_7
    move v0, v3

    goto :goto_2
.end method

.method private getCurrentApplicationScreenshotURI()Landroid/net/Uri;
    .locals 4
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 569
    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->mUser:Lcom/oculus/horizon/api/common/user/User;

    iget-object v0, v0, Lcom/oculus/horizon/api/common/user/User;->current_room:Lcom/oculus/horizon/api/common/user/CurrentRoom;

    iget-object v0, v0, Lcom/oculus/horizon/api/common/user/CurrentRoom;->nodes:Ljava/util/List;

    .line 570
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 589
    :goto_0
    return-object v0

    .line 574
    :cond_0
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/api/common/Room;

    .line 575
    iget-object v2, v0, Lcom/oculus/horizon/api/common/Room;->app:Lcom/oculus/horizon/api/common/App;

    if-nez v2, :cond_1

    move-object v0, v1

    .line 576
    goto :goto_0

    .line 579
    :cond_1
    iget-object v0, v0, Lcom/oculus/horizon/api/common/Room;->app:Lcom/oculus/horizon/api/common/App;

    iget-object v0, v0, Lcom/oculus/horizon/api/common/App;->screenshots:Ljava/util/List;

    .line 580
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    move-object v0, v1

    .line 581
    goto :goto_0

    .line 584
    :cond_3
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/http/common/Image;

    .line 585
    iget-object v2, v0, Lcom/oculus/http/common/Image;->uri:Ljava/lang/String;

    if-nez v2, :cond_4

    move-object v0, v1

    .line 586
    goto :goto_0

    .line 589
    :cond_4
    iget-object v0, v0, Lcom/oculus/http/common/Image;->uri:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method private static getOnlinePlatforms(Landroid/content/Context;Lcom/oculus/horizon/api/common/user/User;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 391
    iget-object v0, p1, Lcom/oculus/horizon/api/common/user/User;->online_platforms:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/oculus/horizon/api/common/user/User;->online_platforms:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 392
    :cond_0
    const-string v0, ""

    .line 401
    :goto_0
    return-object v0

    .line 395
    :cond_1
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v1

    .line 397
    iget-object v0, p1, Lcom/oculus/horizon/api/common/user/User;->online_platforms:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 398
    invoke-static {p0, v0}, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->platformFriendlyName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    goto :goto_1

    .line 401
    :cond_2
    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/oculus/horizon/util/string/StringUtils;->getFormattedList(Landroid/content/Context;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private hideUsernameLabels()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 798
    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->mProfilePhotoHolder:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    move v1, v2

    .line 799
    :goto_0
    if-ge v1, v3, :cond_0

    .line 800
    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->mProfilePhotoHolder:Landroid/widget/LinearLayout;

    .line 801
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/livestreaming/widget/CircularAvatarProfilePicture;

    .line 802
    invoke-virtual {v0, v2}, Lcom/oculus/horizon/livestreaming/widget/CircularAvatarProfilePicture;->setUsernameVisible(Z)V

    .line 799
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 804
    :cond_0
    return-void
.end method

.method private static isUserActivityStreamable(Lcom/oculus/horizon/api/common/user/User;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 408
    iget-object v0, p0, Lcom/oculus/horizon/api/common/user/User;->current_room:Lcom/oculus/horizon/api/common/user/CurrentRoom;

    if-nez v0, :cond_0

    move v0, v1

    .line 430
    :goto_0
    return v0

    .line 412
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/api/common/user/User;->current_room:Lcom/oculus/horizon/api/common/user/CurrentRoom;

    iget-object v0, v0, Lcom/oculus/horizon/api/common/user/CurrentRoom;->nodes:Ljava/util/List;

    .line 413
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    .line 414
    goto :goto_0

    .line 417
    :cond_1
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/api/common/Room;

    .line 418
    iget-object v2, v0, Lcom/oculus/horizon/api/common/Room;->app:Lcom/oculus/horizon/api/common/App;

    if-nez v2, :cond_2

    move v0, v1

    .line 419
    goto :goto_0

    .line 422
    :cond_2
    sget-object v2, Lcom/oculus/library/model/LivestreamingStatus;->ACCEPTED:Lcom/oculus/library/model/LivestreamingStatus;

    invoke-virtual {v2}, Lcom/oculus/library/model/LivestreamingStatus;->name()Ljava/lang/String;

    move-result-object v2

    iget-object v0, v0, Lcom/oculus/horizon/api/common/Room;->app:Lcom/oculus/horizon/api/common/App;

    iget-object v0, v0, Lcom/oculus/horizon/api/common/App;->livestreaming_status:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    .line 423
    goto :goto_0

    .line 426
    :cond_3
    iget-object v0, p0, Lcom/oculus/horizon/api/common/user/User;->online_platforms:Ljava/util/List;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/oculus/horizon/api/common/user/User;->online_platforms:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    move v0, v1

    .line 427
    goto :goto_0

    .line 430
    :cond_5
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isWiredHeadsetOn(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 178
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 179
    invoke-virtual {v0}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v0

    return v0
.end method

.method private joinPartyAndStartChat(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 719
    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->mPartyMethods:Lcom/oculus/horizon/parties/api/PartyMethods;

    new-instance v1, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment$13;

    invoke-direct {v1, p0, p0}, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment$13;-><init>(Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;)V

    invoke-virtual {v0, p1, v1}, Lcom/oculus/horizon/parties/api/PartyMethods;->joinParty(Ljava/lang/String;Lretrofit/Callback;)V

    .line 734
    return-void
.end method

.method private launchRoomsPDP()V
    .locals 3

    .prologue
    .line 483
    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->mPackageLauncherUtils:Lcom/oculus/horizon/util/launch/PackageLauncherUtils;

    invoke-virtual {v0}, Lcom/oculus/horizon/util/launch/PackageLauncherUtils;->getHomeLaunchIntent()Landroid/content/Intent;

    move-result-object v0

    .line 484
    const-string v1, "pdp"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 485
    const-string v1, "intent_cmd"

    const-string v2, "1101959559889232"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 486
    const-string v1, "apk://com.oculus.home"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 487
    invoke-virtual {p0, v0}, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->startActivity(Landroid/content/Intent;)V

    .line 488
    return-void
.end method

.method private leaveParty()V
    .locals 3

    .prologue
    .line 819
    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->mPartyMethods:Lcom/oculus/horizon/parties/api/PartyMethods;

    iget-object v1, p0, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->mParty:Lcom/oculus/horizon/api/common/Party;

    iget-object v1, v1, Lcom/oculus/horizon/api/common/Party;->id:Ljava/lang/String;

    new-instance v2, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment$14;

    invoke-direct {v2, p0, p0}, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment$14;-><init>(Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;)V

    invoke-virtual {v0, v1, v2}, Lcom/oculus/horizon/parties/api/PartyMethods;->leaveParty(Ljava/lang/String;Lretrofit/Callback;)V

    .line 834
    return-void
.end method

.method private onCallTimeout()V
    .locals 4

    .prologue
    .line 446
    invoke-direct {p0}, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->terminateSession()V

    .line 447
    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->mSessionManager:Lcom/oculus/horizon/livestreaming/PartyCallManagerImpl;

    sget-object v1, Lcom/oculus/horizon/livestreaming/model/LiveStreamingSessionStatus;->CANCELLED:Lcom/oculus/horizon/livestreaming/model/LiveStreamingSessionStatus;

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/livestreaming/PartyCallManagerImpl;->setStatus(Lcom/oculus/horizon/livestreaming/model/LiveStreamingSessionStatus;)V

    .line 448
    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->mActionHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 449
    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->mActionHandler:Landroid/os/Handler;

    new-instance v1, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment$7;

    invoke-direct {v1, p0}, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment$7;-><init>(Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;)V

    iget-object v2, p0, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->mSessionManager:Lcom/oculus/horizon/livestreaming/PartyCallManagerImpl;

    .line 456
    invoke-virtual {v2}, Lcom/oculus/horizon/livestreaming/PartyCallManagerImpl;->getCallEndedTimeoutQEValue()I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    .line 449
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 458
    :cond_0
    return-void
.end method

.method private onHeadphonesStateChange(Z)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1007
    iput-boolean p1, p0, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->mHeadphonesConnected:Z

    .line 1008
    iget-boolean v0, p0, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->mHeadphonesConnected:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->setMicrophoneMuted(Z)V

    .line 1009
    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x3

    iget v3, p0, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->mPreviousVolume:I

    invoke-virtual {v0, v2, v3, v1}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 1013
    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->mLiveStreamingButtonControls:Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls;

    invoke-virtual {v0, p1}, Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls;->setHeadphonesPluggedIn(Z)V

    .line 1014
    return-void

    :cond_0
    move v0, v1

    .line 1008
    goto :goto_0
.end method

.method private onLeaveButtonClick()V
    .locals 0

    .prologue
    .line 544
    invoke-direct {p0}, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->popBackStack()V

    .line 545
    return-void
.end method

.method private onVideoBroadcastingParticipantsUpdated([J)V
    .locals 2

    .prologue
    .line 499
    sget-object v0, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->TAG:Ljava/lang/String;

    const-string v1, "onVideoBroadcastingParticipantsUpdated"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    if-nez p1, :cond_0

    .line 502
    sget-object v0, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->TAG:Ljava/lang/String;

    const-string v1, "onVideoBroadcastingParticipantsUpdated: participants array is null"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    :goto_0
    return-void

    .line 506
    :cond_0
    iput-object p1, p0, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->mVideoBroadcastingParticipants:[J

    .line 508
    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->mVideoBroadcastingParticipants:[J

    array-length v0, v0

    if-lez v0, :cond_1

    .line 509
    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->mVideoBroadcastingParticipants:[J

    const/4 v1, 0x0

    aget-wide v0, v0, v1

    invoke-direct {p0, v0, v1}, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->setActiveBroadcastingParticipant(J)V

    goto :goto_0

    .line 511
    :cond_1
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->setActiveBroadcastingParticipant(J)V

    goto :goto_0
.end method

.method private static platformFriendlyName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 435
    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 441
    sget v0, Lcom/oculus/horizon/R$string;->common_platform_other:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    .line 435
    :sswitch_0
    const-string v1, "ANDROID"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string v1, "PC"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 437
    :pswitch_0
    sget v0, Lcom/oculus/horizon/R$string;->common_platform_gear_vr:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 439
    :pswitch_1
    sget v0, Lcom/oculus/horizon/R$string;->common_platform_rift:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 435
    :sswitch_data_0
    .sparse-switch
        -0x88c3db1 -> :sswitch_0
        0x9f3 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private popBackStack()V
    .locals 1

    .prologue
    .line 491
    invoke-direct {p0}, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->terminateSession()V

    .line 492
    invoke-virtual {p0}, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 493
    if-eqz v0, :cond_0

    .line 494
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 496
    :cond_0
    return-void
.end method

.method private refetchUserProfile()V
    .locals 3

    .prologue
    .line 629
    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->mUser:Lcom/oculus/horizon/api/common/user/User;

    if-nez v0, :cond_0

    .line 647
    :goto_0
    return-void

    .line 633
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->mSocialMethods:Lcom/oculus/horizon/social/SocialMethods;

    iget-object v1, p0, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->mUser:Lcom/oculus/horizon/api/common/user/User;

    iget-object v1, v1, Lcom/oculus/horizon/api/common/user/User;->id:Ljava/lang/String;

    new-instance v2, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment$10;

    invoke-direct {v2, p0}, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment$10;-><init>(Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;)V

    invoke-virtual {v0, v1, v2}, Lcom/oculus/horizon/social/SocialMethods;->fetchProfile(Ljava/lang/String;Lretrofit/Callback;)V

    goto :goto_0
.end method

.method private refreshCurrentUserDetails()V
    .locals 8

    .prologue
    const/16 v3, 0x8

    const/4 v1, 0x0

    .line 650
    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->mUser:Lcom/oculus/horizon/api/common/user/User;

    iget-object v0, v0, Lcom/oculus/horizon/api/common/user/User;->online_platforms:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->mUser:Lcom/oculus/horizon/api/common/user/User;

    iget-object v0, v0, Lcom/oculus/horizon/api/common/user/User;->online_platforms:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 679
    :cond_0
    :goto_0
    return-void

    .line 656
    :cond_1
    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->mApplicationLabel:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 657
    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->mApplicationLabel:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->mUser:Lcom/oculus/horizon/api/common/user/User;

    iget-object v2, v2, Lcom/oculus/horizon/api/common/user/User;->presence:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 660
    :cond_2
    invoke-virtual {p0}, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->mPlatformLabel:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 661
    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->mPlatformLabel:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v4, p0, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->mUser:Lcom/oculus/horizon/api/common/user/User;

    invoke-static {v2, v4}, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->getOnlinePlatforms(Landroid/content/Context;Lcom/oculus/horizon/api/common/user/User;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 664
    :cond_3
    invoke-direct {p0}, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->getCurrentApplicationScreenshotURI()Landroid/net/Uri;

    move-result-object v0

    .line 665
    iget-object v2, p0, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->mApplicationScreenshot:Lcom/facebook/drawee/view/SimpleDraweeView;

    if-eqz v2, :cond_4

    if-eqz v0, :cond_4

    .line 666
    iget-object v2, p0, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->mApplicationScreenshot:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v2, v0}, Lcom/facebook/drawee/view/SimpleDraweeView;->setImageURI(Landroid/net/Uri;)V

    .line 670
    :cond_4
    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->mUser:Lcom/oculus/horizon/api/common/user/User;

    iget-object v0, v0, Lcom/oculus/horizon/api/common/user/User;->id:Ljava/lang/String;

    .line 671
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    iget-wide v6, p0, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->mActiveBroadcastingParticipant:J

    cmp-long v0, v4, v6

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->mUser:Lcom/oculus/horizon/api/common/user/User;

    .line 672
    invoke-static {v0}, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->isUserActivityStreamable(Lcom/oculus/horizon/api/common/user/User;)Z

    move-result v0

    if-nez v0, :cond_7

    :cond_5
    const/4 v0, 0x1

    .line 673
    :goto_1
    iget-object v2, p0, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->mLiveStreamRenderer:Lorg/webrtc/SurfaceViewRenderer;

    if-eqz v2, :cond_6

    .line 674
    iget-object v4, p0, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->mLiveStreamRenderer:Lorg/webrtc/SurfaceViewRenderer;

    if-eqz v0, :cond_8

    move v2, v3

    :goto_2
    invoke-virtual {v4, v2}, Lorg/webrtc/SurfaceViewRenderer;->setVisibility(I)V

    .line 676
    :cond_6
    iget-object v2, p0, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->mApplicationScreenshot:Lcom/facebook/drawee/view/SimpleDraweeView;

    if-eqz v2, :cond_0

    .line 677
    iget-object v2, p0, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->mApplicationScreenshot:Lcom/facebook/drawee/view/SimpleDraweeView;

    if-eqz v0, :cond_9

    :goto_3
    invoke-virtual {v2, v1}, Lcom/facebook/drawee/view/SimpleDraweeView;->setVisibility(I)V

    goto :goto_0

    :cond_7
    move v0, v1

    .line 672
    goto :goto_1

    :cond_8
    move v2, v1

    .line 674
    goto :goto_2

    :cond_9
    move v1, v3

    .line 677
    goto :goto_3
.end method

.method private registerHeadphoneBroadcastListener()V
    .locals 5

    .prologue
    .line 150
    invoke-virtual {p0}, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 152
    new-instance v1, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment$1;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "android.intent.action.HEADSET_PLUG"

    aput-object v4, v2, v3

    invoke-direct {v1, p0, v2}, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment$1;-><init>(Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;[Ljava/lang/String;)V

    iput-object v1, p0, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->mBroadcastReceiver:Lcom/facebook/secure/receiver/SecureBroadcastReceiver;

    .line 170
    iget-object v1, p0, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->mBroadcastReceiver:Lcom/facebook/secure/receiver/SecureBroadcastReceiver;

    iget-object v2, p0, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->mBroadcastReceiver:Lcom/facebook/secure/receiver/SecureBroadcastReceiver;

    invoke-virtual {v2}, Lcom/facebook/secure/receiver/SecureBroadcastReceiver;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 174
    invoke-static {v0}, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->isWiredHeadsetOn(Landroid/content/Context;)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->onHeadphonesStateChange(Z)V

    .line 175
    return-void
.end method

.method private requestMicrophonePermissionIfNecessary()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 945
    invoke-virtual {p0}, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "android.permission.RECORD_AUDIO"

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 947
    if-eqz v0, :cond_0

    .line 949
    invoke-virtual {p0}, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "android.permission.RECORD_AUDIO"

    aput-object v3, v1, v2

    .line 948
    invoke-static {v0, v1, v4}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 951
    :cond_0
    return-void
.end method

.method private ring()V
    .locals 4

    .prologue
    .line 461
    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->mRingPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 463
    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->mActionHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 464
    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->mActionHandler:Landroid/os/Handler;

    new-instance v1, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment$8;

    invoke-direct {v1, p0}, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment$8;-><init>(Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;)V

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 475
    :cond_0
    return-void
.end method

.method private sendPartyCallRequest(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 594
    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->mSessionManager:Lcom/oculus/horizon/livestreaming/PartyCallManagerImpl;

    sget-object v1, Lcom/oculus/horizon/livestreaming/model/LiveStreamingSessionStatus;->RINGING:Lcom/oculus/horizon/livestreaming/model/LiveStreamingSessionStatus;

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/livestreaming/PartyCallManagerImpl;->setStatus(Lcom/oculus/horizon/livestreaming/model/LiveStreamingSessionStatus;)V

    .line 596
    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->mPartyCallMethods:Lcom/oculus/horizon/livestreaming/api/PartyCallMethods;

    new-instance v1, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment$9;

    invoke-direct {v1, p0}, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment$9;-><init>(Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;)V

    invoke-virtual {v0, p1, v1}, Lcom/oculus/horizon/livestreaming/api/PartyCallMethods;->sendPartyCall(Ljava/lang/String;Lretrofit/Callback;)V

    .line 626
    return-void
.end method

.method private setActiveBroadcastingParticipant(J)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 516
    iget-wide v0, p0, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->mActiveBroadcastingParticipant:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 541
    :goto_0
    return-void

    .line 520
    :cond_0
    sget-object v0, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setActiveBroadcastingParticipant "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    iput-wide p1, p0, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->mActiveBroadcastingParticipant:J

    .line 524
    iget-wide v0, p0, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->mActiveBroadcastingParticipant:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 525
    iput-object v4, p0, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->mActiveVideoTrack:Lorg/webrtc/VideoTrack;

    .line 526
    iput-object v4, p0, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->mVideoRenderer:Lorg/webrtc/VideoRenderer;

    .line 528
    invoke-direct {p0}, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->refreshCurrentUserDetails()V

    goto :goto_0

    .line 530
    :cond_1
    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->mPlatformPluginManager:Lcom/oculus/horizon/platformplugin/PlatformPluginManager;

    iget-wide v2, p0, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->mActiveBroadcastingParticipant:J

    .line 531
    invoke-virtual {v0, v2, v3}, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->getVideoStreamingTrackForParticipant(J)Landroid/os/Bundle;

    move-result-object v0

    .line 533
    const-string v1, "track_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 535
    new-instance v2, Lorg/webrtc/VideoTrack;

    invoke-direct {v2, v0, v1}, Lorg/webrtc/VideoTrack;-><init>(J)V

    iput-object v2, p0, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->mActiveVideoTrack:Lorg/webrtc/VideoTrack;

    .line 536
    new-instance v0, Lorg/webrtc/VideoRenderer;

    iget-object v1, p0, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->mLiveStreamRenderer:Lorg/webrtc/SurfaceViewRenderer;

    invoke-direct {v0, v1}, Lorg/webrtc/VideoRenderer;-><init>(Lorg/webrtc/VideoRenderer$Callbacks;)V

    iput-object v0, p0, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->mVideoRenderer:Lorg/webrtc/VideoRenderer;

    .line 537
    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->mActiveVideoTrack:Lorg/webrtc/VideoTrack;

    iget-object v1, p0, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->mVideoRenderer:Lorg/webrtc/VideoRenderer;

    invoke-virtual {v0, v1}, Lorg/webrtc/VideoTrack;->addRenderer(Lorg/webrtc/VideoRenderer;)V

    .line 539
    invoke-direct {p0}, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->refreshCurrentUserDetails()V

    goto :goto_0
.end method

.method private setMicrophoneMuted(Z)V
    .locals 2

    .prologue
    .line 385
    iget-object v1, p0, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->mPlatformPluginManager:Lcom/oculus/horizon/platformplugin/PlatformPluginManager;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->setSystemVoipMicrophoneMuted(I)Landroid/os/Bundle;

    .line 386
    return-void

    .line 385
    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method private setUpAvatarLayoutTransition()V
    .locals 4

    .prologue
    .line 954
    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->mMainStreamPanel:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v0

    .line 955
    if-nez v0, :cond_0

    .line 956
    new-instance v0, Landroid/animation/LayoutTransition;

    invoke-direct {v0}, Landroid/animation/LayoutTransition;-><init>()V

    .line 958
    :cond_0
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->enableTransitionType(I)V

    .line 959
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/LayoutTransition;->setDuration(J)V

    .line 960
    iget-object v1, p0, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->mMainStreamPanel:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 961
    return-void
.end method

.method private showErrorDialog(I)V
    .locals 4
    .param p1    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    .prologue
    const/4 v3, 0x0

    .line 682
    new-instance v0, Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;

    invoke-virtual {p0}, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/oculus/horizon/R$string;->live_streaming_request_error_dialog_title:I

    new-array v2, v3, [Ljava/lang/Object;

    .line 683
    invoke-virtual {v0, v1, v2}, Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;->setTitle(I[Ljava/lang/Object;)Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    .line 684
    invoke-virtual {v0, p1, v1}, Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;->setMessage(I[Ljava/lang/Object;)Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;

    move-result-object v0

    const v1, 0x1040013

    new-instance v2, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment$11;

    invoke-direct {v2, p0}, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment$11;-><init>(Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;)V

    .line 685
    invoke-virtual {v0, v1, v2}, Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;->setPositiveButton(ILcom/oculus/horizon/widget/CustomAlertDialog$OnClickListener;)Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;

    move-result-object v0

    .line 694
    invoke-virtual {p0}, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)Lcom/oculus/horizon/modal/AlertDialogFragment;

    .line 695
    return-void
.end method

.method private terminateSession()V
    .locals 2

    .prologue
    .line 548
    sget-object v0, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment$18;->$SwitchMap$com$oculus$horizon$livestreaming$model$LiveStreamingSessionStatus:[I

    iget-object v1, p0, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->mSessionManager:Lcom/oculus/horizon/livestreaming/PartyCallManagerImpl;

    invoke-virtual {v1}, Lcom/oculus/horizon/livestreaming/PartyCallManagerImpl;->getStatus()Lcom/oculus/horizon/livestreaming/model/LiveStreamingSessionStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oculus/horizon/livestreaming/model/LiveStreamingSessionStatus;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 566
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 550
    :pswitch_1
    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->mSessionManager:Lcom/oculus/horizon/livestreaming/PartyCallManagerImpl;

    sget-object v1, Lcom/oculus/horizon/livestreaming/model/LiveStreamingSessionStatus;->CANCELLED:Lcom/oculus/horizon/livestreaming/model/LiveStreamingSessionStatus;

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/livestreaming/PartyCallManagerImpl;->setStatus(Lcom/oculus/horizon/livestreaming/model/LiveStreamingSessionStatus;)V

    .line 551
    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->mCallRequestId:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->cancelPartyCallRequest(Ljava/lang/String;)V

    goto :goto_0

    .line 556
    :pswitch_2
    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->mSessionManager:Lcom/oculus/horizon/livestreaming/PartyCallManagerImpl;

    sget-object v1, Lcom/oculus/horizon/livestreaming/model/LiveStreamingSessionStatus;->FINISHED:Lcom/oculus/horizon/livestreaming/model/LiveStreamingSessionStatus;

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/livestreaming/PartyCallManagerImpl;->setStatus(Lcom/oculus/horizon/livestreaming/model/LiveStreamingSessionStatus;)V

    .line 557
    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->mParty:Lcom/oculus/horizon/api/common/Party;

    if-eqz v0, :cond_0

    .line 558
    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->mPlatformPluginManager:Lcom/oculus/horizon/platformplugin/PlatformPluginManager;

    invoke-virtual {v0}, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->stopPartyChat()Landroid/os/Bundle;

    .line 559
    invoke-direct {p0}, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->leaveParty()V

    goto :goto_0

    .line 548
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private unregisterHeadphoneBroadcastListener()V
    .locals 2

    .prologue
    .line 183
    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->mBroadcastReceiver:Lcom/facebook/secure/receiver/SecureBroadcastReceiver;

    if-eqz v0, :cond_0

    .line 184
    sget-object v0, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->TAG:Ljava/lang/String;

    const-string v1, "Unregistering headphone receiver"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    invoke-virtual {p0}, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->mBroadcastReceiver:Lcom/facebook/secure/receiver/SecureBroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 186
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->mBroadcastReceiver:Lcom/facebook/secure/receiver/SecureBroadcastReceiver;

    .line 188
    :cond_0
    return-void
.end method

.method private updateStatusLabel()V
    .locals 3

    .prologue
    .line 737
    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->mParty:Lcom/oculus/horizon/api/common/Party;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->mParty:Lcom/oculus/horizon/api/common/Party;

    iget-object v0, v0, Lcom/oculus/horizon/api/common/Party;->party_users:Lcom/oculus/horizon/api/common/Party$PartyUsers;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->mParty:Lcom/oculus/horizon/api/common/Party;

    iget-object v0, v0, Lcom/oculus/horizon/api/common/Party;->party_users:Lcom/oculus/horizon/api/common/Party$PartyUsers;

    iget-object v0, v0, Lcom/oculus/horizon/api/common/Party$PartyUsers;->nodes:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->mStatusLabel:Landroid/widget/TextView;

    if-nez v0, :cond_1

    .line 748
    :cond_0
    :goto_0
    return-void

    .line 743
    :cond_1
    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->mParty:Lcom/oculus/horizon/api/common/Party;

    iget-object v0, v0, Lcom/oculus/horizon/api/common/Party;->party_users:Lcom/oculus/horizon/api/common/Party$PartyUsers;

    iget-object v0, v0, Lcom/oculus/horizon/api/common/Party$PartyUsers;->nodes:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->generateUsersInPartyString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 745
    iget-object v1, p0, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->mStatusLabel:Landroid/widget/TextView;

    sget v2, Lcom/oculus/horizon/R$string;->live_streaming_users_in_party_status:I

    .line 747
    invoke-virtual {p0, v2}, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 746
    invoke-static {v2, v0}, Lcom/facebook/common/stringformat/StringFormatUtil;->formatStrLocaleSafe(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 745
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updateStatusLabel(Lcom/oculus/horizon/livestreaming/model/LiveStreamingSessionStatus;)V
    .locals 2

    .prologue
    .line 908
    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->mStatusLabel:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 941
    :goto_0
    return-void

    .line 912
    :cond_0
    sget-object v0, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment$18;->$SwitchMap$com$oculus$horizon$livestreaming$model$LiveStreamingSessionStatus:[I

    invoke-virtual {p1}, Lcom/oculus/horizon/livestreaming/model/LiveStreamingSessionStatus;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 914
    :pswitch_0
    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->mStatusLabel:Landroid/widget/TextView;

    sget v1, Lcom/oculus/horizon/R$string;->live_streaming_request_ringing_status:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 915
    invoke-direct {p0}, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->ring()V

    goto :goto_0

    .line 918
    :pswitch_1
    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->mStatusLabel:Landroid/widget/TextView;

    sget v1, Lcom/oculus/horizon/R$string;->live_streaming_request_timed_out_status:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 919
    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->mRingPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    goto :goto_0

    .line 922
    :pswitch_2
    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->mStatusLabel:Landroid/widget/TextView;

    sget v1, Lcom/oculus/horizon/R$string;->live_streaming_request_connecting_status:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 923
    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->mRingPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    goto :goto_0

    .line 926
    :pswitch_3
    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->mStatusLabel:Landroid/widget/TextView;

    sget v1, Lcom/oculus/horizon/R$string;->live_streaming_request_connected_status:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 929
    :pswitch_4
    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->mStatusLabel:Landroid/widget/TextView;

    sget v1, Lcom/oculus/horizon/R$string;->live_streaming_request_rejected_status:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 930
    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->mRingPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    goto :goto_0

    .line 933
    :pswitch_5
    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->mStatusLabel:Landroid/widget/TextView;

    sget v1, Lcom/oculus/horizon/R$string;->live_streaming_request_error_status:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 934
    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->mRingPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    goto :goto_0

    .line 937
    :pswitch_6
    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->mStatusLabel:Landroid/widget/TextView;

    sget v1, Lcom/oculus/horizon/R$string;->live_streaming_request_finished_status:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 938
    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->mRingPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    goto :goto_0

    .line 912
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_4
        :pswitch_1
        :pswitch_6
    .end packed-switch
.end method


# virtual methods
.method protected getTrackingView()Lcom/oculus/horizon/logging/TrackingViews$View;
    .locals 1

    .prologue
    .line 479
    sget-object v0, Lcom/oculus/horizon/logging/TrackingViews$View;->LIVE_STREAMING_SESSION:Lcom/oculus/horizon/logging/TrackingViews$View;

    return-object v0
.end method

.method public onBackPressed()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 975
    sget-object v1, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment$18;->$SwitchMap$com$oculus$horizon$livestreaming$model$LiveStreamingSessionStatus:[I

    iget-object v2, p0, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->mSessionManager:Lcom/oculus/horizon/livestreaming/PartyCallManagerImpl;

    invoke-virtual {v2}, Lcom/oculus/horizon/livestreaming/PartyCallManagerImpl;->getStatus()Lcom/oculus/horizon/livestreaming/model/LiveStreamingSessionStatus;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oculus/horizon/livestreaming/model/LiveStreamingSessionStatus;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 1002
    :goto_0
    return v0

    .line 979
    :pswitch_0
    new-instance v1, Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;

    invoke-virtual {p0}, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;-><init>(Landroid/content/Context;)V

    sget v2, Lcom/oculus/horizon/R$string;->live_streaming_back_button_dialog_title:I

    new-array v3, v0, [Ljava/lang/Object;

    .line 980
    invoke-virtual {v1, v2, v3}, Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;->setTitle(I[Ljava/lang/Object;)Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;

    move-result-object v1

    sget v2, Lcom/oculus/horizon/R$string;->live_streaming_back_button_dialog:I

    new-array v0, v0, [Ljava/lang/Object;

    .line 981
    invoke-virtual {v1, v2, v0}, Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;->setMessage(I[Ljava/lang/Object;)Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;

    move-result-object v0

    const v1, 0x1040013

    new-instance v2, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment$17;

    invoke-direct {v2, p0}, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment$17;-><init>(Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;)V

    .line 982
    invoke-virtual {v0, v1, v2}, Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;->setPositiveButton(ILcom/oculus/horizon/widget/CustomAlertDialog$OnClickListener;)Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;

    move-result-object v0

    const v1, 0x1040009

    new-instance v2, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment$16;

    invoke-direct {v2, p0}, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment$16;-><init>(Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;)V

    .line 991
    invoke-virtual {v0, v1, v2}, Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;->setNegativeButton(ILcom/oculus/horizon/widget/CustomAlertDialog$OnClickListener;)Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;

    move-result-object v0

    .line 999
    invoke-virtual {p0}, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)Lcom/oculus/horizon/modal/AlertDialogFragment;

    .line 1000
    const/4 v0, 0x1

    goto :goto_0

    .line 975
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onCallAccepted(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 846
    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->mSessionManager:Lcom/oculus/horizon/livestreaming/PartyCallManagerImpl;

    sget-object v1, Lcom/oculus/horizon/livestreaming/model/LiveStreamingSessionStatus;->CONNECTING:Lcom/oculus/horizon/livestreaming/model/LiveStreamingSessionStatus;

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/livestreaming/PartyCallManagerImpl;->setStatus(Lcom/oculus/horizon/livestreaming/model/LiveStreamingSessionStatus;)V

    .line 847
    invoke-direct {p0, p3}, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->joinPartyAndStartChat(Ljava/lang/String;)V

    .line 848
    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->mActionHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 849
    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->mActionHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->mCallTimeoutCallback:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 851
    :cond_0
    return-void
.end method

.method public onCallRejected(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 855
    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->mSessionManager:Lcom/oculus/horizon/livestreaming/PartyCallManagerImpl;

    sget-object v1, Lcom/oculus/horizon/livestreaming/model/LiveStreamingSessionStatus;->REJECTED:Lcom/oculus/horizon/livestreaming/model/LiveStreamingSessionStatus;

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/livestreaming/PartyCallManagerImpl;->setStatus(Lcom/oculus/horizon/livestreaming/model/LiveStreamingSessionStatus;)V

    .line 856
    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->mActionHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 857
    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->mActionHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->mCallTimeoutCallback:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 859
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 140
    invoke-super {p0, p1}, Lcom/oculus/horizon/base/OculusBaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 75
    invoke-virtual {p0}, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->$ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;)V

    .line 144
    invoke-virtual {p0}, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 145
    const-string v1, "user"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/api/common/user/User;

    iput-object v0, p0, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->mUser:Lcom/oculus/horizon/api/common/user/User;

    .line 146
    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    iput v0, p0, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->mPreviousVolume:I

    .line 147
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 193
    sget v0, Lcom/oculus/horizon/R$layout;->live_streaming_session_fragment:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroyView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 349
    iput-object v2, p0, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->mStatusLabel:Landroid/widget/TextView;

    .line 350
    iput-object v2, p0, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->mMainStreamPanel:Landroid/widget/FrameLayout;

    .line 351
    iput-object v2, p0, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->mApplicationScreenshot:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 352
    iput-object v2, p0, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->mApplicationLabel:Landroid/widget/TextView;

    .line 353
    iput-object v2, p0, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->mPlatformLabel:Landroid/widget/TextView;

    .line 354
    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->mActionHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 355
    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->mActionHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->mCallTimeoutCallback:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 356
    iput-object v2, p0, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->mActionHandler:Landroid/os/Handler;

    .line 358
    :cond_0
    iput-object v2, p0, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->mCallTimeoutCallback:Ljava/lang/Runnable;

    .line 359
    iput-object v2, p0, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->mStatusChecker:Ljava/lang/Runnable;

    .line 361
    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->mRootEglBase:Lorg/webrtc/EglBase;

    if-eqz v0, :cond_1

    .line 362
    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->mRootEglBase:Lorg/webrtc/EglBase;

    invoke-virtual {v0}, Lorg/webrtc/EglBase;->release()V

    .line 363
    iput-object v2, p0, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->mRootEglBase:Lorg/webrtc/EglBase;

    .line 366
    :cond_1
    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->mLiveStreamRenderer:Lorg/webrtc/SurfaceViewRenderer;

    if-eqz v0, :cond_2

    .line 367
    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->mLiveStreamRenderer:Lorg/webrtc/SurfaceViewRenderer;

    invoke-virtual {v0}, Lorg/webrtc/SurfaceViewRenderer;->release()V

    .line 368
    iput-object v2, p0, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->mLiveStreamRenderer:Lorg/webrtc/SurfaceViewRenderer;

    .line 371
    :cond_2
    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->mActiveVideoTrack:Lorg/webrtc/VideoTrack;

    if-eqz v0, :cond_3

    .line 372
    iput-object v2, p0, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->mActiveVideoTrack:Lorg/webrtc/VideoTrack;

    .line 375
    :cond_3
    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->mSessionManager:Lcom/oculus/horizon/livestreaming/PartyCallManagerImpl;

    invoke-virtual {v0}, Lcom/oculus/horizon/livestreaming/PartyCallManagerImpl;->getStatus()Lcom/oculus/horizon/livestreaming/model/LiveStreamingSessionStatus;

    move-result-object v0

    sget-object v1, Lcom/oculus/horizon/livestreaming/model/LiveStreamingSessionStatus;->RINGING:Lcom/oculus/horizon/livestreaming/model/LiveStreamingSessionStatus;

    if-ne v0, v1, :cond_4

    .line 377
    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->mCallRequestId:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->cancelPartyCallRequest(Ljava/lang/String;)V

    .line 378
    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->mRingPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 381
    :cond_4
    invoke-super {p0}, Lcom/oculus/horizon/base/OculusBaseFragment;->onDestroyView()V

    .line 382
    return-void
.end method

.method public onPartyUpdated(Lcom/oculus/horizon/api/common/Party;)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 875
    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->mParty:Lcom/oculus/horizon/api/common/Party;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/oculus/horizon/api/common/Party;->party_users:Lcom/oculus/horizon/api/common/Party$PartyUsers;

    if-nez v0, :cond_1

    :cond_0
    move v0, v1

    .line 877
    :goto_0
    iput-object p1, p0, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->mParty:Lcom/oculus/horizon/api/common/Party;

    .line 879
    iget-object v2, p0, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->mParty:Lcom/oculus/horizon/api/common/Party;

    if-nez v2, :cond_2

    .line 905
    :goto_1
    return-void

    .line 875
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 883
    :cond_2
    invoke-direct {p0}, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->generateUsersProfiles()V

    .line 885
    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->mParty:Lcom/oculus/horizon/api/common/Party;

    iget-object v0, v0, Lcom/oculus/horizon/api/common/Party;->party_users:Lcom/oculus/horizon/api/common/Party$PartyUsers;

    invoke-virtual {v0}, Lcom/oculus/horizon/api/common/Party$PartyUsers;->size()I

    move-result v0

    if-gt v0, v1, :cond_5

    .line 886
    :cond_3
    const-string v0, "PARTY_STATUS"

    const-string v1, "Ending call due to a single player being left in the party"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 887
    invoke-direct {p0}, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->terminateSession()V

    .line 888
    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->mActionHandler:Landroid/os/Handler;

    if-eqz v0, :cond_4

    .line 889
    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->mActionHandler:Landroid/os/Handler;

    new-instance v1, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment$15;

    invoke-direct {v1, p0}, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment$15;-><init>(Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;)V

    iget-object v2, p0, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->mSessionManager:Lcom/oculus/horizon/livestreaming/PartyCallManagerImpl;

    .line 896
    invoke-virtual {v2}, Lcom/oculus/horizon/livestreaming/PartyCallManagerImpl;->getCallEndedTimeoutQEValue()I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    .line 889
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 898
    :cond_4
    invoke-direct {p0}, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->popBackStack()V

    goto :goto_1

    .line 904
    :cond_5
    invoke-direct {p0}, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->updateStatusLabel()V

    goto :goto_1
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 330
    invoke-super {p0}, Lcom/oculus/horizon/base/OculusBaseFragment;->onPause()V

    .line 331
    invoke-direct {p0}, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->unregisterHeadphoneBroadcastListener()V

    .line 333
    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->mActionHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 334
    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->mActionHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 337
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->mSessionManager:Lcom/oculus/horizon/livestreaming/PartyCallManagerImpl;

    invoke-virtual {v0, p0}, Lcom/oculus/horizon/livestreaming/PartyCallManagerImpl;->unregisterPartyStatusObserver(Lcom/oculus/horizon/livestreaming/PartyCallManagerImpl$PartyStatusObserver;)V

    .line 338
    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->mSessionManager:Lcom/oculus/horizon/livestreaming/PartyCallManagerImpl;

    invoke-virtual {v0, p0}, Lcom/oculus/horizon/livestreaming/PartyCallManagerImpl;->unregisterStatusObserver(Lcom/oculus/horizon/livestreaming/PartyCallManagerImpl$CallStatusObserver;)V

    .line 341
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->setMicrophoneMuted(Z)V

    .line 343
    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->mPlatformPluginManager:Lcom/oculus/horizon/platformplugin/PlatformPluginManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->setTuneInModeEnabled(Z)Landroid/os/Bundle;

    .line 344
    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->mPlatformPluginManager:Lcom/oculus/horizon/platformplugin/PlatformPluginManager;

    invoke-virtual {v0, p0}, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->disconnect(Lcom/oculus/horizon/platformplugin/PlatformPluginManager$Client;)V

    .line 345
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 315
    invoke-super {p0}, Lcom/oculus/horizon/base/OculusBaseFragment;->onResume()V

    .line 316
    iget-object v1, p0, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->mSessionManager:Lcom/oculus/horizon/livestreaming/PartyCallManagerImpl;

    invoke-virtual {v1}, Lcom/oculus/horizon/livestreaming/PartyCallManagerImpl;->getStatus()Lcom/oculus/horizon/livestreaming/model/LiveStreamingSessionStatus;

    move-result-object v1

    sget-object v2, Lcom/oculus/horizon/livestreaming/model/LiveStreamingSessionStatus;->CONNECTED:Lcom/oculus/horizon/livestreaming/model/LiveStreamingSessionStatus;

    if-ne v1, v2, :cond_0

    .line 317
    iget-object v1, p0, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->mSessionManager:Lcom/oculus/horizon/livestreaming/PartyCallManagerImpl;

    invoke-virtual {v1, p0}, Lcom/oculus/horizon/livestreaming/PartyCallManagerImpl;->registerPartyStatusObserver(Lcom/oculus/horizon/livestreaming/PartyCallManagerImpl$PartyStatusObserver;)V

    .line 319
    :cond_0
    iget-object v1, p0, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->mSessionManager:Lcom/oculus/horizon/livestreaming/PartyCallManagerImpl;

    invoke-virtual {v1, p0}, Lcom/oculus/horizon/livestreaming/PartyCallManagerImpl;->registerStatusObserver(Lcom/oculus/horizon/livestreaming/PartyCallManagerImpl$CallStatusObserver;)V

    .line 320
    iget-object v1, p0, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->mPlatformPluginManager:Lcom/oculus/horizon/platformplugin/PlatformPluginManager;

    invoke-virtual {v1, p0}, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->connectForTuneIn(Lcom/oculus/horizon/platformplugin/PlatformPluginManager$Client;)V

    .line 321
    iget-object v1, p0, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->mPlatformPluginManager:Lcom/oculus/horizon/platformplugin/PlatformPluginManager;

    invoke-virtual {v1, v0}, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->setTuneInModeEnabled(Z)Landroid/os/Bundle;

    .line 322
    invoke-direct {p0}, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->registerHeadphoneBroadcastListener()V

    .line 325
    iget-boolean v1, p0, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->mHeadphonesConnected:Z

    if-nez v1, :cond_1

    :goto_0
    invoke-direct {p0, v0}, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->setMicrophoneMuted(Z)V

    .line 326
    return-void

    .line 325
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onStatusUpdated(Lcom/oculus/horizon/livestreaming/model/LiveStreamingSessionStatus;)V
    .locals 1

    .prologue
    .line 863
    invoke-direct {p0, p1}, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->updateStatusLabel(Lcom/oculus/horizon/livestreaming/model/LiveStreamingSessionStatus;)V

    .line 865
    sget-object v0, Lcom/oculus/horizon/livestreaming/model/LiveStreamingSessionStatus;->CONNECTED:Lcom/oculus/horizon/livestreaming/model/LiveStreamingSessionStatus;

    if-ne p1, v0, :cond_0

    .line 866
    invoke-direct {p0}, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->hideUsernameLabels()V

    .line 867
    invoke-direct {p0}, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->animateUserProfilePicture()V

    .line 870
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->mLiveStreamingButtonControls:Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls;

    invoke-virtual {v0, p1}, Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls;->updateButtonVisibility(Lcom/oculus/horizon/livestreaming/model/LiveStreamingSessionStatus;)V

    .line 871
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3
    .param p2    # Landroid/os/Bundle;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 198
    invoke-super {p0, p1, p2}, Lcom/oculus/horizon/base/OculusBaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 200
    sget v0, Lcom/oculus/horizon/R$id;->application_screenshot:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v0, p0, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->mApplicationScreenshot:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 201
    sget v0, Lcom/oculus/horizon/R$id;->status_label:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->mStatusLabel:Landroid/widget/TextView;

    .line 202
    sget v0, Lcom/oculus/horizon/R$id;->application_label:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->mApplicationLabel:Landroid/widget/TextView;

    .line 203
    sget v0, Lcom/oculus/horizon/R$id;->platform_label:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->mPlatformLabel:Landroid/widget/TextView;

    .line 204
    sget v0, Lcom/oculus/horizon/R$id;->main_stream_panel:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->mMainStreamPanel:Landroid/widget/FrameLayout;

    .line 205
    sget v0, Lcom/oculus/horizon/R$id;->profile_photo_holder:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->mProfilePhotoHolder:Landroid/widget/LinearLayout;

    .line 206
    sget v0, Lcom/oculus/horizon/R$id;->live_stream_renderer:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/webrtc/SurfaceViewRenderer;

    iput-object v0, p0, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->mLiveStreamRenderer:Lorg/webrtc/SurfaceViewRenderer;

    .line 207
    invoke-static {}, Lorg/webrtc/EglBase;->create()Lorg/webrtc/EglBase;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->mRootEglBase:Lorg/webrtc/EglBase;

    .line 208
    invoke-virtual {p0}, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/oculus/horizon/R$raw;->incoming_call_ring:I

    invoke-static {v0, v1}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->mRingPlayer:Landroid/media/MediaPlayer;

    .line 210
    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->mLiveStreamRenderer:Lorg/webrtc/SurfaceViewRenderer;

    iget-object v1, p0, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->mRootEglBase:Lorg/webrtc/EglBase;

    invoke-virtual {v1}, Lorg/webrtc/EglBase;->getEglBaseContext()Lorg/webrtc/EglBase$Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/webrtc/SurfaceViewRenderer;->init(Lorg/webrtc/EglBase$Context;Lorg/webrtc/RendererCommon$RendererEvents;)V

    .line 212
    sget v0, Lcom/oculus/horizon/R$id;->button_controls:I

    .line 213
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls;

    iput-object v0, p0, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->mLiveStreamingButtonControls:Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls;

    .line 214
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->mActionHandler:Landroid/os/Handler;

    .line 215
    new-instance v0, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment$2;

    invoke-direct {v0, p0}, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment$2;-><init>(Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;)V

    iput-object v0, p0, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->mCallTimeoutCallback:Ljava/lang/Runnable;

    .line 222
    invoke-direct {p0}, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->setUpAvatarLayoutTransition()V

    .line 223
    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->mUser:Lcom/oculus/horizon/api/common/user/User;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->addProfilePicToView(Lcom/oculus/horizon/api/common/user/User;Z)V

    .line 224
    invoke-direct {p0}, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->refreshCurrentUserDetails()V

    .line 226
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->mTracksCheckHandler:Landroid/os/Handler;

    .line 227
    new-instance v0, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment$3;

    invoke-direct {v0, p0}, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment$3;-><init>(Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;)V

    iput-object v0, p0, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->mStatusChecker:Ljava/lang/Runnable;

    .line 244
    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->mStatusChecker:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 246
    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->mLiveStreamingButtonControls:Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls;

    new-instance v1, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment$4;

    invoke-direct {v1, p0}, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment$4;-><init>(Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;)V

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls;->registerLeaveButtonClickListener(Landroid/view/View$OnClickListener;)V

    .line 265
    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->mLiveStreamingButtonControls:Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls;

    new-instance v1, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment$5;

    invoke-direct {v1, p0, p0}, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment$5;-><init>(Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;)V

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls;->registerJoinInVRClickListener(Landroid/view/View$OnClickListener;)V

    .line 289
    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->mLiveStreamingButtonControls:Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls;

    new-instance v1, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment$6;

    invoke-direct {v1, p0}, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment$6;-><init>(Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;)V

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls;->registerTalkButtonTouchListener(Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls$OnTalkButtonTouchListener;)V

    .line 309
    invoke-direct {p0}, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->requestMicrophonePermissionIfNecessary()V

    .line 310
    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->mUser:Lcom/oculus/horizon/api/common/user/User;

    iget-object v0, v0, Lcom/oculus/horizon/api/common/user/User;->id:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->sendPartyCallRequest(Ljava/lang/String;)V

    .line 311
    return-void
.end method

.method public showPartyChatResume()V
    .locals 0

    .prologue
    .line 839
    return-void
.end method

.method public showPartyChatSuspend()V
    .locals 0

    .prologue
    .line 842
    return-void
.end method
