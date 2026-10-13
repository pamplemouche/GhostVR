.class public Lcom/oculus/horizon/store/StoreSectionHeaderViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "StoreSectionHeaderViewHolder.java"

# interfaces
.implements Lcom/oculus/horizon/store/StoreCountdownTimer$Listener;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mCountDownTimerClockTextView:Landroid/widget/TextView;

.field private mCredentialsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/oculus/auth/credentials/Credentials;",
            ">;"
        }
    .end annotation
.end field

.field private final mMediaView:Lcom/oculus/horizon/widget/MediaView;

.field private mSectionHeaderCountdownTimer:Lcom/oculus/horizon/store/StoreCountdownTimer;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mSectionVideoLoggerProvider:Lcom/oculus/horizon/store/SectionVideoLoggerProvider;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mShouldShowHeader:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lcom/oculus/horizon/store/StoreSectionHeaderViewHolder;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/horizon/store/StoreSectionHeaderViewHolder;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Ljavax/inject/Provider;Lcom/oculus/horizon/store/SectionVideoLoggerProvider;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/view/View;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/oculus/auth/credentials/Credentials;",
            ">;",
            "Lcom/oculus/horizon/store/SectionVideoLoggerProvider;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 46
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 47
    iput-object p1, p0, Lcom/oculus/horizon/store/StoreSectionHeaderViewHolder;->mContext:Landroid/content/Context;

    .line 48
    iput-object p3, p0, Lcom/oculus/horizon/store/StoreSectionHeaderViewHolder;->mCredentialsProvider:Ljavax/inject/Provider;

    .line 49
    iput-object p4, p0, Lcom/oculus/horizon/store/StoreSectionHeaderViewHolder;->mSectionVideoLoggerProvider:Lcom/oculus/horizon/store/SectionVideoLoggerProvider;

    .line 50
    iput-boolean p5, p0, Lcom/oculus/horizon/store/StoreSectionHeaderViewHolder;->mShouldShowHeader:Z

    .line 51
    sget v0, Lcom/oculus/horizon/R$id;->media_view:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/widget/MediaView;

    iput-object v0, p0, Lcom/oculus/horizon/store/StoreSectionHeaderViewHolder;->mMediaView:Lcom/oculus/horizon/widget/MediaView;

    .line 52
    sget v0, Lcom/oculus/horizon/R$id;->countdown_timer_clock:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oculus/horizon/store/StoreSectionHeaderViewHolder;->mCountDownTimerClockTextView:Landroid/widget/TextView;

    .line 53
    return-void
.end method

