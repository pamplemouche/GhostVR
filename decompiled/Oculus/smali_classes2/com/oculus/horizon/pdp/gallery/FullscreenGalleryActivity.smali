.class public Lcom/oculus/horizon/pdp/gallery/FullscreenGalleryActivity;
.super Landroid/app/Activity;
.source "FullscreenGalleryActivity.java"


# instance fields
.field private mCurrentAnimator:Landroid/animation/ObjectAnimator;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field mGalleryAdapterProvider:Lcom/oculus/horizon/pdp/gallery/GalleryAdapterProvider;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mImagePager:Landroidx/viewpager/widget/ViewPager;

.field private mImagePagerIndicator:Lcom/oculus/horizon/widget/ViewPagerIndicator;

.field private mImages:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/oculus/http/common/Image;",
            ">;"
        }
    .end annotation
.end field

.field private mIndicator:Landroid/widget/TextView;

.field private mOverlay:Landroid/widget/FrameLayout;

.field private mRootView:Landroid/widget/FrameLayout;


# direct methods
.method private static final $ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/pdp/gallery/FullscreenGalleryActivity;)V
    .locals 1

    .prologue
    .line 35
    sget-boolean v0, Lcom/facebook/ultralight/UL;->USE_STATIC_DI:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/facebook/inject/FbInjector;->get(Landroid/content/Context;)Lcom/facebook/inject/FbInjector;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oculus/horizon/pdp/gallery/FullscreenGalleryActivity;->$ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/pdp/gallery/FullscreenGalleryActivity;)V

    :goto_0
    return-void

    :cond_0
    const-class v0, Lcom/oculus/horizon/pdp/gallery/FullscreenGalleryActivity;

    invoke-static {v0, p1, p0}, Lcom/facebook/inject/FbInjector;->injectMe(Ljava/lang/Class;Ljava/lang/Object;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static final $ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/pdp/gallery/FullscreenGalleryActivity;)V
    .locals 1

    .prologue
    .line 35
    invoke-static {p0}, Lcom/oculus/horizon/pdp/gallery/GalleryAdapter;->$ul_$xXXcom_oculus_horizon_pdp_gallery_GalleryAdapterProvider$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/pdp/gallery/GalleryAdapterProvider;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/pdp/gallery/FullscreenGalleryActivity;->mGalleryAdapterProvider:Lcom/oculus/horizon/pdp/gallery/GalleryAdapterProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/oculus/horizon/pdp/gallery/FullscreenGalleryActivity;I)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/oculus/horizon/pdp/gallery/FullscreenGalleryActivity;->onImageSelected(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/oculus/horizon/pdp/gallery/FullscreenGalleryActivity;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/oculus/horizon/pdp/gallery/FullscreenGalleryActivity;->toggleOverlay()V

    return-void
.end method

.method static synthetic access$200(Lcom/oculus/horizon/pdp/gallery/FullscreenGalleryActivity;)Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/oculus/horizon/pdp/gallery/FullscreenGalleryActivity;->mOverlay:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$300(Lcom/oculus/horizon/pdp/gallery/FullscreenGalleryActivity;)Lcom/oculus/horizon/widget/ViewPagerIndicator;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/oculus/horizon/pdp/gallery/FullscreenGalleryActivity;->mImagePagerIndicator:Lcom/oculus/horizon/widget/ViewPagerIndicator;

    return-object v0
.end method

.method static synthetic access$402(Lcom/oculus/horizon/pdp/gallery/FullscreenGalleryActivity;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lcom/oculus/horizon/pdp/gallery/FullscreenGalleryActivity;->mCurrentAnimator:Landroid/animation/ObjectAnimator;

    return-object p1
.end method

.method public static getIntent(Landroid/content/Context;Ljava/util/List;I)Landroid/content/Intent;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/oculus/http/common/Image;",
            ">;I)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 54
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/oculus/horizon/pdp/gallery/FullscreenGalleryActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 55
    const-string v1, "extra_image_list"

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 56
    const-string v1, "extra_image_pos"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 57
    return-object v0
.end method

.method private goFullScreen()V
    .locals 2

    .prologue
    .line 92
    invoke-virtual {p0}, Lcom/oculus/horizon/pdp/gallery/FullscreenGalleryActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 93
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x504

    .line 94
    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 98
    return-void
.end method

.method private onImageSelected(I)V
    .locals 4

    .prologue
    .line 193
    invoke-virtual {p0}, Lcom/oculus/horizon/pdp/gallery/FullscreenGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/oculus/horizon/R$string;->pdp_gallery_indicator:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    add-int/lit8 v3, p1, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/oculus/horizon/pdp/gallery/FullscreenGalleryActivity;->mImages:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v3}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 192
    invoke-static {v0, v1}, Lcom/facebook/common/util/StringLocaleUtil;->formatStrLocaleSensitive(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 194
    iget-object v1, p0, Lcom/oculus/horizon/pdp/gallery/FullscreenGalleryActivity;->mIndicator:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 195
    return-void
.end method

.method private setup(Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 101
    invoke-virtual {p0}, Lcom/oculus/horizon/pdp/gallery/FullscreenGalleryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_image_list"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 102
    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/pdp/gallery/FullscreenGalleryActivity;->mImages:Lcom/google/common/collect/ImmutableList;

    .line 103
    const-string v0, "extra_image_pos"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 104
    iget-object v1, p0, Lcom/oculus/horizon/pdp/gallery/FullscreenGalleryActivity;->mGalleryAdapterProvider:Lcom/oculus/horizon/pdp/gallery/GalleryAdapterProvider;

    iget-object v2, p0, Lcom/oculus/horizon/pdp/gallery/FullscreenGalleryActivity;->mImages:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1, v2, p0}, Lcom/oculus/horizon/pdp/gallery/GalleryAdapterProvider;->get(Lcom/google/common/collect/ImmutableList;Landroid/content/Context;)Lcom/oculus/horizon/pdp/gallery/GalleryAdapter;

    move-result-object v1

    .line 105
    iget-object v2, p0, Lcom/oculus/horizon/pdp/gallery/FullscreenGalleryActivity;->mImagePager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v2, v1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 106
    iget-object v1, p0, Lcom/oculus/horizon/pdp/gallery/FullscreenGalleryActivity;->mImagePager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v1, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    .line 107
    iget-object v1, p0, Lcom/oculus/horizon/pdp/gallery/FullscreenGalleryActivity;->mImagePagerIndicator:Lcom/oculus/horizon/widget/ViewPagerIndicator;

    iget-object v2, p0, Lcom/oculus/horizon/pdp/gallery/FullscreenGalleryActivity;->mImagePager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v1, v2}, Lcom/oculus/horizon/widget/ViewPagerIndicator;->setViewPager(Landroidx/viewpager/widget/ViewPager;)V

    .line 108
    invoke-direct {p0, v0}, Lcom/oculus/horizon/pdp/gallery/FullscreenGalleryActivity;->onImageSelected(I)V

    .line 110
    iget-object v0, p0, Lcom/oculus/horizon/pdp/gallery/FullscreenGalleryActivity;->mImagePager:Landroidx/viewpager/widget/ViewPager;

    new-instance v1, Lcom/oculus/horizon/pdp/gallery/FullscreenGalleryActivity$2;

    invoke-direct {v1, p0}, Lcom/oculus/horizon/pdp/gallery/FullscreenGalleryActivity$2;-><init>(Lcom/oculus/horizon/pdp/gallery/FullscreenGalleryActivity;)V

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 119
    new-instance v0, Landroidx/core/view/GestureDetectorCompat;

    new-instance v1, Lcom/oculus/horizon/pdp/gallery/FullscreenGalleryActivity$3;

    invoke-direct {v1, p0}, Lcom/oculus/horizon/pdp/gallery/FullscreenGalleryActivity$3;-><init>(Lcom/oculus/horizon/pdp/gallery/FullscreenGalleryActivity;)V

    invoke-direct {v0, p0, v1}, Landroidx/core/view/GestureDetectorCompat;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    .line 129
    iget-object v1, p0, Lcom/oculus/horizon/pdp/gallery/FullscreenGalleryActivity;->mImagePager:Landroidx/viewpager/widget/ViewPager;

    new-instance v2, Lcom/oculus/horizon/pdp/gallery/FullscreenGalleryActivity$4;

    invoke-direct {v2, p0, v0}, Lcom/oculus/horizon/pdp/gallery/FullscreenGalleryActivity$4;-><init>(Lcom/oculus/horizon/pdp/gallery/FullscreenGalleryActivity;Landroidx/core/view/GestureDetectorCompat;)V

    invoke-virtual {v1, v2}, Landroidx/viewpager/widget/ViewPager;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 136
    iget-object v0, p0, Lcom/oculus/horizon/pdp/gallery/FullscreenGalleryActivity;->mRootView:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/oculus/horizon/pdp/gallery/FullscreenGalleryActivity$5;

    invoke-direct {v1, p0}, Lcom/oculus/horizon/pdp/gallery/FullscreenGalleryActivity$5;-><init>(Lcom/oculus/horizon/pdp/gallery/FullscreenGalleryActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    return-void
.end method

.method private toggleOverlay()V
    .locals 4

    .prologue
    const/4 v2, 0x2

    .line 146
    iget-object v0, p0, Lcom/oculus/horizon/pdp/gallery/FullscreenGalleryActivity;->mCurrentAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/oculus/horizon/pdp/gallery/FullscreenGalleryActivity;->mCurrentAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/pdp/gallery/FullscreenGalleryActivity;->mOverlay:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 150
    iget-object v0, p0, Lcom/oculus/horizon/pdp/gallery/FullscreenGalleryActivity;->mOverlay:Landroid/widget/FrameLayout;

    const-string v1, "alpha"

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/pdp/gallery/FullscreenGalleryActivity;->mCurrentAnimator:Landroid/animation/ObjectAnimator;

    .line 151
    iget-object v0, p0, Lcom/oculus/horizon/pdp/gallery/FullscreenGalleryActivity;->mCurrentAnimator:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/oculus/horizon/pdp/gallery/FullscreenGalleryActivity$6;

    invoke-direct {v1, p0}, Lcom/oculus/horizon/pdp/gallery/FullscreenGalleryActivity$6;-><init>(Lcom/oculus/horizon/pdp/gallery/FullscreenGalleryActivity;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 186
    :goto_0
    iget-object v0, p0, Lcom/oculus/horizon/pdp/gallery/FullscreenGalleryActivity;->mCurrentAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 187
    iget-object v0, p0, Lcom/oculus/horizon/pdp/gallery/FullscreenGalleryActivity;->mCurrentAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 188
    return-void

    .line 166
    :cond_1
    iget-object v0, p0, Lcom/oculus/horizon/pdp/gallery/FullscreenGalleryActivity;->mOverlay:Landroid/widget/FrameLayout;

    const-string v1, "alpha"

    new-array v2, v2, [F

    fill-array-data v2, :array_1

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/pdp/gallery/FullscreenGalleryActivity;->mCurrentAnimator:Landroid/animation/ObjectAnimator;

    .line 167
    iget-object v0, p0, Lcom/oculus/horizon/pdp/gallery/FullscreenGalleryActivity;->mCurrentAnimator:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/oculus/horizon/pdp/gallery/FullscreenGalleryActivity$7;

    invoke-direct {v1, p0}, Lcom/oculus/horizon/pdp/gallery/FullscreenGalleryActivity$7;-><init>(Lcom/oculus/horizon/pdp/gallery/FullscreenGalleryActivity;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_0

    .line 150
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 166
    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 70
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    invoke-static {p0, p0}, Lcom/oculus/horizon/pdp/gallery/FullscreenGalleryActivity;->$ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/pdp/gallery/FullscreenGalleryActivity;)V

    .line 73
    invoke-direct {p0}, Lcom/oculus/horizon/pdp/gallery/FullscreenGalleryActivity;->goFullScreen()V

    .line 74
    sget v0, Lcom/oculus/horizon/R$layout;->fullscreen_gallery:I

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/pdp/gallery/FullscreenGalleryActivity;->setContentView(I)V

    .line 75
    sget v0, Lcom/oculus/horizon/R$id;->overlay:I

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/pdp/gallery/FullscreenGalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/oculus/horizon/pdp/gallery/FullscreenGalleryActivity;->mOverlay:Landroid/widget/FrameLayout;

    .line 76
    sget v0, Lcom/oculus/horizon/R$id;->root_view:I

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/pdp/gallery/FullscreenGalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/oculus/horizon/pdp/gallery/FullscreenGalleryActivity;->mRootView:Landroid/widget/FrameLayout;

    .line 77
    sget v0, Lcom/oculus/horizon/R$id;->page_indicator:I

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/pdp/gallery/FullscreenGalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oculus/horizon/pdp/gallery/FullscreenGalleryActivity;->mIndicator:Landroid/widget/TextView;

    .line 78
    sget v0, Lcom/oculus/horizon/R$id;->image_pager:I

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/pdp/gallery/FullscreenGalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/viewpager/widget/ViewPager;

    iput-object v0, p0, Lcom/oculus/horizon/pdp/gallery/FullscreenGalleryActivity;->mImagePager:Landroidx/viewpager/widget/ViewPager;

    .line 79
    sget v0, Lcom/oculus/horizon/R$id;->pager_indicator:I

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/pdp/gallery/FullscreenGalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/widget/ViewPagerIndicator;

    iput-object v0, p0, Lcom/oculus/horizon/pdp/gallery/FullscreenGalleryActivity;->mImagePagerIndicator:Lcom/oculus/horizon/widget/ViewPagerIndicator;

    .line 80
    sget v0, Lcom/oculus/horizon/R$id;->close_button:I

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/pdp/gallery/FullscreenGalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/oculus/horizon/pdp/gallery/FullscreenGalleryActivity$1;

    invoke-direct {v1, p0}, Lcom/oculus/horizon/pdp/gallery/FullscreenGalleryActivity$1;-><init>(Lcom/oculus/horizon/pdp/gallery/FullscreenGalleryActivity;)V

    .line 81
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    invoke-virtual {p0}, Lcom/oculus/horizon/pdp/gallery/FullscreenGalleryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oculus/horizon/pdp/gallery/FullscreenGalleryActivity;->setup(Landroid/content/Intent;)V

    .line 89
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/oculus/horizon/pdp/gallery/FullscreenGalleryActivity;->mCurrentAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/oculus/horizon/pdp/gallery/FullscreenGalleryActivity;->mCurrentAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 65
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 66
    return-void
.end method
