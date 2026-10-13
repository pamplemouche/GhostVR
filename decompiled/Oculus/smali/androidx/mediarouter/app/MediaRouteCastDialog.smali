.class public Landroidx/mediarouter/app/MediaRouteCastDialog;
.super Landroidx/appcompat/app/AppCompatDialog;
.source "MediaRouteCastDialog.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/mediarouter/app/MediaRouteCastDialog$RouteComparator;,
        Landroidx/mediarouter/app/MediaRouteCastDialog$FetchArtTask;,
        Landroidx/mediarouter/app/MediaRouteCastDialog$MediaControllerCallback;,
        Landroidx/mediarouter/app/MediaRouteCastDialog$MediaRouterCallback;,
        Landroidx/mediarouter/app/MediaRouteCastDialog$RecyclerAdapter;,
        Landroidx/mediarouter/app/MediaRouteCastDialog$MediaRouteVolumeSliderHolder;,
        Landroidx/mediarouter/app/MediaRouteCastDialog$VolumeChangeListener;
    }
.end annotation


# static fields
.field static final DEBUG:Z


# instance fields
.field mAdapter:Landroidx/mediarouter/app/MediaRouteCastDialog$RecyclerAdapter;

.field mArtIconBackgroundColor:I

.field mArtIconBitmap:Landroid/graphics/Bitmap;

.field mArtIconIsLoaded:Z

.field mArtIconLoadedBitmap:Landroid/graphics/Bitmap;

.field mArtIconUri:Landroid/net/Uri;

.field private mArtView:Landroid/widget/ImageView;

.field private mAttachedToWindow:Z

.field mBeforeMuteVolumeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mCallback:Landroidx/mediarouter/app/MediaRouteCastDialog$MediaRouterCallback;

.field private mCloseButton:Landroid/widget/ImageButton;

.field mContext:Landroid/content/Context;

.field mControllerCallback:Landroidx/mediarouter/app/MediaRouteCastDialog$MediaControllerCallback;

.field private mCreated:Z

.field mDescription:Landroid/support/v4/media/MediaDescriptionCompat;

.field mFetchArtTask:Landroidx/mediarouter/app/MediaRouteCastDialog$FetchArtTask;

.field final mGroupableRoutes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroidx/mediarouter/media/MediaRouter$RouteInfo;",
            ">;"
        }
    .end annotation
.end field

.field final mHandler:Landroid/os/Handler;

.field mIsAnimatingVolumeSliderLayout:Z

.field mIsSelectingRoute:Z

.field private mLastUpdateTime:J

.field mMediaController:Landroid/support/v4/media/session/MediaControllerCompat;

.field final mMemberRoutes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroidx/mediarouter/media/MediaRouter$RouteInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mMetadataBackground:Landroid/widget/ImageView;

.field private mMetadataBlackScrim:Landroid/view/View;

.field private mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field mRouteForVolumeUpdatingByUser:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

.field final mRouter:Landroidx/mediarouter/media/MediaRouter;

.field mSelectedRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

.field private mSelector:Landroidx/mediarouter/media/MediaRouteSelector;

.field private mStopCastingButton:Landroid/widget/Button;

.field private mSubtitleView:Landroid/widget/TextView;

.field private mTitlePlaceholder:Ljava/lang/String;

.field private mTitleView:Landroid/widget/TextView;

.field final mTransferableRoutes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroidx/mediarouter/media/MediaRouter$RouteInfo;",
            ">;"
        }
    .end annotation
.end field

.field final mUngroupableRoutes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroidx/mediarouter/media/MediaRouter$RouteInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mUpdateMetadataViewsDeferred:Z

.field private mUpdateRoutesViewDeferred:Z

.field mVolumeChangeListener:Landroidx/mediarouter/app/MediaRouteCastDialog$VolumeChangeListener;

.field mVolumeSliderColor:I