.method private playVideoPlayer(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 111
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreSectionHeaderViewHolder;->mSectionVideoLoggerProvider:Lcom/oculus/horizon/store/SectionVideoLoggerProvider;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 113
    :try_start_0
    iget-object v1, p0, Lcom/oculus/horizon/store/StoreSectionHeaderViewHolder;->mMediaView:Lcom/oculus/horizon/widget/MediaView;

    iget-object v0, p0, Lcom/oculus/horizon/store/StoreSectionHeaderViewHolder;->mCredentialsProvider:Ljavax/inject/Provider;

    .line 114
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/auth/credentials/Credentials;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/oculus/auth/util/AccessTokenUtils;->appendAccessToken(Lcom/oculus/auth/credentials/Credentials;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    iget-object v2, p0, Lcom/oculus/horizon/store/StoreSectionHeaderViewHolder;->mSectionVideoLoggerProvider:Lcom/oculus/horizon/store/SectionVideoLoggerProvider;

    .line 115
    invoke-virtual {v2, p1}, Lcom/oculus/horizon/store/SectionVideoLoggerProvider;->get(Ljava/lang/String;)Lcom/oculus/horizon/store/SectionVideoLogger;

    move-result-object v2

    .line 113
    invoke-virtual {v1, v0, v2}, Lcom/oculus/horizon/widget/MediaView;->loadVideo(Landroid/net/Uri;Lcom/oculus/horizon/media/MediaPlayerLogger;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    :cond_0
    :goto_0
    return-void

    .line 116
    :catch_0
    move-exception v0

    .line 117
    sget-object v1, Lcom/oculus/horizon/store/StoreSectionHeaderViewHolder;->TAG:Ljava/lang/String;

    const-string v2, "Could not prepare video player"

    invoke-static {v1, v2, v0}, Lcom/oculus/errorreporting/ErrorReporter;->softReport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public attachSectionHeaderCountdownTimer(Lcom/oculus/horizon/store/StoreCountdownTimer;)V
    .locals 2

    .prologue
    .line 127
    iget-boolean v0, p0, Lcom/oculus/horizon/store/StoreSectionHeaderViewHolder;->mShouldShowHeader:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oculus/horizon/store/StoreSectionHeaderViewHolder;->mMediaView:Lcom/oculus/horizon/widget/MediaView;

    .line 128
    invoke-virtual {v0}, Lcom/oculus/horizon/widget/MediaView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oculus/horizon/store/StoreSectionHeaderViewHolder;->mCountDownTimerClockTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 130
    invoke-virtual {p0}, Lcom/oculus/horizon/store/StoreSectionHeaderViewHolder;->destroyStoreCountdownTimer()V

    .line 131
    iput-object p1, p0, Lcom/oculus/horizon/store/StoreSectionHeaderViewHolder;->mSectionHeaderCountdownTimer:Lcom/oculus/horizon/store/StoreCountdownTimer;

    .line 132
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreSectionHeaderViewHolder;->mSectionHeaderCountdownTimer:Lcom/oculus/horizon/store/StoreCountdownTimer;

    invoke-virtual {v0, p0}, Lcom/oculus/horizon/store/StoreCountdownTimer;->setListener(Lcom/oculus/horizon/store/StoreCountdownTimer$Listener;)V

    .line 133
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreSectionHeaderViewHolder;->mSectionHeaderCountdownTimer:Lcom/oculus/horizon/store/StoreCountdownTimer;

    invoke-virtual {v0}, Lcom/oculus/horizon/store/StoreCountdownTimer;->refresh()Z

    move-result v0

    .line 134
    if-eqz v0, :cond_1

    .line 135
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreSectionHeaderViewHolder;->mCountDownTimerClockTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 140
    :cond_0
    :goto_0
    return-void

    .line 137
    :cond_1
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreSectionHeaderViewHolder;->mCountDownTimerClockTextView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public bindModel(Lcom/oculus/horizon/store/StoreSection;)V
    .locals 7

    .prologue
    const/16 v6, 0x8

    const/4 v2, -0x1

    .line 57
    iget-boolean v0, p0, Lcom/oculus/horizon/store/StoreSectionHeaderViewHolder;->mShouldShowHeader:Z

    if-nez v0, :cond_1

    .line 58
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreSectionHeaderViewHolder;->mMediaView:Lcom/oculus/horizon/widget/MediaView;

    invoke-virtual {v0, v6}, Lcom/oculus/horizon/widget/MediaView;->setVisibility(I)V

    .line 108
    :cond_0
    :goto_0
    return-void

    .line 62
    :cond_1
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreSectionHeaderViewHolder;->mMediaView:Lcom/oculus/horizon/widget/MediaView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/widget/MediaView;->setVisibility(I)V

    .line 63
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreSectionHeaderViewHolder;->mMediaView:Lcom/oculus/horizon/widget/MediaView;

    invoke-virtual {v0}, Lcom/oculus/horizon/widget/MediaView;->reset()V

    .line 64
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreSectionHeaderViewHolder;->mMediaView:Lcom/oculus/horizon/widget/MediaView;

    .line 65
    invoke-virtual {v0}, Lcom/oculus/horizon/widget/MediaView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/percentlayout/widget/PercentFrameLayout$LayoutParams;

    .line 68
    iget-object v3, p1, Lcom/oculus/horizon/store/StoreSection;->headerAssetMedia:Lcom/oculus/horizon/store/StoreAssetMedia;

    .line 70
    iget-object v1, p1, Lcom/oculus/horizon/store/StoreSection;->contentType:Ljava/lang/String;

    invoke-static {v1}, Lcom/oculus/horizon/store/StoreSectionBrand;->from(Ljava/lang/String;)Lcom/oculus/horizon/store/StoreSectionBrand;

    move-result-object v1

    .line 71
    if-eqz v1, :cond_2

    iget v1, v1, Lcom/oculus/horizon/store/StoreSectionBrand;->sectionBannerResourceId:I

    .line 73
    :goto_1
    sget v4, Lcom/oculus/horizon/R$drawable;->store_item_placeholder:I

    .line 75
    if-eqz v3, :cond_3

    iget-object v4, v3, Lcom/oculus/horizon/store/StoreAssetMedia;->type:Lcom/oculus/horizon/api/common/Section$Assets$AssetEdge$AssetNode$AssetMediaType;

    sget-object v5, Lcom/oculus/horizon/api/common/Section$Assets$AssetEdge$AssetNode$AssetMediaType;->IMAGE:Lcom/oculus/horizon/api/common/Section$Assets$AssetEdge$AssetNode$AssetMediaType;

    if-ne v4, v5, :cond_3

    .line 77
    iget-object v1, p0, Lcom/oculus/horizon/store/StoreSectionHeaderViewHolder;->mMediaView:Lcom/oculus/horizon/widget/MediaView;

    invoke-virtual {v1}, Lcom/oculus/horizon/widget/MediaView;->hideLoadingIndicator()V

    .line 78
    invoke-virtual {v0}, Landroidx/percentlayout/widget/PercentFrameLayout$LayoutParams;->getPercentLayoutInfo()Landroidx/percentlayout/widget/PercentLayoutHelper$PercentLayoutInfo;

    move-result-object v1

    iget v2, v3, Lcom/oculus/horizon/store/StoreAssetMedia;->aspectRatio:F

    iput v2, v1, Landroidx/percentlayout/widget/PercentLayoutHelper$PercentLayoutInfo;->aspectRatio:F

    .line 79
    iget-object v1, p0, Lcom/oculus/horizon/store/StoreSectionHeaderViewHolder;->mMediaView:Lcom/oculus/horizon/widget/MediaView;

    iget-object v2, v3, Lcom/oculus/horizon/store/StoreAssetMedia;->uri:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/oculus/horizon/widget/MediaView;->setMediaUri(Ljava/lang/String;)V

    .line 100
    :goto_2
    iget-object v1, p0, Lcom/oculus/horizon/store/StoreSectionHeaderViewHolder;->mMediaView:Lcom/oculus/horizon/widget/MediaView;

    invoke-virtual {v1, v0}, Lcom/oculus/horizon/widget/MediaView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 101
    iget-object v1, p0, Lcom/oculus/horizon/store/StoreSectionHeaderViewHolder;->mCountDownTimerClockTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 102
    iget-object v1, p0, Lcom/oculus/horizon/store/StoreSectionHeaderViewHolder;->mCountDownTimerClockTextView:Landroid/widget/TextView;

    .line 103
    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/percentlayout/widget/PercentFrameLayout$LayoutParams;

    .line 104
    invoke-virtual {v1}, Landroidx/percentlayout/widget/PercentFrameLayout$LayoutParams;->getPercentLayoutInfo()Landroidx/percentlayout/widget/PercentLayoutHelper$PercentLayoutInfo;

    move-result-object v2

    .line 105
    invoke-virtual {v0}, Landroidx/percentlayout/widget/PercentFrameLayout$LayoutParams;->getPercentLayoutInfo()Landroidx/percentlayout/widget/PercentLayoutHelper$PercentLayoutInfo;

    move-result-object v0

    iget v0, v0, Landroidx/percentlayout/widget/PercentLayoutHelper$PercentLayoutInfo;->aspectRatio:F

    iput v0, v2, Landroidx/percentlayout/widget/PercentLayoutHelper$PercentLayoutInfo;->aspectRatio:F

    .line 106
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreSectionHeaderViewHolder;->mCountDownTimerClockTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_2
    move v1, v2

    .line 71
    goto :goto_1

    .line 80
    :cond_3
    if-eqz v3, :cond_5

    iget-object v4, v3, Lcom/oculus/horizon/store/StoreAssetMedia;->type:Lcom/oculus/horizon/api/common/Section$Assets$AssetEdge$AssetNode$AssetMediaType;

    sget-object v5, Lcom/oculus/horizon/api/common/Section$Assets$AssetEdge$AssetNode$AssetMediaType;->VIDEO:Lcom/oculus/horizon/api/common/Section$Assets$AssetEdge$AssetNode$AssetMediaType;

    if-ne v4, v5, :cond_5

    iget-object v4, p0, Lcom/oculus/horizon/store/StoreSectionHeaderViewHolder;->mSectionVideoLoggerProvider:Lcom/oculus/horizon/store/SectionVideoLoggerProvider;

    if-eqz v4, :cond_5

    .line 83
    invoke-virtual {v0}, Landroidx/percentlayout/widget/PercentFrameLayout$LayoutParams;->getPercentLayoutInfo()Landroidx/percentlayout/widget/PercentLayoutHelper$PercentLayoutInfo;

    move-result-object v1

    iget v2, v3, Lcom/oculus/horizon/store/StoreAssetMedia;->aspectRatio:F

    iput v2, v1, Landroidx/percentlayout/widget/PercentLayoutHelper$PercentLayoutInfo;->aspectRatio:F

    .line 84
    iget-object v1, v3, Lcom/oculus/horizon/store/StoreAssetMedia;->placeholderUri:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 85
    iget-object v1, p0, Lcom/oculus/horizon/store/StoreSectionHeaderViewHolder;->mMediaView:Lcom/oculus/horizon/widget/MediaView;

    iget-object v2, v3, Lcom/oculus/horizon/store/StoreAssetMedia;->placeholderUri:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/oculus/horizon/widget/MediaView;->setMediaUri(Ljava/lang/String;)V

    .line 87
    :cond_4
    iget-object v1, v3, Lcom/oculus/horizon/store/StoreAssetMedia;->uri:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/oculus/horizon/store/StoreSectionHeaderViewHolder;->playVideoPlayer(Ljava/lang/String;)V

    goto :goto_2

    .line 88
    :cond_5
    if-eq v1, v2, :cond_6

    .line 90
    iget-object v2, p0, Lcom/oculus/horizon/store/StoreSectionHeaderViewHolder;->mMediaView:Lcom/oculus/horizon/widget/MediaView;

    invoke-virtual {v2}, Lcom/oculus/horizon/widget/MediaView;->hideLoadingIndicator()V

    .line 91
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 92
    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 93
    iget-object v3, p0, Lcom/oculus/horizon/store/StoreSectionHeaderViewHolder;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v3, v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 94
    invoke-virtual {v0}, Landroidx/percentlayout/widget/PercentFrameLayout$LayoutParams;->getPercentLayoutInfo()Landroidx/percentlayout/widget/PercentLayoutHelper$PercentLayoutInfo;

    move-result-object v3

    iget v4, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v2, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    div-int v2, v4, v2

    int-to-float v2, v2

    iput v2, v3, Landroidx/percentlayout/widget/PercentLayoutHelper$PercentLayoutInfo;->aspectRatio:F

    .line 96
    iget-object v2, p0, Lcom/oculus/horizon/store/StoreSectionHeaderViewHolder;->mMediaView:Lcom/oculus/horizon/widget/MediaView;

    invoke-static {v1}, Lcom/facebook/common/util/UriUtil;->getUriForResourceId(I)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/oculus/horizon/widget/MediaView;->setMediaUri(Landroid/net/Uri;)V

    goto :goto_2

    .line 98
    :cond_6
    iget-object v1, p0, Lcom/oculus/horizon/store/StoreSectionHeaderViewHolder;->mMediaView:Lcom/oculus/horizon/widget/MediaView;

    invoke-virtual {v1, v6}, Lcom/oculus/horizon/widget/MediaView;->setVisibility(I)V

    goto :goto_2
.end method

.method public destroyStoreCountdownTimer()V
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreSectionHeaderViewHolder;->mSectionHeaderCountdownTimer:Lcom/oculus/horizon/store/StoreCountdownTimer;

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreSectionHeaderViewHolder;->mSectionHeaderCountdownTimer:Lcom/oculus/horizon/store/StoreCountdownTimer;

    invoke-virtual {v0}, Lcom/oculus/horizon/store/StoreCountdownTimer;->destroy()V

    .line 145
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oculus/horizon/store/StoreSectionHeaderViewHolder;->mSectionHeaderCountdownTimer:Lcom/oculus/horizon/store/StoreCountdownTimer;

    .line 147
    :cond_0
    return-void
.end method

.method public onCountdownFinish()V
    .locals 2

    .prologue
    .line 161
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreSectionHeaderViewHolder;->mCountDownTimerClockTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreSectionHeaderViewHolder;->mCountDownTimerClockTextView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 164
    :cond_0
    return-void
.end method

.method public onCountdownTick(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 151
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreSectionHeaderViewHolder;->mCountDownTimerClockTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreSectionHeaderViewHolder;->mCountDownTimerClockTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/oculus/horizon/store/StoreSectionHeaderViewHolder;->mContext:Landroid/content/Context;

    .line 154
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/oculus/horizon/R$string;->store_sale_ends_in_formatter_message:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    .line 155
    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 152
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 157
    :cond_0
    return-void
.end method
