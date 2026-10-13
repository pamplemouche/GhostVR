.class public Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity;
.super Landroid/app/Activity;
.source "FullScreenVideoPlayerActivity.java"

# interfaces
.implements Lcom/oculus/horizon/widget/OculusMediaController$OnControlChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity$ViewInVrClickListener;,
        Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity$RetainedFragment;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mDeeplinkUri:Landroid/net/Uri;

.field mFeedVideoLoggerProvider:Lcom/oculus/horizon/feed/FeedVideoLoggerProvider;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private mIconImageView:Lcom/facebook/drawee/view/SimpleDraweeView;

.field private mIsCompleted:Z

.field private mIsDragging:Z

.field private mIsShowingOverlay:Z

.field mLocaleProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Ljava/util/Locale;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mMedia:Lcom/oculus/horizon/feed/model/Media;

.field private mMediaController:Lcom/oculus/horizon/widget/OculusMediaController;

.field private mRetainedFragment:Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity$RetainedFragment;

.field private mShouldStartPlaying:Z

.field private mStartingPosition:I

.field private mStoryHeader:Landroid/view/ViewGroup;

.field private mSurfaceView:Landroid/view/SurfaceView;

.field private mTimestampTextView:Landroid/widget/TextView;

.field private mTitleTextView:Landroid/widget/TextView;

.field private mViewInVrButton:Landroid/view/View;

.field private mWasPlaying:Z


# direct methods
.method private static final $ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity;)V
    .locals 1

    .prologue
    .line 38
    sget-boolean v0, Lcom/facebook/ultralight/UL;->USE_STATIC_DI:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/facebook/inject/FbInjector;->get(Landroid/content/Context;)Lcom/facebook/inject/FbInjector;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity;->$ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity;)V

    :goto_0
    return-void

    :cond_0
    const-class v0, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity;

    invoke-static {v0, p1, p0}, Lcom/facebook/inject/FbInjector;->injectMe(Ljava/lang/Class;Ljava/lang/Object;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static final $ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity;)V
    .locals 1

    .prologue
    .line 38
    invoke-static {p0}, Lcom/oculus/horizon/feed/FeedVideoLogger;->$ul_$xXXcom_oculus_horizon_feed_FeedVideoLoggerProvider$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/feed/FeedVideoLoggerProvider;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity;->mFeedVideoLoggerProvider:Lcom/oculus/horizon/feed/FeedVideoLoggerProvider;

    invoke-static {p0}, Lcom/oculus/locale/LocaleModule;->$ul_$xXXjavax_inject_Provider$x3Cjava_util_Locale$x3E$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity;->mLocaleProvider:Ljavax/inject/Provider;

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const-class v0, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 88
    new-instance v0, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity$1;

    invoke-direct {v0, p0}, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity$1;-><init>(Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity;)V

    iput-object v0, p0, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity;)I
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity;->updateProgress()I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity;)Z
    .locals 1

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity;->mIsDragging:Z

    return v0
.end method

.method static synthetic access$1000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity;)Z
    .locals 1

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity;->mIsShowingOverlay:Z

    return v0
.end method

.method static synthetic access$300(Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity;)Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity$RetainedFragment;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity;->mRetainedFragment:Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity$RetainedFragment;

    return-object v0
.end method

.method static synthetic access$500(Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity;)I
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity;->mStartingPosition:I

    return v0
.end method

.method static synthetic access$600(Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity;)Z
    .locals 1

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity;->mIsCompleted:Z

    return v0
.end method

.method static synthetic access$602(Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity;Z)Z
    .locals 0

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity;->mIsCompleted:Z

    return p1
.end method

.method static synthetic access$700(Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity;)Lcom/oculus/horizon/widget/OculusMediaController;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity;->mMediaController:Lcom/oculus/horizon/widget/OculusMediaController;

    return-object v0
.end method

.method static synthetic access$800(Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity;)Z
    .locals 1

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity;->mShouldStartPlaying:Z

    return v0
.end method

.method static synthetic access$900(Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity;)Landroid/net/Uri;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity;->mDeeplinkUri:Landroid/net/Uri;

    return-object v0
.end method