.field mVolumeSliderHolderMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroidx/mediarouter/app/MediaRouteCastDialog$MediaRouteVolumeSliderHolder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 103
    const-string v0, "MediaRouteCastDialog"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroidx/mediarouter/app/MediaRouteCastDialog;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 197
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/mediarouter/app/MediaRouteCastDialog;-><init>(Landroid/content/Context;I)V

    .line 198
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2

    .prologue
    .line 201
    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroidx/mediarouter/app/MediaRouterThemeHelper;->createThemedDialogContext(Landroid/content/Context;IZ)Landroid/content/Context;

    move-result-object v0

    .line 202
    invoke-static {v0}, Landroidx/mediarouter/app/MediaRouterThemeHelper;->createThemedDialogStyle(Landroid/content/Context;)I

    move-result v1

    .line 201
    invoke-direct {p0, v0, v1}, Landroidx/appcompat/app/AppCompatDialog;-><init>(Landroid/content/Context;I)V

    .line 123
    sget-object v0, Landroidx/mediarouter/media/MediaRouteSelector;->EMPTY:Landroidx/mediarouter/media/MediaRouteSelector;

    iput-object v0, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mSelector:Landroidx/mediarouter/media/MediaRouteSelector;

    .line 125
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mMemberRoutes:Ljava/util/List;

    .line 126
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mGroupableRoutes:Ljava/util/List;

    .line 127
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mTransferableRoutes:Ljava/util/List;

    .line 130
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mUngroupableRoutes:Ljava/util/List;

    .line 136
    new-instance v0, Landroidx/mediarouter/app/MediaRouteCastDialog$1;

    invoke-direct {v0, p0}, Landroidx/mediarouter/app/MediaRouteCastDialog$1;-><init>(Landroidx/mediarouter/app/MediaRouteCastDialog;)V

    iput-object v0, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mHandler:Landroid/os/Handler;

    .line 203
    invoke-virtual {p0}, Landroidx/mediarouter/app/MediaRouteCastDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mContext:Landroid/content/Context;

    .line 205
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroidx/mediarouter/media/MediaRouter;->getInstance(Landroid/content/Context;)Landroidx/mediarouter/media/MediaRouter;

    move-result-object v0

    iput-object v0, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mRouter:Landroidx/mediarouter/media/MediaRouter;

    .line 206
    new-instance v0, Landroidx/mediarouter/app/MediaRouteCastDialog$MediaRouterCallback;

    invoke-direct {v0, p0}, Landroidx/mediarouter/app/MediaRouteCastDialog$MediaRouterCallback;-><init>(Landroidx/mediarouter/app/MediaRouteCastDialog;)V

    iput-object v0, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mCallback:Landroidx/mediarouter/app/MediaRouteCastDialog$MediaRouterCallback;

    .line 207
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mRouter:Landroidx/mediarouter/media/MediaRouter;

    invoke-virtual {v0}, Landroidx/mediarouter/media/MediaRouter;->getSelectedRoute()Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    move-result-object v0

    iput-object v0, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mSelectedRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 208
    new-instance v0, Landroidx/mediarouter/app/MediaRouteCastDialog$MediaControllerCallback;

    invoke-direct {v0, p0}, Landroidx/mediarouter/app/MediaRouteCastDialog$MediaControllerCallback;-><init>(Landroidx/mediarouter/app/MediaRouteCastDialog;)V

    iput-object v0, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mControllerCallback:Landroidx/mediarouter/app/MediaRouteCastDialog$MediaControllerCallback;

    .line 209
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mRouter:Landroidx/mediarouter/media/MediaRouter;

    invoke-virtual {v0}, Landroidx/mediarouter/media/MediaRouter;->getMediaSessionToken()Landroid/support/v4/media/session/MediaSessionCompat$Token;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/mediarouter/app/MediaRouteCastDialog;->setMediaSession(Landroid/support/v4/media/session/MediaSessionCompat$Token;)V

    .line 210
    return-void
.end method

.method private static blurBitmap(Landroid/graphics/Bitmap;FLandroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 4
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x11
    .end annotation

    .prologue
    .line 670
    invoke-static {p2}, Landroid/renderscript/RenderScript;->create(Landroid/content/Context;)Landroid/renderscript/RenderScript;

    move-result-object v0

    .line 671
    invoke-static {v0, p0}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Allocation;

    move-result-object v1

    .line 672
    invoke-virtual {v1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;)Landroid/renderscript/Allocation;

    move-result-object v2

    .line 674
    invoke-static {v0}, Landroid/renderscript/Element;->U8_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/renderscript/ScriptIntrinsicBlur;->create(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsicBlur;

    move-result-object v3

    .line 675
    invoke-virtual {v3, p1}, Landroid/renderscript/ScriptIntrinsicBlur;->setRadius(F)V

    .line 676
    invoke-virtual {v3, v1}, Landroid/renderscript/ScriptIntrinsicBlur;->setInput(Landroid/renderscript/Allocation;)V

    .line 677
    invoke-virtual {v3, v2}, Landroid/renderscript/ScriptIntrinsicBlur;->forEach(Landroid/renderscript/Allocation;)V

    .line 678
    invoke-virtual {v2, p0}, Landroid/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V

    .line 680
    invoke-virtual {v1}, Landroid/renderscript/Allocation;->destroy()V

    .line 681
    invoke-virtual {v2}, Landroid/renderscript/Allocation;->destroy()V

    .line 682
    invoke-virtual {v3}, Landroid/renderscript/ScriptIntrinsicBlur;->destroy()V

    .line 683
    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->destroy()V

    .line 684
    return-object p0
.end method

.method static isBitmapRecycled(Landroid/graphics/Bitmap;)Z
    .locals 1

    .prologue
    .line 405
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isIconChanged()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 440
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mDescription:Landroid/support/v4/media/MediaDescriptionCompat;

    if-nez v0, :cond_0

    move-object v0, v1

    .line 441
    :goto_0
    iget-object v2, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mDescription:Landroid/support/v4/media/MediaDescriptionCompat;

    if-nez v2, :cond_1

    .line 442
    :goto_1
    iget-object v2, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mFetchArtTask:Landroidx/mediarouter/app/MediaRouteCastDialog$FetchArtTask;

    if-nez v2, :cond_2

    iget-object v2, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mArtIconBitmap:Landroid/graphics/Bitmap;

    .line 443
    :goto_2
    iget-object v4, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mFetchArtTask:Landroidx/mediarouter/app/MediaRouteCastDialog$FetchArtTask;

    if-nez v4, :cond_3

    iget-object v4, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mArtIconUri:Landroid/net/Uri;

    .line 444
    :goto_3
    if-eq v2, v0, :cond_4

    move v0, v3

    .line 449
    :goto_4
    return v0

    .line 440
    :cond_0
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mDescription:Landroid/support/v4/media/MediaDescriptionCompat;

    invoke-virtual {v0}, Landroid/support/v4/media/MediaDescriptionCompat;->getIconBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 441
    :cond_1
    iget-object v1, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mDescription:Landroid/support/v4/media/MediaDescriptionCompat;

    invoke-virtual {v1}, Landroid/support/v4/media/MediaDescriptionCompat;->getIconUri()Landroid/net/Uri;

    move-result-object v1

    goto :goto_1

    .line 442
    :cond_2
    iget-object v2, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mFetchArtTask:Landroidx/mediarouter/app/MediaRouteCastDialog$FetchArtTask;

    invoke-virtual {v2}, Landroidx/mediarouter/app/MediaRouteCastDialog$FetchArtTask;->getIconBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_2

    .line 443
    :cond_3
    iget-object v4, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mFetchArtTask:Landroidx/mediarouter/app/MediaRouteCastDialog$FetchArtTask;

    invoke-virtual {v4}, Landroidx/mediarouter/app/MediaRouteCastDialog$FetchArtTask;->getIconUri()Landroid/net/Uri;

    move-result-object v4

    goto :goto_3

    .line 446
    :cond_4
    if-nez v2, :cond_5

    invoke-static {v4, v1}, Landroidx/core/util/ObjectsCompat;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v3

    .line 447
    goto :goto_4

    .line 449
    :cond_5
    const/4 v0, 0x0

    goto :goto_4
.end method

.method static setLayoutHeight(Landroid/view/View;I)V
    .locals 1

    .prologue
    .line 540
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 541
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 542
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 543
    return-void
.end method

.method private setMediaSession(Landroid/support/v4/media/session/MediaSessionCompat$Token;)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 220
    iget-object v1, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mMediaController:Landroid/support/v4/media/session/MediaControllerCompat;

    if-eqz v1, :cond_0

    .line 221
    iget-object v1, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mMediaController:Landroid/support/v4/media/session/MediaControllerCompat;

    iget-object v2, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mControllerCallback:Landroidx/mediarouter/app/MediaRouteCastDialog$MediaControllerCallback;

    invoke-virtual {v1, v2}, Landroid/support/v4/media/session/MediaControllerCompat;->unregisterCallback(Landroid/support/v4/media/session/MediaControllerCompat$Callback;)V

    .line 222
    iput-object v0, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mMediaController:Landroid/support/v4/media/session/MediaControllerCompat;

    .line 224
    :cond_0
    if-nez p1, :cond_2

    .line 243
    :cond_1
    :goto_0
    return-void

    .line 227
    :cond_2
    iget-boolean v1, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mAttachedToWindow:Z

    if-eqz v1, :cond_1

    .line 231
    :try_start_0
    new-instance v1, Landroid/support/v4/media/session/MediaControllerCompat;

    iget-object v2, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, p1}, Landroid/support/v4/media/session/MediaControllerCompat;-><init>(Landroid/content/Context;Landroid/support/v4/media/session/MediaSessionCompat$Token;)V

    iput-object v1, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mMediaController:Landroid/support/v4/media/session/MediaControllerCompat;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 235
    :goto_1
    iget-object v1, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mMediaController:Landroid/support/v4/media/session/MediaControllerCompat;

    if-eqz v1, :cond_3

    .line 236
    iget-object v1, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mMediaController:Landroid/support/v4/media/session/MediaControllerCompat;

    iget-object v2, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mControllerCallback:Landroidx/mediarouter/app/MediaRouteCastDialog$MediaControllerCallback;

    invoke-virtual {v1, v2}, Landroid/support/v4/media/session/MediaControllerCompat;->registerCallback(Landroid/support/v4/media/session/MediaControllerCompat$Callback;)V

    .line 238
    :cond_3
    iget-object v1, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mMediaController:Landroid/support/v4/media/session/MediaControllerCompat;

    if-nez v1, :cond_4

    move-object v1, v0

    .line 240
    :goto_2
    if-nez v1, :cond_5

    :goto_3
    iput-object v0, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mDescription:Landroid/support/v4/media/MediaDescriptionCompat;

    .line 241
    invoke-virtual {p0}, Landroidx/mediarouter/app/MediaRouteCastDialog;->updateArtIconIfNeeded()V

    .line 242
    invoke-virtual {p0}, Landroidx/mediarouter/app/MediaRouteCastDialog;->updateMetadataViews()V

    goto :goto_0

    .line 232
    :catch_0
    move-exception v1

    .line 233
    const-string v2, "MediaRouteCastDialog"

    const-string v3, "Error creating media controller in setMediaSession."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 238
    :cond_4
    iget-object v1, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mMediaController:Landroid/support/v4/media/session/MediaControllerCompat;

    .line 239
    invoke-virtual {v1}, Landroid/support/v4/media/session/MediaControllerCompat;->getMetadata()Landroid/support/v4/media/MediaMetadataCompat;

    move-result-object v1

    goto :goto_2

    .line 240
    :cond_5
    invoke-virtual {v1}, Landroid/support/v4/media/MediaMetadataCompat;->getDescription()Landroid/support/v4/media/MediaDescriptionCompat;

    move-result-object v0

    goto :goto_3
.end method

.method private shouldDeferUpdateViews()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 460
    iget-object v1, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mRouteForVolumeUpdatingByUser:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    if-nez v1, :cond_0

    iget-boolean v1, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mIsSelectingRoute:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mIsAnimatingVolumeSliderLayout:Z

    if-eqz v1, :cond_1

    .line 468
    :cond_0
    :goto_0
    return v0

    .line 465
    :cond_1
    iget-boolean v1, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mCreated:Z

    if-eqz v1, :cond_0

    .line 468
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method clearLoadedBitmap()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 429
    iput-boolean v1, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mArtIconIsLoaded:Z

    .line 430
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mArtIconLoadedBitmap:Landroid/graphics/Bitmap;

    .line 431
    iput v1, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mArtIconBackgroundColor:I

    .line 432
    return-void
.end method

.method getDesiredArtHeight(II)I
    .locals 1

    .prologue
    .line 410
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mArtView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getHeight()I

    move-result v0

    return v0
.end method

.method getGroupableRoutes()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroidx/mediarouter/media/MediaRouter$RouteInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 599
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 600
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mSelectedRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    instance-of v0, v0, Landroidx/mediarouter/media/MediaRouter$DynamicGroupInfo;

    if-eqz v0, :cond_0

    .line 601
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mSelectedRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    check-cast v0, Landroidx/mediarouter/media/MediaRouter$DynamicGroupInfo;

    .line 602
    invoke-virtual {v0}, Landroidx/mediarouter/media/MediaRouter$DynamicGroupInfo;->getGroupableRoutes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 604
    :cond_0
    return-object v1
.end method

.method getMemberRoutes()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroidx/mediarouter/media/MediaRouter$RouteInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 585
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 586
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mSelectedRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    instance-of v0, v0, Landroidx/mediarouter/media/MediaRouter$DynamicGroupInfo;

    if-eqz v0, :cond_1

    .line 587
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mSelectedRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    check-cast v0, Landroidx/mediarouter/media/MediaRouter$DynamicGroupInfo;

    invoke-virtual {v0}, Landroidx/mediarouter/media/MediaRouter$DynamicGroupInfo;->getMemberRoutes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 591
    :cond_0
    :goto_0
    return-object v1

    .line 588
    :cond_1
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mSelectedRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    instance-of v0, v0, Landroidx/mediarouter/media/MediaRouter$RouteGroup;

    if-eqz v0, :cond_0

    .line 589
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mSelectedRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    check-cast v0, Landroidx/mediarouter/media/MediaRouter$RouteGroup;

    invoke-virtual {v0}, Landroidx/mediarouter/media/MediaRouter$RouteGroup;->getMemberRoutes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method getTransferableRoutes()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroidx/mediarouter/media/MediaRouter$RouteInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 611
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 612
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mSelectedRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    instance-of v0, v0, Landroidx/mediarouter/media/MediaRouter$DynamicGroupInfo;

    if-eqz v0, :cond_0

    .line 613
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mSelectedRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    check-cast v0, Landroidx/mediarouter/media/MediaRouter$DynamicGroupInfo;

    .line 614
    invoke-virtual {v0}, Landroidx/mediarouter/media/MediaRouter$DynamicGroupInfo;->getTransferableRoutes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 618
    :goto_0
    return-object v1

    .line 616
    :cond_0
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mSelectedRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    invoke-virtual {v0}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->getProvider()Landroidx/mediarouter/media/MediaRouter$ProviderInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/mediarouter/media/MediaRouter$ProviderInfo;->getRoutes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method public onAttachedToWindow()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 385
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatDialog;->onAttachedToWindow()V

    .line 386
    iput-boolean v3, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mAttachedToWindow:Z

    .line 388
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mRouter:Landroidx/mediarouter/media/MediaRouter;

    iget-object v1, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mSelector:Landroidx/mediarouter/media/MediaRouteSelector;

    iget-object v2, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mCallback:Landroidx/mediarouter/app/MediaRouteCastDialog$MediaRouterCallback;

    invoke-virtual {v0, v1, v2, v3}, Landroidx/mediarouter/media/MediaRouter;->addCallback(Landroidx/mediarouter/media/MediaRouteSelector;Landroidx/mediarouter/media/MediaRouter$Callback;I)V

    .line 389
    invoke-virtual {p0}, Landroidx/mediarouter/app/MediaRouteCastDialog;->updateRoutes()V

    .line 390
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mRouter:Landroidx/mediarouter/media/MediaRouter;

    invoke-virtual {v0}, Landroidx/mediarouter/media/MediaRouter;->getMediaSessionToken()Landroid/support/v4/media/session/MediaSessionCompat$Token;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/mediarouter/app/MediaRouteCastDialog;->setMediaSession(Landroid/support/v4/media/session/MediaSessionCompat$Token;)V

    .line 391
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 320
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatDialog;->onCreate(Landroid/os/Bundle;)V

    .line 322
    sget v0, Landroidx/mediarouter/R$layout;->mr_cast_dialog:I

    invoke-virtual {p0, v0}, Landroidx/mediarouter/app/MediaRouteCastDialog;->setContentView(I)V

    .line 323
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mContext:Landroid/content/Context;

    invoke-static {v0, p0}, Landroidx/mediarouter/app/MediaRouterThemeHelper;->setDialogBackgroundColor(Landroid/content/Context;Landroid/app/Dialog;)V

    .line 325
    sget v0, Landroidx/mediarouter/R$id;->mr_cast_close_button:I

    invoke-virtual {p0, v0}, Landroidx/mediarouter/app/MediaRouteCastDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mCloseButton:Landroid/widget/ImageButton;

    .line 326
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mCloseButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setColorFilter(I)V

    .line 327
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mCloseButton:Landroid/widget/ImageButton;

    new-instance v1, Landroidx/mediarouter/app/MediaRouteCastDialog$2;

    invoke-direct {v1, p0}, Landroidx/mediarouter/app/MediaRouteCastDialog$2;-><init>(Landroidx/mediarouter/app/MediaRouteCastDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 333
    sget v0, Landroidx/mediarouter/R$id;->mr_cast_stop_button:I

    invoke-virtual {p0, v0}, Landroidx/mediarouter/app/MediaRouteCastDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mStopCastingButton:Landroid/widget/Button;

    .line 334
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mStopCastingButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setTextColor(I)V

    .line 335
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mStopCastingButton:Landroid/widget/Button;

    new-instance v1, Landroidx/mediarouter/app/MediaRouteCastDialog$3;

    invoke-direct {v1, p0}, Landroidx/mediarouter/app/MediaRouteCastDialog$3;-><init>(Landroidx/mediarouter/app/MediaRouteCastDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 345
    new-instance v0, Landroidx/mediarouter/app/MediaRouteCastDialog$RecyclerAdapter;

    invoke-direct {v0, p0}, Landroidx/mediarouter/app/MediaRouteCastDialog$RecyclerAdapter;-><init>(Landroidx/mediarouter/app/MediaRouteCastDialog;)V

    iput-object v0, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mAdapter:Landroidx/mediarouter/app/MediaRouteCastDialog$RecyclerAdapter;

    .line 346
    sget v0, Landroidx/mediarouter/R$id;->mr_cast_list:I

    invoke-virtual {p0, v0}, Landroidx/mediarouter/app/MediaRouteCastDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 347
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mAdapter:Landroidx/mediarouter/app/MediaRouteCastDialog$RecyclerAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 348
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v2, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 349
    new-instance v0, Landroidx/mediarouter/app/MediaRouteCastDialog$VolumeChangeListener;

    invoke-direct {v0, p0}, Landroidx/mediarouter/app/MediaRouteCastDialog$VolumeChangeListener;-><init>(Landroidx/mediarouter/app/MediaRouteCastDialog;)V

    iput-object v0, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mVolumeChangeListener:Landroidx/mediarouter/app/MediaRouteCastDialog$VolumeChangeListener;

    .line 350
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroidx/mediarouter/app/MediaRouterThemeHelper;->getControllerColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mVolumeSliderColor:I

    .line 351
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mVolumeSliderHolderMap:Ljava/util/Map;

    .line 352
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mBeforeMuteVolumeMap:Ljava/util/Map;

    .line 354
    sget v0, Landroidx/mediarouter/R$id;->mr_cast_meta_background:I

    invoke-virtual {p0, v0}, Landroidx/mediarouter/app/MediaRouteCastDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mMetadataBackground:Landroid/widget/ImageView;

    .line 355
    sget v0, Landroidx/mediarouter/R$id;->mr_cast_meta_black_scrim:I

    invoke-virtual {p0, v0}, Landroidx/mediarouter/app/MediaRouteCastDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mMetadataBlackScrim:Landroid/view/View;

    .line 356
    sget v0, Landroidx/mediarouter/R$id;->mr_cast_meta_art:I

    invoke-virtual {p0, v0}, Landroidx/mediarouter/app/MediaRouteCastDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mArtView:Landroid/widget/ImageView;

    .line 357
    sget v0, Landroidx/mediarouter/R$id;->mr_cast_meta_title:I

    invoke-virtual {p0, v0}, Landroidx/mediarouter/app/MediaRouteCastDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mTitleView:Landroid/widget/TextView;

    .line 358
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 359
    sget v0, Landroidx/mediarouter/R$id;->mr_cast_meta_subtitle:I

    invoke-virtual {p0, v0}, Landroidx/mediarouter/app/MediaRouteCastDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mSubtitleView:Landroid/widget/TextView;

    .line 360
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mSubtitleView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 361
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 362
    sget v1, Landroidx/mediarouter/R$string;->mr_cast_dialog_title_view_placeholder:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mTitlePlaceholder:Ljava/lang/String;

    .line 364
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mCreated:Z

    .line 365
    invoke-virtual {p0}, Landroidx/mediarouter/app/MediaRouteCastDialog;->updateLayout()V

    .line 366
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 395
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatDialog;->onDetachedFromWindow()V

    .line 396
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mAttachedToWindow:Z

    .line 398
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mRouter:Landroidx/mediarouter/media/MediaRouter;

    iget-object v1, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mCallback:Landroidx/mediarouter/app/MediaRouteCastDialog$MediaRouterCallback;

    invoke-virtual {v0, v1}, Landroidx/mediarouter/media/MediaRouter;->removeCallback(Landroidx/mediarouter/media/MediaRouter$Callback;)V

    .line 399
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 400
    invoke-direct {p0, v2}, Landroidx/mediarouter/app/MediaRouteCastDialog;->setMediaSession(Landroid/support/v4/media/session/MediaSessionCompat$Token;)V

    .line 401
    return-void
.end method

.method public onFilterRoute(Landroidx/mediarouter/media/MediaRouter$RouteInfo;)Z
    .locals 1
    .param p1    # Landroidx/mediarouter/media/MediaRouter$RouteInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 314
    invoke-virtual {p1}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->isDefaultOrBluetooth()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mSelector:Landroidx/mediarouter/media/MediaRouteSelector;

    .line 315
    invoke-virtual {p1, v0}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->matchesSelector(Landroidx/mediarouter/media/MediaRouteSelector;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mSelectedRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    .line 314
    :goto_0
    return v0

    .line 315
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onFilterRoutes(Ljava/util/List;)V
    .locals 2
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroidx/mediarouter/media/MediaRouter$RouteInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 295
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    .line 296
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    invoke-virtual {p0, v0}, Landroidx/mediarouter/app/MediaRouteCastDialog;->onFilterRoute(Landroidx/mediarouter/media/MediaRouter$RouteInfo;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 297
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 295
    :cond_0
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 300
    :cond_1
    return-void
.end method

.method public setRouteSelector(Landroidx/mediarouter/media/MediaRouteSelector;)V
    .locals 3
    .param p1    # Landroidx/mediarouter/media/MediaRouteSelector;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 270
    if-nez p1, :cond_0

    .line 271
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "selector must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 274
    :cond_0
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mSelector:Landroidx/mediarouter/media/MediaRouteSelector;

    invoke-virtual {v0, p1}, Landroidx/mediarouter/media/MediaRouteSelector;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 275
    iput-object p1, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mSelector:Landroidx/mediarouter/media/MediaRouteSelector;

    .line 277
    iget-boolean v0, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mAttachedToWindow:Z

    if-eqz v0, :cond_1

    .line 278
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mRouter:Landroidx/mediarouter/media/MediaRouter;

    iget-object v1, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mCallback:Landroidx/mediarouter/app/MediaRouteCastDialog$MediaRouterCallback;

    invoke-virtual {v0, v1}, Landroidx/mediarouter/media/MediaRouter;->removeCallback(Landroidx/mediarouter/media/MediaRouter$Callback;)V

    .line 279
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mRouter:Landroidx/mediarouter/media/MediaRouter;

    iget-object v1, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mCallback:Landroidx/mediarouter/app/MediaRouteCastDialog$MediaRouterCallback;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Landroidx/mediarouter/media/MediaRouter;->addCallback(Landroidx/mediarouter/media/MediaRouteSelector;Landroidx/mediarouter/media/MediaRouter$Callback;I)V

    .line 281
    invoke-virtual {p0}, Landroidx/mediarouter/app/MediaRouteCastDialog;->updateRoutes()V

    .line 284
    :cond_1
    return-void
.end method

.method updateArtIconIfNeeded()V
    .locals 2

    .prologue
    .line 414
    invoke-direct {p0}, Landroidx/mediarouter/app/MediaRouteCastDialog;->isIconChanged()Z

    move-result v0

    if-nez v0, :cond_0

    .line 422
    :goto_0
    return-void

    .line 417
    :cond_0
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mFetchArtTask:Landroidx/mediarouter/app/MediaRouteCastDialog$FetchArtTask;

    if-eqz v0, :cond_1

    .line 418
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mFetchArtTask:Landroidx/mediarouter/app/MediaRouteCastDialog$FetchArtTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/mediarouter/app/MediaRouteCastDialog$FetchArtTask;->cancel(Z)Z

    .line 420
    :cond_1
    new-instance v0, Landroidx/mediarouter/app/MediaRouteCastDialog$FetchArtTask;

    invoke-direct {v0, p0}, Landroidx/mediarouter/app/MediaRouteCastDialog$FetchArtTask;-><init>(Landroidx/mediarouter/app/MediaRouteCastDialog;)V

    iput-object v0, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mFetchArtTask:Landroidx/mediarouter/app/MediaRouteCastDialog$FetchArtTask;

    .line 421
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mFetchArtTask:Landroidx/mediarouter/app/MediaRouteCastDialog$FetchArtTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroidx/mediarouter/app/MediaRouteCastDialog$FetchArtTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method updateLayout()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 372
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroidx/mediarouter/app/MediaRouteDialogHelper;->getDialogWidth(Landroid/content/Context;)I

    move-result v0

    .line 373
    iget-object v1, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroidx/mediarouter/app/MediaRouteDialogHelper;->getDialogHeight(Landroid/content/Context;)I

    move-result v1

    .line 374
    invoke-virtual {p0}, Landroidx/mediarouter/app/MediaRouteCastDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/view/Window;->setLayout(II)V

    .line 376
    iput-object v3, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mArtIconBitmap:Landroid/graphics/Bitmap;

    .line 377
    iput-object v3, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mArtIconUri:Landroid/net/Uri;

    .line 378
    invoke-virtual {p0}, Landroidx/mediarouter/app/MediaRouteCastDialog;->updateArtIconIfNeeded()V

    .line 379
    invoke-virtual {p0}, Landroidx/mediarouter/app/MediaRouteCastDialog;->updateMetadataViews()V

    .line 380
    invoke-virtual {p0}, Landroidx/mediarouter/app/MediaRouteCastDialog;->updateRoutesView()V

    .line 381
    return-void
.end method

.method updateMetadataViews()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/16 v6, 0x8

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 485
    invoke-direct {p0}, Landroidx/mediarouter/app/MediaRouteCastDialog;->shouldDeferUpdateViews()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 486
    iput-boolean v3, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mUpdateMetadataViewsDeferred:Z

    .line 537
    :goto_0
    return-void

    .line 489
    :cond_0
    iput-boolean v4, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mUpdateMetadataViewsDeferred:Z

    .line 491
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mSelectedRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    invoke-virtual {v0}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mSelectedRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    invoke-virtual {v0}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->isDefaultOrBluetooth()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 492
    :cond_1
    invoke-virtual {p0}, Landroidx/mediarouter/app/MediaRouteCastDialog;->dismiss()V

    .line 494
    :cond_2
    iget-boolean v0, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mArtIconIsLoaded:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mArtIconLoadedBitmap:Landroid/graphics/Bitmap;

    invoke-static {v0}, Landroidx/mediarouter/app/MediaRouteCastDialog;->isBitmapRecycled(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mArtIconLoadedBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_4

    .line 496
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mArtView:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 497
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mArtView:Landroid/widget/ImageView;

    iget-object v2, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mArtIconLoadedBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 498
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mArtView:Landroid/widget/ImageView;

    iget v2, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mArtIconBackgroundColor:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 503
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mMetadataBlackScrim:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 504
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v0, v2, :cond_3

    .line 505
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mArtIconLoadedBitmap:Landroid/graphics/Bitmap;

    const/high16 v2, 0x41200000    # 10.0f

    iget-object v5, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mContext:Landroid/content/Context;

    invoke-static {v0, v2, v5}, Landroidx/mediarouter/app/MediaRouteCastDialog;->blurBitmap(Landroid/graphics/Bitmap;FLandroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 506
    iget-object v2, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mMetadataBackground:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 518
    :goto_1
    invoke-virtual {p0}, Landroidx/mediarouter/app/MediaRouteCastDialog;->clearLoadedBitmap()V

    .line 520
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mDescription:Landroid/support/v4/media/MediaDescriptionCompat;

    if-nez v0, :cond_6

    move-object v0, v1

    .line 521
    :goto_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    move v2, v3

    .line 523
    :goto_3
    iget-object v5, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mDescription:Landroid/support/v4/media/MediaDescriptionCompat;

    if-nez v5, :cond_8

    .line 524
    :goto_4
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_9

    .line 526
    :goto_5
    if-eqz v2, :cond_a

    .line 527
    iget-object v2, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 531
    :goto_6
    if-eqz v3, :cond_b

    .line 532
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mSubtitleView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 533
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mSubtitleView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 508
    :cond_3
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mMetadataBackground:Landroid/widget/ImageView;

    iget-object v2, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mArtIconLoadedBitmap:Landroid/graphics/Bitmap;

    invoke-static {v2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 511
    :cond_4
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mArtIconLoadedBitmap:Landroid/graphics/Bitmap;

    invoke-static {v0}, Landroidx/mediarouter/app/MediaRouteCastDialog;->isBitmapRecycled(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 512
    const-string v0, "MediaRouteCastDialog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t set artwork image with recycled bitmap: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mArtIconLoadedBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    :cond_5
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mArtView:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 515
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mMetadataBlackScrim:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 516
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mMetadataBackground:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 520
    :cond_6
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mDescription:Landroid/support/v4/media/MediaDescriptionCompat;

    invoke-virtual {v0}, Landroid/support/v4/media/MediaDescriptionCompat;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_2

    :cond_7
    move v2, v4

    .line 521
    goto :goto_3

    .line 523
    :cond_8
    iget-object v1, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mDescription:Landroid/support/v4/media/MediaDescriptionCompat;

    invoke-virtual {v1}, Landroid/support/v4/media/MediaDescriptionCompat;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_4

    :cond_9
    move v3, v4

    .line 524
    goto :goto_5

    .line 529
    :cond_a
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mTitleView:Landroid/widget/TextView;

    iget-object v2, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mTitlePlaceholder:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6

    .line 535
    :cond_b
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mSubtitleView:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method updateRoutes()V
    .locals 2

    .prologue
    .line 648
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mMemberRoutes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 649
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mGroupableRoutes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 650
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mTransferableRoutes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 652
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mMemberRoutes:Ljava/util/List;

    invoke-virtual {p0}, Landroidx/mediarouter/app/MediaRouteCastDialog;->getMemberRoutes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 653
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mGroupableRoutes:Ljava/util/List;

    invoke-virtual {p0}, Landroidx/mediarouter/app/MediaRouteCastDialog;->getGroupableRoutes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 654
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mTransferableRoutes:Ljava/util/List;

    invoke-virtual {p0}, Landroidx/mediarouter/app/MediaRouteCastDialog;->getTransferableRoutes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 657
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mMemberRoutes:Ljava/util/List;

    sget-object v1, Landroidx/mediarouter/app/MediaRouteCastDialog$RouteComparator;->sInstance:Landroidx/mediarouter/app/MediaRouteCastDialog$RouteComparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 658
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mGroupableRoutes:Ljava/util/List;

    sget-object v1, Landroidx/mediarouter/app/MediaRouteCastDialog$RouteComparator;->sInstance:Landroidx/mediarouter/app/MediaRouteCastDialog$RouteComparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 659
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mTransferableRoutes:Ljava/util/List;

    sget-object v1, Landroidx/mediarouter/app/MediaRouteCastDialog$RouteComparator;->sInstance:Landroidx/mediarouter/app/MediaRouteCastDialog$RouteComparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 662
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mGroupableRoutes:Ljava/util/List;

    invoke-virtual {p0, v0}, Landroidx/mediarouter/app/MediaRouteCastDialog;->onFilterRoutes(Ljava/util/List;)V

    .line 663
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mTransferableRoutes:Ljava/util/List;

    invoke-virtual {p0, v0}, Landroidx/mediarouter/app/MediaRouteCastDialog;->onFilterRoutes(Ljava/util/List;)V

    .line 665
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mAdapter:Landroidx/mediarouter/app/MediaRouteCastDialog$RecyclerAdapter;

    invoke-virtual {v0}, Landroidx/mediarouter/app/MediaRouteCastDialog$RecyclerAdapter;->setItems()V

    .line 666
    return-void
.end method

.method updateRoutesView()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x12c

    const/4 v4, 0x1

    .line 626
    iget-boolean v0, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mAttachedToWindow:Z

    if-eqz v0, :cond_0

    .line 627
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mLastUpdateTime:J

    sub-long/2addr v0, v2

    cmp-long v0, v0, v6

    if-ltz v0, :cond_4

    .line 628
    invoke-direct {p0}, Landroidx/mediarouter/app/MediaRouteCastDialog;->shouldDeferUpdateViews()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 629
    iput-boolean v4, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mUpdateRoutesViewDeferred:Z

    .line 645
    :cond_0
    :goto_0
    return-void

    .line 632
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mUpdateRoutesViewDeferred:Z

    .line 634
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mSelectedRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    invoke-virtual {v0}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mSelectedRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    invoke-virtual {v0}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->isDefaultOrBluetooth()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 635
    :cond_2
    invoke-virtual {p0}, Landroidx/mediarouter/app/MediaRouteCastDialog;->dismiss()V

    .line 637
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mLastUpdateTime:J

    .line 638
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mAdapter:Landroidx/mediarouter/app/MediaRouteCastDialog$RecyclerAdapter;

    invoke-virtual {v0}, Landroidx/mediarouter/app/MediaRouteCastDialog$RecyclerAdapter;->notifyAdapterDataSetChanged()V

    goto :goto_0

    .line 640
    :cond_4
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 641
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mHandler:Landroid/os/Handler;

    iget-wide v2, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mLastUpdateTime:J

    add-long/2addr v2, v6

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    goto :goto_0
.end method

.method updateViewsIfNeeded()V
    .locals 1

    .prologue
    .line 474
    iget-boolean v0, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mUpdateRoutesViewDeferred:Z

    if-eqz v0, :cond_0

    .line 475
    invoke-virtual {p0}, Landroidx/mediarouter/app/MediaRouteCastDialog;->updateRoutesView()V

    .line 478
    :cond_0
    iget-boolean v0, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mUpdateMetadataViewsDeferred:Z

    if-eqz v0, :cond_1

    .line 479
    invoke-virtual {p0}, Landroidx/mediarouter/app/MediaRouteCastDialog;->updateMetadataViews()V

    .line 481
    :cond_1
    return-void
.end method