.method private updateProgress()I
    .locals 4

    .prologue
    .line 441
    iget-object v0, p0, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity;->mRetainedFragment:Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity$RetainedFragment;

    iget-object v0, v0, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity$RetainedFragment;->mMediaPlayerHelper:Lcom/oculus/horizon/media/SurfaceMediaPlayerHelper;

    if-nez v0, :cond_0

    .line 442
    const/4 v1, 0x0

    .line 450
    :goto_0
    return v1

    .line 444
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity;->mRetainedFragment:Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity$RetainedFragment;

    iget-object v0, v0, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity$RetainedFragment;->mMediaPlayerHelper:Lcom/oculus/horizon/media/SurfaceMediaPlayerHelper;

    invoke-virtual {v0}, Lcom/oculus/horizon/media/SurfaceMediaPlayerHelper;->getDuration()I

    move-result v2

    .line 445
    iget-object v0, p0, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity;->mRetainedFragment:Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity$RetainedFragment;

    iget-object v0, v0, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity$RetainedFragment;->mMediaPlayerHelper:Lcom/oculus/horizon/media/SurfaceMediaPlayerHelper;

    invoke-virtual {v0}, Lcom/oculus/horizon/media/SurfaceMediaPlayerHelper;->getCurrentPosition()I

    move-result v0

    .line 446
    iget-boolean v1, p0, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity;->mIsCompleted:Z

    if-eqz v1, :cond_1

    move v1, v2

    .line 449
    :goto_1
    iget-object v3, p0, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity;->mMediaController:Lcom/oculus/horizon/widget/OculusMediaController;

    iget-object v0, p0, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity;->mLocaleProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Locale;

    invoke-virtual {v3, v1, v2, v0}, Lcom/oculus/horizon/widget/OculusMediaController;->setProgress(IILjava/util/Locale;)I

    goto :goto_0

    :cond_1
    move v1, v0

    goto :goto_1
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x1

    .line 312
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    .line 314
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_2

    move v1, v0

    .line 315
    :goto_0
    const/16 v4, 0x4f

    if-eq v3, v4, :cond_0

    const/16 v4, 0x55

    if-eq v3, v4, :cond_0

    const/16 v4, 0x3e

    if-ne v3, v4, :cond_3

    .line 318
    :cond_0
    if-eqz v1, :cond_1

    .line 319
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity;->togglePausePlay(Landroid/view/View;)V

    .line 320
    invoke-virtual {p0}, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity;->showOverlay()V

    .line 346
    :cond_1
    :goto_1
    return v0

    :cond_2
    move v1, v2

    .line 314
    goto :goto_0

    .line 323
    :cond_3
    const/16 v4, 0x7e

    if-ne v3, v4, :cond_4

    .line 324
    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity;->mRetainedFragment:Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity$RetainedFragment;

    iget-object v1, v1, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity$RetainedFragment;->mMediaPlayerHelper:Lcom/oculus/horizon/media/SurfaceMediaPlayerHelper;

    invoke-virtual {v1}, Lcom/oculus/horizon/media/SurfaceMediaPlayerHelper;->isPlaying()Z

    move-result v1

    if-nez v1, :cond_1

    .line 325
    iget-object v1, p0, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity;->mRetainedFragment:Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity$RetainedFragment;

    iget-object v1, v1, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity$RetainedFragment;->mMediaPlayerHelper:Lcom/oculus/horizon/media/SurfaceMediaPlayerHelper;

    invoke-virtual {v1}, Lcom/oculus/horizon/media/SurfaceMediaPlayerHelper;->play()V

    .line 326
    iget-object v1, p0, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity;->mMediaController:Lcom/oculus/horizon/widget/OculusMediaController;

    invoke-virtual {v1, v0}, Lcom/oculus/horizon/widget/OculusMediaController;->updatePausePlay(Z)V

    .line 327
    invoke-virtual {p0}, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity;->showOverlay()V

    goto :goto_1

    .line 330
    :cond_4
    const/16 v4, 0x56

    if-eq v3, v4, :cond_5

    const/16 v4, 0x7f

    if-ne v3, v4, :cond_6

    .line 331
    :cond_5
    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity;->mRetainedFragment:Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity$RetainedFragment;

    iget-object v1, v1, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity$RetainedFragment;->mMediaPlayerHelper:Lcom/oculus/horizon/media/SurfaceMediaPlayerHelper;

    invoke-virtual {v1}, Lcom/oculus/horizon/media/SurfaceMediaPlayerHelper;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 332
    iget-object v1, p0, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity;->mRetainedFragment:Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity$RetainedFragment;

    iget-object v1, v1, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity$RetainedFragment;->mMediaPlayerHelper:Lcom/oculus/horizon/media/SurfaceMediaPlayerHelper;

    invoke-virtual {v1}, Lcom/oculus/horizon/media/SurfaceMediaPlayerHelper;->pause()V

    .line 333
    iget-object v1, p0, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity;->mMediaController:Lcom/oculus/horizon/widget/OculusMediaController;

    invoke-virtual {v1, v2}, Lcom/oculus/horizon/widget/OculusMediaController;->updatePausePlay(Z)V

    .line 334
    invoke-virtual {p0}, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity;->showOverlay()V

    goto :goto_1

    .line 337
    :cond_6
    const/16 v0, 0x19

    if-eq v3, v0, :cond_7

    const/16 v0, 0x18

    if-eq v3, v0, :cond_7

    const/16 v0, 0xa4

    if-eq v3, v0, :cond_7

    const/16 v0, 0x1b

    if-ne v3, v0, :cond_8

    .line 342
    :cond_7
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_1

    .line 345
    :cond_8
    invoke-virtual {p0}, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity;->showOverlay()V

    .line 346
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_1
.end method

.method public hideOverlay()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 432
    iget-boolean v0, p0, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity;->mIsShowingOverlay:Z

    if-eqz v0, :cond_0

    .line 433
    iget-object v0, p0, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 434
    iget-object v0, p0, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity;->mStoryHeader:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 435
    iget-object v0, p0, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity;->mMediaController:Lcom/oculus/horizon/widget/OculusMediaController;

    invoke-virtual {v0, v2}, Lcom/oculus/horizon/widget/OculusMediaController;->setVisibility(I)V

    .line 436
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity;->mIsShowingOverlay:Z

    .line 438
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 113
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    invoke-static {p0, p0}, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity;->$ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity;)V

    .line 117
    invoke-virtual {p0}, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 118
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x504

    .line 119
    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 123
    sget v0, Lcom/oculus/horizon/R$layout;->full_screen_video_player_activity:I

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity;->setContentView(I)V

    .line 125
    sget v0, Lcom/oculus/horizon/R$id;->vr_mode_button:I

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity;->mViewInVrButton:Landroid/view/View;

    .line 126
    iget-object v0, p0, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity;->mViewInVrButton:Landroid/view/View;

    new-instance v1, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity$ViewInVrClickListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity$ViewInVrClickListener;-><init>(Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity;Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity$1;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    sget v0, Lcom/oculus/horizon/R$id;->story_header:I

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity;->mStoryHeader:Landroid/view/ViewGroup;

    .line 129
    sget v0, Lcom/oculus/horizon/R$id;->feed_icon:I

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v0, p0, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity;->mIconImageView:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 130
    sget v0, Lcom/oculus/horizon/R$id;->feed_title:I

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity;->mTitleTextView:Landroid/widget/TextView;

    .line 131
    iget-object v0, p0, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 132
    sget v0, Lcom/oculus/horizon/R$id;->feed_timestamp:I

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity;->mTimestampTextView:Landroid/widget/TextView;

    .line 133
    iget-object v0, p0, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity;->mTimestampTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/oculus/horizon/R$color;->oculus_gray:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 135
    sget v0, Lcom/oculus/horizon/R$id;->media_controller:I

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/widget/OculusMediaController;

    iput-object v0, p0, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity;->mMediaController:Lcom/oculus/horizon/widget/OculusMediaController;

    .line 136
    iget-object v0, p0, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity;->mMediaController:Lcom/oculus/horizon/widget/OculusMediaController;

    invoke-virtual {v0, p0}, Lcom/oculus/horizon/widget/OculusMediaController;->setOnControlChangedListener(Lcom/oculus/horizon/widget/OculusMediaController$OnControlChangedListener;)V

    .line 138
    sget v0, Lcom/oculus/horizon/R$id;->video_surface:I

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceView;

    iput-object v0, p0, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity;->mSurfaceView:Landroid/view/SurfaceView;

    .line 140
    invoke-virtual {p0}, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 142
    const-string v0, "extra_deeplink_uri"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity;->mDeeplinkUri:Landroid/net/Uri;

    .line 144
    const-string v0, "extra_icon_image_uri"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 145
    iget-object v2, p0, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity;->mIconImageView:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v2, v0}, Lcom/facebook/drawee/view/SimpleDraweeView;->setImageURI(Landroid/net/Uri;)V

    .line 147
    const-string v0, "extra_title"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 148
    const-string v2, "extra_description"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 149
    iget-object v3, p0, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity;->mTitleTextView:Landroid/widget/TextView;

    invoke-static {p0, v2, v0}, Lcom/oculus/horizon/util/TextSpanUtils;->highlightText(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 151
    const-string v0, "extra_timestamp"

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 152
    iget-object v0, p0, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity;->mLocaleProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Locale;

    invoke-static {p0, v2, v3, v0}, Lcom/oculus/horizon/util/DateUtils;->formatWithTodayYesterday(Landroid/content/Context;JLjava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 153
    iget-object v2, p0, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity;->mTimestampTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 155
    const-string v0, "extra_media"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/feed/model/Media;

    iput-object v0, p0, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity;->mMedia:Lcom/oculus/horizon/feed/model/Media;

    .line 157
    iput-boolean v6, p0, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity;->mIsShowingOverlay:Z

    .line 158
    iput-boolean v5, p0, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity;->mIsDragging:Z

    .line 160
    iput v4, p0, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity;->mStartingPosition:I

    .line 161
    iput-boolean v6, p0, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity;->mShouldStartPlaying:Z

    .line 162
    iput-boolean v5, p0, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity;->mIsCompleted:Z

    .line 163
    if-eqz p1, :cond_1

    .line 164
    const-string v0, "state_position"

    invoke-virtual {p1, v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity;->mStartingPosition:I

    .line 165
    const-string v0, "state_play_pause"

    invoke-virtual {p1, v0, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity;->mShouldStartPlaying:Z

    .line 166
    const-string v0, "state_completed"

    invoke-virtual {p1, v0, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity;->mIsCompleted:Z

    .line 171
    :goto_0
    invoke-virtual {p0}, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 172
    const-string v0, "player"

    invoke-virtual {v1, v0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity$RetainedFragment;

    iput-object v0, p0, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity;->mRetainedFragment:Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity$RetainedFragment;

    .line 173
    iget-object v0, p0, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity;->mRetainedFragment:Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity$RetainedFragment;

    if-nez v0, :cond_0

    .line 174
    new-instance v0, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity$RetainedFragment;

    invoke-direct {v0}, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity$RetainedFragment;-><init>()V

    iput-object v0, p0, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity;->mRetainedFragment:Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity$RetainedFragment;

    .line 175
    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity;->mRetainedFragment:Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity$RetainedFragment;

    const-string v2, "player"

    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity;->mRetainedFragment:Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity$RetainedFragment;

    iget-object v0, v0, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity$RetainedFragment;->mMediaPlayerHelper:Lcom/oculus/horizon/media/SurfaceMediaPlayerHelper;

    if-nez v0, :cond_2

    .line 179
    iget-object v0, p0, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity;->mRetainedFragment:Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity$RetainedFragment;

    new-instance v1, Lcom/oculus/horizon/media/SurfaceMediaPlayerHelper;

    iget-object v2, p0, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity;->mFeedVideoLoggerProvider:Lcom/oculus/horizon/feed/FeedVideoLoggerProvider;

    iget-object v3, p0, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity;->mMedia:Lcom/oculus/horizon/feed/model/Media;

    .line 180
    invoke-virtual {v2, v3}, Lcom/oculus/horizon/feed/FeedVideoLoggerProvider;->get(Lcom/oculus/horizon/feed/model/Media;)Lcom/oculus/horizon/feed/FeedVideoLogger;

    move-result-object v2

    iget-object v3, p0, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-direct {v1, p0, v2, v3}, Lcom/oculus/horizon/media/SurfaceMediaPlayerHelper;-><init>(Landroid/content/Context;Lcom/oculus/horizon/media/MediaPlayerLogger;Landroid/view/SurfaceView;)V

    iput-object v1, v0, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity$RetainedFragment;->mMediaPlayerHelper:Lcom/oculus/horizon/media/SurfaceMediaPlayerHelper;

    .line 185
    :goto_1
    iget-object v0, p0, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity;->mRetainedFragment:Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity$RetainedFragment;

    iget-object v0, v0, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity$RetainedFragment;->mMediaPlayerHelper:Lcom/oculus/horizon/media/SurfaceMediaPlayerHelper;

    new-instance v1, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity$2;

    invoke-direct {v1, p0}, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity$2;-><init>(Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity;)V

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/media/SurfaceMediaPlayerHelper;->setStatusListener(Lcom/oculus/horizon/media/MediaPlayerHelper$StatusListener;)V

    .line 214
    return-void

    .line 168
    :cond_1
    const-string v0, "extra_video_position"

    invoke-virtual {v1, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity;->mStartingPosition:I

    goto :goto_0

    .line 182
    :cond_2
    iget-object v0, p0, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity;->mRetainedFragment:Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity$RetainedFragment;

    iget-object v0, v0, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity$RetainedFragment;->mMediaPlayerHelper:Lcom/oculus/horizon/media/SurfaceMediaPlayerHelper;

    iget-object v1, p0, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/media/SurfaceMediaPlayerHelper;->setSurfaceView(Landroid/view/SurfaceView;)V

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 278
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 279
    iget-object v0, p0, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity;->mRetainedFragment:Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity$RetainedFragment;

    iget-object v0, v0, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity$RetainedFragment;->mMediaPlayerHelper:Lcom/oculus/horizon/media/SurfaceMediaPlayerHelper;

    if-eqz v0, :cond_0

    .line 280
    iget-object v0, p0, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity;->mRetainedFragment:Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity$RetainedFragment;

    iget-object v0, v0, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity$RetainedFragment;->mMediaPlayerHelper:Lcom/oculus/horizon/media/SurfaceMediaPlayerHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/media/SurfaceMediaPlayerHelper;->setStatusListener(Lcom/oculus/horizon/media/MediaPlayerHelper$StatusListener;)V

    .line 282
    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 252
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 254
    iget-object v0, p0, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity;->mRetainedFragment:Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity$RetainedFragment;

    iget-object v0, v0, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity$RetainedFragment;->mMediaPlayerHelper:Lcom/oculus/horizon/media/SurfaceMediaPlayerHelper;

    if-eqz v0, :cond_0

    .line 255
    iget-object v0, p0, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity;->mRetainedFragment:Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity$RetainedFragment;

    iget-object v0, v0, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity$RetainedFragment;->mMediaPlayerHelper:Lcom/oculus/horizon/media/SurfaceMediaPlayerHelper;

    invoke-virtual {v0}, Lcom/oculus/horizon/media/SurfaceMediaPlayerHelper;->isPlaying()Z

    move-result v0

    iput-boolean v0, p0, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity;->mWasPlaying:Z

    .line 256
    iget-boolean v0, p0, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity;->mWasPlaying:Z

    if-eqz v0, :cond_0

    .line 257
    iget-object v0, p0, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity;->mRetainedFragment:Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity$RetainedFragment;

    iget-object v0, v0, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity$RetainedFragment;->mMediaPlayerHelper:Lcom/oculus/horizon/media/SurfaceMediaPlayerHelper;

    invoke-virtual {v0}, Lcom/oculus/horizon/media/SurfaceMediaPlayerHelper;->pause()V

    .line 261
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 262
    iget-object v0, p0, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 263
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 218
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 220
    iget-object v0, p0, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity;->mRetainedFragment:Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity$RetainedFragment;

    iget-object v0, v0, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity$RetainedFragment;->mMediaPlayerHelper:Lcom/oculus/horizon/media/SurfaceMediaPlayerHelper;

    if-nez v0, :cond_0

    .line 248
    :goto_0
    return-void

    .line 224
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity;->mRetainedFragment:Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity$RetainedFragment;

    iget-object v0, v0, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity$RetainedFragment;->mMediaPlayerHelper:Lcom/oculus/horizon/media/SurfaceMediaPlayerHelper;

    invoke-virtual {v0}, Lcom/oculus/horizon/media/SurfaceMediaPlayerHelper;->isPreparing()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity;->mRetainedFragment:Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity$RetainedFragment;

    iget-object v0, v0, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity$RetainedFragment;->mMediaPlayerHelper:Lcom/oculus/horizon/media/SurfaceMediaPlayerHelper;

    .line 225
    invoke-virtual {v0}, Lcom/oculus/horizon/media/SurfaceMediaPlayerHelper;->isPrepared()Z

    move-result v0

    if-nez v0, :cond_2

    .line 227
    :try_start_0
    iget-object v0, p0, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity;->mRetainedFragment:Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity$RetainedFragment;

    iget-object v0, v0, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity$RetainedFragment;->mMediaPlayerHelper:Lcom/oculus/horizon/media/SurfaceMediaPlayerHelper;

    iget-object v1, p0, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity;->mMedia:Lcom/oculus/horizon/feed/model/Media;

    invoke-virtual {v1}, Lcom/oculus/horizon/feed/model/Media;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/media/SurfaceMediaPlayerHelper;->prepare(Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_3

    .line 241
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity;->mMediaController:Lcom/oculus/horizon/widget/OculusMediaController;

    iget-boolean v1, p0, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity;->mIsCompleted:Z

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/widget/OculusMediaController;->setCompletion(Z)V

    .line 242
    iget-boolean v0, p0, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity;->mShouldStartPlaying:Z

    if-eqz v0, :cond_3

    .line 243
    invoke-virtual {p0}, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity;->hideOverlay()V

    goto :goto_0

    .line 228
    :catch_0
    move-exception v0

    .line 232
    :goto_2
    iget-object v0, p0, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity;->mRetainedFragment:Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity$RetainedFragment;

    iget-object v0, v0, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity$RetainedFragment;->mMediaPlayerHelper:Lcom/oculus/horizon/media/SurfaceMediaPlayerHelper;

    invoke-virtual {v0}, Lcom/oculus/horizon/media/SurfaceMediaPlayerHelper;->destroy()V

    .line 233
    iget-object v0, p0, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity;->mRetainedFragment:Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity$RetainedFragment;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity$RetainedFragment;->mMediaPlayerHelper:Lcom/oculus/horizon/media/SurfaceMediaPlayerHelper;

    goto :goto_1

    .line 235
    :cond_2
    iget-object v0, p0, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity;->mRetainedFragment:Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity$RetainedFragment;

    iget-object v0, v0, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity$RetainedFragment;->mMediaPlayerHelper:Lcom/oculus/horizon/media/SurfaceMediaPlayerHelper;

    invoke-virtual {v0}, Lcom/oculus/horizon/media/SurfaceMediaPlayerHelper;->isPrepared()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 236
    iget-boolean v0, p0, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity;->mShouldStartPlaying:Z

    if-eqz v0, :cond_1

    .line 237
    iget-object v0, p0, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity;->mRetainedFragment:Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity$RetainedFragment;

    iget-object v0, v0, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity$RetainedFragment;->mMediaPlayerHelper:Lcom/oculus/horizon/media/SurfaceMediaPlayerHelper;

    invoke-virtual {v0}, Lcom/oculus/horizon/media/SurfaceMediaPlayerHelper;->play()V

    goto :goto_1

    .line 245
    :cond_3
    invoke-virtual {p0, v2}, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity;->showOverlay(I)V

    .line 246
    iget-object v0, p0, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity;->mMediaController:Lcom/oculus/horizon/widget/OculusMediaController;

    invoke-virtual {v0, v2}, Lcom/oculus/horizon/widget/OculusMediaController;->updatePausePlay(Z)V

    goto :goto_0

    .line 228
    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    goto :goto_2

    :catch_3
    move-exception v0

    goto :goto_2
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 267
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 269
    iget-object v0, p0, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity;->mRetainedFragment:Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity$RetainedFragment;

    iget-object v0, v0, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity$RetainedFragment;->mMediaPlayerHelper:Lcom/oculus/horizon/media/SurfaceMediaPlayerHelper;

    if-eqz v0, :cond_0

    .line 270
    const-string v0, "state_position"

    iget-object v1, p0, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity;->mRetainedFragment:Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity$RetainedFragment;

    iget-object v1, v1, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity$RetainedFragment;->mMediaPlayerHelper:Lcom/oculus/horizon/media/SurfaceMediaPlayerHelper;

    invoke-virtual {v1}, Lcom/oculus/horizon/media/SurfaceMediaPlayerHelper;->getCurrentPosition()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 271
    const-string v0, "state_play_pause"

    iget-boolean v1, p0, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity;->mWasPlaying:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 272
    const-string v0, "state_completed"

    iget-boolean v1, p0, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity;->mIsCompleted:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 274
    :cond_0
    return-void
.end method

.method public onSeekProgressChanged(Landroid/widget/SeekBar;I)V
    .locals 8
    .param p1    # Landroid/widget/SeekBar;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 383
    iget-object v0, p0, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity;->mRetainedFragment:Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity$RetainedFragment;

    iget-object v0, v0, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity$RetainedFragment;->mMediaPlayerHelper:Lcom/oculus/horizon/media/SurfaceMediaPlayerHelper;

    if-nez v0, :cond_0

    .line 393
    :goto_0
    return-void

    .line 386
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity;->mRetainedFragment:Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity$RetainedFragment;

    iget-object v0, v0, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity$RetainedFragment;->mMediaPlayerHelper:Lcom/oculus/horizon/media/SurfaceMediaPlayerHelper;

    invoke-virtual {v0}, Lcom/oculus/horizon/media/SurfaceMediaPlayerHelper;->getDuration()I

    move-result v0

    int-to-long v2, v0

    .line 387
    int-to-long v0, p2

    mul-long/2addr v0, v2

    const-wide/16 v4, 0x3e8

    div-long v4, v0, v4

    .line 388
    iget-object v0, p0, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity;->mRetainedFragment:Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity$RetainedFragment;

    iget-object v0, v0, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity$RetainedFragment;->mMediaPlayerHelper:Lcom/oculus/horizon/media/SurfaceMediaPlayerHelper;

    long-to-int v1, v4

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/media/SurfaceMediaPlayerHelper;->seekTo(I)V

    .line 389
    iget-object v1, p0, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity;->mMediaController:Lcom/oculus/horizon/widget/OculusMediaController;

    long-to-int v6, v4

    long-to-int v7, v2

    iget-object v0, p0, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity;->mLocaleProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Locale;

    invoke-virtual {v1, v6, v7, v0}, Lcom/oculus/horizon/widget/OculusMediaController;->setProgress(IILjava/util/Locale;)I

    .line 390
    iget-object v0, p0, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity;->mMediaController:Lcom/oculus/horizon/widget/OculusMediaController;

    iget-object v1, p0, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity;->mRetainedFragment:Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity$RetainedFragment;

    iget-object v1, v1, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity$RetainedFragment;->mMediaPlayerHelper:Lcom/oculus/horizon/media/SurfaceMediaPlayerHelper;

    invoke-virtual {v1}, Lcom/oculus/horizon/media/SurfaceMediaPlayerHelper;->isPlaying()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/widget/OculusMediaController;->updatePausePlay(Z)V

    .line 391
    cmp-long v0, v4, v2

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity;->mIsCompleted:Z

    .line 392
    iget-object v0, p0, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity;->mMediaController:Lcom/oculus/horizon/widget/OculusMediaController;

    iget-boolean v1, p0, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity;->mIsCompleted:Z

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/widget/OculusMediaController;->setCompletion(Z)V

    goto :goto_0

    .line 391
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public onStartSeeking(Landroid/widget/SeekBar;)V
    .locals 2
    .param p1    # Landroid/widget/SeekBar;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x1

    .line 370
    iput-boolean v1, p0, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity;->mIsDragging:Z

    .line 371
    iget-object v0, p0, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 372
    iget-object v0, p0, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 373
    return-void
.end method

.method public onStopSeeking(Landroid/widget/SeekBar;)V
    .locals 1

    .prologue
    .line 377
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity;->mIsDragging:Z

    .line 378
    const/16 v0, 0xbb8

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity;->showOverlay(I)V

    .line 379
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 286
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 307
    :cond_0
    :goto_0
    :pswitch_0
    const/4 v0, 0x1

    return v0

    .line 288
    :pswitch_1
    iget-boolean v0, p0, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity;->mIsShowingOverlay:Z

    if-nez v0, :cond_1

    .line 289
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity;->showOverlay(I)V

    goto :goto_0

    .line 291
    :cond_1
    invoke-virtual {p0}, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity;->hideOverlay()V

    goto :goto_0

    .line 295
    :pswitch_2
    iget-boolean v0, p0, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity;->mIsShowingOverlay:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity;->mRetainedFragment:Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity$RetainedFragment;

    iget-object v0, v0, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity$RetainedFragment;->mMediaPlayerHelper:Lcom/oculus/horizon/media/SurfaceMediaPlayerHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity;->mRetainedFragment:Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity$RetainedFragment;

    iget-object v0, v0, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity$RetainedFragment;->mMediaPlayerHelper:Lcom/oculus/horizon/media/SurfaceMediaPlayerHelper;

    .line 297
    invoke-virtual {v0}, Lcom/oculus/horizon/media/SurfaceMediaPlayerHelper;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 298
    const/16 v0, 0xbb8

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity;->showOverlay(I)V

    goto :goto_0

    .line 302
    :pswitch_3
    invoke-virtual {p0}, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity;->hideOverlay()V

    goto :goto_0

    .line 286
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public replay()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 397
    iget-object v0, p0, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity;->mRetainedFragment:Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity$RetainedFragment;

    iget-object v0, v0, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity$RetainedFragment;->mMediaPlayerHelper:Lcom/oculus/horizon/media/SurfaceMediaPlayerHelper;

    if-nez v0, :cond_0

    .line 405
    :goto_0
    return-void

    .line 400
    :cond_0
    iput-boolean v1, p0, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity;->mIsCompleted:Z

    .line 401
    iget-object v0, p0, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity;->mMediaController:Lcom/oculus/horizon/widget/OculusMediaController;

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/widget/OculusMediaController;->setCompletion(Z)V

    .line 402
    iget-object v0, p0, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity;->mRetainedFragment:Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity$RetainedFragment;

    iget-object v0, v0, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity$RetainedFragment;->mMediaPlayerHelper:Lcom/oculus/horizon/media/SurfaceMediaPlayerHelper;

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/media/SurfaceMediaPlayerHelper;->seekTo(I)V

    .line 403
    iget-object v0, p0, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity;->mRetainedFragment:Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity$RetainedFragment;

    iget-object v0, v0, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity$RetainedFragment;->mMediaPlayerHelper:Lcom/oculus/horizon/media/SurfaceMediaPlayerHelper;

    invoke-virtual {v0}, Lcom/oculus/horizon/media/SurfaceMediaPlayerHelper;->play()V

    .line 404
    invoke-virtual {p0}, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity;->hideOverlay()V

    goto :goto_0
.end method

.method public showOverlay()V
    .locals 1

    .prologue
    .line 408
    const/16 v0, 0xbb8

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity;->showOverlay(I)V

    .line 409
    return-void
.end method

.method public showOverlay(I)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 412
    iget-boolean v0, p0, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity;->mIsShowingOverlay:Z

    if-nez v0, :cond_0

    .line 413
    iget-object v3, p0, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity;->mMediaController:Lcom/oculus/horizon/widget/OculusMediaController;

    iget-object v0, p0, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity;->mRetainedFragment:Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity$RetainedFragment;

    iget-object v0, v0, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity$RetainedFragment;->mMediaPlayerHelper:Lcom/oculus/horizon/media/SurfaceMediaPlayerHelper;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity;->mRetainedFragment:Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity$RetainedFragment;

    iget-object v0, v0, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity$RetainedFragment;->mMediaPlayerHelper:Lcom/oculus/horizon/media/SurfaceMediaPlayerHelper;

    .line 415
    invoke-virtual {v0}, Lcom/oculus/horizon/media/SurfaceMediaPlayerHelper;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    .line 413
    :goto_0
    invoke-virtual {v3, v0}, Lcom/oculus/horizon/widget/OculusMediaController;->updatePausePlay(Z)V

    .line 416
    invoke-direct {p0}, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity;->updateProgress()I

    .line 417
    iget-object v0, p0, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity;->mStoryHeader:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 418
    iget-object v0, p0, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity;->mMediaController:Lcom/oculus/horizon/widget/OculusMediaController;

    invoke-virtual {v0, v2}, Lcom/oculus/horizon/widget/OculusMediaController;->setVisibility(I)V

    .line 419
    iput-boolean v1, p0, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity;->mIsShowingOverlay:Z

    .line 422
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 423
    iget-object v0, p0, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 425
    if-lez p1, :cond_1

    .line 426
    iget-object v0, p0, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 427
    iget-object v1, p0, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity;->mHandler:Landroid/os/Handler;

    int-to-long v2, p1

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 429
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 415
    goto :goto_0
.end method

.method public togglePausePlay(Landroid/view/View;)V
    .locals 3
    .param p1    # Landroid/view/View;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 351
    iget-object v0, p0, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity;->mRetainedFragment:Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity$RetainedFragment;

    iget-object v0, v0, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity$RetainedFragment;->mMediaPlayerHelper:Lcom/oculus/horizon/media/SurfaceMediaPlayerHelper;

    if-nez v0, :cond_0

    .line 366
    :goto_0
    return-void

    .line 355
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity;->mRetainedFragment:Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity$RetainedFragment;

    iget-object v0, v0, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity$RetainedFragment;->mMediaPlayerHelper:Lcom/oculus/horizon/media/SurfaceMediaPlayerHelper;

    invoke-virtual {v0}, Lcom/oculus/horizon/media/SurfaceMediaPlayerHelper;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_1

    .line 356
    iget-object v0, p0, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity;->mRetainedFragment:Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity$RetainedFragment;

    iget-object v0, v0, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity$RetainedFragment;->mMediaPlayerHelper:Lcom/oculus/horizon/media/SurfaceMediaPlayerHelper;

    invoke-virtual {v0}, Lcom/oculus/horizon/media/SurfaceMediaPlayerHelper;->play()V

    .line 357
    iget-object v0, p0, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity;->mMediaController:Lcom/oculus/horizon/widget/OculusMediaController;

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/widget/OculusMediaController;->updatePausePlay(Z)V

    .line 358
    iget-object v0, p0, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 359
    invoke-virtual {p0}, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity;->hideOverlay()V

    goto :goto_0

    .line 361
    :cond_1
    iget-object v0, p0, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity;->mRetainedFragment:Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity$RetainedFragment;

    iget-object v0, v0, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity$RetainedFragment;->mMediaPlayerHelper:Lcom/oculus/horizon/media/SurfaceMediaPlayerHelper;

    invoke-virtual {v0}, Lcom/oculus/horizon/media/SurfaceMediaPlayerHelper;->pause()V

    .line 362
    iget-object v0, p0, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity;->mMediaController:Lcom/oculus/horizon/widget/OculusMediaController;

    invoke-virtual {v0, v2}, Lcom/oculus/horizon/widget/OculusMediaController;->updatePausePlay(Z)V

    .line 363
    iget-object v0, p0, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 364
    invoke-virtual {p0, v2}, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity;->showOverlay(I)V

    goto :goto_0
.end method
