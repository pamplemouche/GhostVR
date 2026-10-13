.class public Lcom/oculus/horizon/cubemaps/Photo360View;
.super Landroid/widget/FrameLayout;
.source "Photo360View.java"

# interfaces
.implements Lcom/facebook/common/callercontext/CallerContextable;
.implements Lcom/oculus/horizon/spherical/HasGlToUIBridge;
.implements Lcom/oculus/horizon/spherical/photo/HasSphericalPhoto;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/horizon/cubemaps/Photo360View$OnSceneUpdateTask;,
        Lcom/oculus/horizon/cubemaps/Photo360View$SingleTapConfirm;,
        Lcom/oculus/horizon/cubemaps/Photo360View$Photo360TouchListener;
    }
.end annotation


# static fields
.field private static final CALLER_CONTEXT:Lcom/facebook/common/callercontext/CallerContext;


# instance fields
.field protected mDataSource:Lcom/facebook/datasource/DataSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/datasource/DataSource",
            "<",
            "Lcom/facebook/common/references/CloseableReference",
            "<",
            "Lcom/facebook/imagepipeline/image/CloseableImage;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mDebugConsole:Landroid/widget/TextView;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mGestureDetector:Landroid/view/GestureDetector;

.field private final mHandler:Landroid/os/Handler;

.field protected mHasFullScreenUFI:Lcom/oculus/horizon/spherical/photo/HasFullScreenUFI;

.field private mHighResImageRequest:Lcom/facebook/imagepipeline/request/ImageRequest;

.field private mImagePipeline:Lcom/facebook/imagepipeline/core/ImagePipeline;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mImagePipelineIdentifierId:I

.field protected mIsBitmapRequested:Z

.field protected mIsGyroAlreadyStopped:Z

.field protected mIsReadyForRendering:Z

.field protected mIsTextureReady:Z

.field protected mLowResImageRequest:Lcom/facebook/imagepipeline/request/ImageRequest;

.field private final mOnSceneUpdateListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oculus/horizon/spherical/OnSceneUpdateListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mOnSceneUpdateRunnable:Ljava/lang/Runnable;

.field private mOnSceneUpdateTask:Landroid/os/AsyncTask;

.field protected mPhotoAttachmentView:Lcom/facebook/drawee/view/GenericDraweeView;

.field protected mPhotoId:Ljava/lang/String;

.field private mShowPhotoSpecDisplay:Ljava/lang/Boolean;
    .annotation runtime Lcom/oculus/horizon/cubemaps/ShowPhotoSpecDisplay;
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mSphericalPhotoAnalyticsLogger:Lcom/oculus/horizon/spherical/photo/logging/SphericalPhotoAnalyticsLogger;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected mSphericalPhotoParams:Lcom/oculus/horizon/spherical/photo/model/SphericalPhotoParams;

.field protected final mSphericalTextureView:Lcom/oculus/horizon/spherical/photo/SphericalPhotoTextureView;

.field private final mSphericalTouchDetector:Lcom/facebook/spherical/touch/SphericalTouchDetector;

.field private final mSurfaceTextureListener:Landroid/view/TextureView$SurfaceTextureListener;

.field private final mTouchListener:Lcom/oculus/horizon/cubemaps/Photo360View$Photo360TouchListener;

.field private final mUiThreadExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method private static final $ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/cubemaps/Photo360View;)V
    .locals 1

    .prologue
    .line 58
    sget-boolean v0, Lcom/facebook/ultralight/UL;->USE_STATIC_DI:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/facebook/inject/FbInjector;->get(Landroid/content/Context;)Lcom/facebook/inject/FbInjector;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oculus/horizon/cubemaps/Photo360View;->$ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/cubemaps/Photo360View;)V

    :goto_0
    return-void

    :cond_0
    const-class v0, Lcom/oculus/horizon/cubemaps/Photo360View;

    invoke-static {v0, p1, p0}, Lcom/facebook/inject/FbInjector;->injectMe(Ljava/lang/Class;Ljava/lang/Object;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static final $ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/cubemaps/Photo360View;)V
    .locals 1

    .prologue
    .line 58
    invoke-static {p0}, Lcom/oculus/horizon/fresco/FrescoModule;->$ul_$xXXcom_facebook_imagepipeline_core_ImagePipeline$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/facebook/imagepipeline/core/ImagePipeline;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/cubemaps/Photo360View;->mImagePipeline:Lcom/facebook/imagepipeline/core/ImagePipeline;

    invoke-static {p0}, Lcom/oculus/horizon/spherical/SphericalModule;->$ul_$xXXcom_oculus_horizon_spherical_photo_logging_SphericalPhotoAnalyticsLogger$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/spherical/photo/logging/SphericalPhotoAnalyticsLogger;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/cubemaps/Photo360View;->mSphericalPhotoAnalyticsLogger:Lcom/oculus/horizon/spherical/photo/logging/SphericalPhotoAnalyticsLogger;

    invoke-static {p0}, Lcom/oculus/horizon/cubemaps/CubemapsModule;->$ul_$xXXjava_lang_Boolean$xXXcom_oculus_horizon_cubemaps_ShowPhotoSpecDisplay$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/cubemaps/Photo360View;->mShowPhotoSpecDisplay:Ljava/lang/Boolean;

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    const-class v0, Lcom/oculus/horizon/cubemaps/Photo360View;

    invoke-static {v0}, Lcom/facebook/common/callercontext/CallerContext;->fromClass(Ljava/lang/Class;)Lcom/facebook/common/callercontext/CallerContext;

    move-result-object v0

    sput-object v0, Lcom/oculus/horizon/cubemaps/Photo360View;->CALLER_CONTEXT:Lcom/facebook/common/callercontext/CallerContext;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 141
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oculus/horizon/cubemaps/Photo360View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 142
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 145
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/oculus/horizon/cubemaps/Photo360View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 146
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x0

    .line 149
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 88
    iput-boolean v1, p0, Lcom/oculus/horizon/cubemaps/Photo360View;->mIsGyroAlreadyStopped:Z

    .line 89
    iput-boolean v1, p0, Lcom/oculus/horizon/cubemaps/Photo360View;->mIsReadyForRendering:Z

    .line 90
    iput-boolean v1, p0, Lcom/oculus/horizon/cubemaps/Photo360View;->mIsTextureReady:Z

    .line 91
    iput-boolean v1, p0, Lcom/oculus/horizon/cubemaps/Photo360View;->mIsBitmapRequested:Z

    .line 95
    new-instance v0, Lcom/oculus/horizon/cubemaps/Photo360View$1;

    invoke-direct {v0, p0}, Lcom/oculus/horizon/cubemaps/Photo360View$1;-><init>(Lcom/oculus/horizon/cubemaps/Photo360View;)V

    iput-object v0, p0, Lcom/oculus/horizon/cubemaps/Photo360View;->mOnSceneUpdateRunnable:Ljava/lang/Runnable;

    .line 103
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oculus/horizon/cubemaps/Photo360View;->mOnSceneUpdateListeners:Ljava/util/List;

    .line 105
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/oculus/horizon/cubemaps/Photo360View;->mHandler:Landroid/os/Handler;

    .line 112
    iput v1, p0, Lcom/oculus/horizon/cubemaps/Photo360View;->mImagePipelineIdentifierId:I

    .line 114
    new-instance v0, Lcom/oculus/horizon/cubemaps/Photo360View$2;

    invoke-direct {v0, p0}, Lcom/oculus/horizon/cubemaps/Photo360View$2;-><init>(Lcom/oculus/horizon/cubemaps/Photo360View;)V

    iput-object v0, p0, Lcom/oculus/horizon/cubemaps/Photo360View;->mSurfaceTextureListener:Landroid/view/TextureView$SurfaceTextureListener;

    .line 132
    new-instance v0, Lcom/oculus/horizon/cubemaps/Photo360View$3;

    invoke-direct {v0, p0}, Lcom/oculus/horizon/cubemaps/Photo360View$3;-><init>(Lcom/oculus/horizon/cubemaps/Photo360View;)V

    iput-object v0, p0, Lcom/oculus/horizon/cubemaps/Photo360View;->mUiThreadExecutor:Ljava/util/concurrent/Executor;

    .line 58
    invoke-virtual {p0}, Lcom/oculus/horizon/cubemaps/Photo360View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/oculus/horizon/cubemaps/Photo360View;->$ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/cubemaps/Photo360View;)V

    .line 153
    sget v0, Lcom/oculus/horizon/R$layout;->spherical_photo_layout:I

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/cubemaps/Photo360View;->setContentView(I)V

    .line 154
    sget v0, Lcom/oculus/horizon/R$id;->spherical_photo_view:I

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/cubemaps/Photo360View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/spherical/photo/SphericalPhotoTextureView;

    iput-object v0, p0, Lcom/oculus/horizon/cubemaps/Photo360View;->mSphericalTextureView:Lcom/oculus/horizon/spherical/photo/SphericalPhotoTextureView;

    .line 155
    sget v0, Lcom/oculus/horizon/R$id;->preview_image_attachment:I

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/cubemaps/Photo360View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/GenericDraweeView;

    iput-object v0, p0, Lcom/oculus/horizon/cubemaps/Photo360View;->mPhotoAttachmentView:Lcom/facebook/drawee/view/GenericDraweeView;

    .line 156
    iget-object v0, p0, Lcom/oculus/horizon/cubemaps/Photo360View;->mPhotoAttachmentView:Lcom/facebook/drawee/view/GenericDraweeView;

    new-instance v1, Lcom/facebook/drawee/generic/GenericDraweeHierarchyBuilder;

    .line 157
    invoke-virtual {p0}, Lcom/oculus/horizon/cubemaps/Photo360View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/facebook/drawee/generic/GenericDraweeHierarchyBuilder;-><init>(Landroid/content/res/Resources;)V

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    .line 158
    invoke-virtual {p0}, Lcom/oculus/horizon/cubemaps/Photo360View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/oculus/horizon/R$color;->oculus_black_1:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Lcom/facebook/drawee/generic/GenericDraweeHierarchyBuilder;->setPlaceholderImage(Landroid/graphics/drawable/Drawable;)Lcom/facebook/drawee/generic/GenericDraweeHierarchyBuilder;

    move-result-object v1

    .line 159
    invoke-virtual {p0}, Lcom/oculus/horizon/cubemaps/Photo360View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/oculus/horizon/R$drawable;->reload_button:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/facebook/drawee/generic/GenericDraweeHierarchyBuilder;->setRetryImage(Landroid/graphics/drawable/Drawable;)Lcom/facebook/drawee/generic/GenericDraweeHierarchyBuilder;

    move-result-object v1

    sget-object v2, Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;->FOCUS_CROP:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    .line 160
    invoke-virtual {v1, v2}, Lcom/facebook/drawee/generic/GenericDraweeHierarchyBuilder;->setActualImageScaleType(Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;)Lcom/facebook/drawee/generic/GenericDraweeHierarchyBuilder;

    move-result-object v1

    .line 161
    invoke-virtual {v1}, Lcom/facebook/drawee/generic/GenericDraweeHierarchyBuilder;->build()Lcom/facebook/drawee/generic/GenericDraweeHierarchy;

    move-result-object v1

    .line 156
    invoke-virtual {v0, v1}, Lcom/facebook/drawee/view/GenericDraweeView;->setHierarchy(Lcom/facebook/drawee/interfaces/DraweeHierarchy;)V

    .line 163
    iget-object v0, p0, Lcom/oculus/horizon/cubemaps/Photo360View;->mSphericalTextureView:Lcom/oculus/horizon/spherical/photo/SphericalPhotoTextureView;

    iget-object v1, p0, Lcom/oculus/horizon/cubemaps/Photo360View;->mSurfaceTextureListener:Landroid/view/TextureView$SurfaceTextureListener;

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/spherical/photo/SphericalPhotoTextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 165
    new-instance v0, Lcom/oculus/horizon/cubemaps/Photo360View$Photo360TouchListener;

    invoke-direct {v0, p0, v5}, Lcom/oculus/horizon/cubemaps/Photo360View$Photo360TouchListener;-><init>(Lcom/oculus/horizon/cubemaps/Photo360View;Lcom/oculus/horizon/cubemaps/Photo360View$1;)V

    iput-object v0, p0, Lcom/oculus/horizon/cubemaps/Photo360View;->mTouchListener:Lcom/oculus/horizon/cubemaps/Photo360View$Photo360TouchListener;

    .line 166
    new-instance v0, Lcom/facebook/spherical/touch/SphericalTouchDetector;

    invoke-virtual {p0}, Lcom/oculus/horizon/cubemaps/Photo360View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/oculus/horizon/cubemaps/Photo360View;->mTouchListener:Lcom/oculus/horizon/cubemaps/Photo360View$Photo360TouchListener;

    invoke-direct {v0, v1, v2}, Lcom/facebook/spherical/touch/SphericalTouchDetector;-><init>(Landroid/content/Context;Lcom/facebook/spherical/touch/SphericalTouchDetector$Listener;)V

    iput-object v0, p0, Lcom/oculus/horizon/cubemaps/Photo360View;->mSphericalTouchDetector:Lcom/facebook/spherical/touch/SphericalTouchDetector;

    .line 167
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/oculus/horizon/cubemaps/Photo360View;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/oculus/horizon/cubemaps/Photo360View$SingleTapConfirm;

    invoke-direct {v2, p0, v5}, Lcom/oculus/horizon/cubemaps/Photo360View$SingleTapConfirm;-><init>(Lcom/oculus/horizon/cubemaps/Photo360View;Lcom/oculus/horizon/cubemaps/Photo360View$1;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/oculus/horizon/cubemaps/Photo360View;->mGestureDetector:Landroid/view/GestureDetector;

    .line 169
    iget-object v0, p0, Lcom/oculus/horizon/cubemaps/Photo360View;->mShowPhotoSpecDisplay:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 170
    invoke-direct {p0}, Lcom/oculus/horizon/cubemaps/Photo360View;->addDebugConsole()Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/cubemaps/Photo360View;->mDebugConsole:Landroid/widget/TextView;

    .line 174
    :goto_0
    return-void

    .line 172
    :cond_0
    iput-object v5, p0, Lcom/oculus/horizon/cubemaps/Photo360View;->mDebugConsole:Landroid/widget/TextView;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/oculus/horizon/cubemaps/Photo360View;)Landroid/os/AsyncTask;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/oculus/horizon/cubemaps/Photo360View;->mOnSceneUpdateTask:Landroid/os/AsyncTask;

    return-object v0
.end method

.method static synthetic access$002(Lcom/oculus/horizon/cubemaps/Photo360View;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/oculus/horizon/cubemaps/Photo360View;->mOnSceneUpdateTask:Landroid/os/AsyncTask;

    return-object p1
.end method

.method static synthetic access$200(Lcom/oculus/horizon/cubemaps/Photo360View;)V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/oculus/horizon/cubemaps/Photo360View;->onTextureViewReady()V

    return-void
.end method

.method static synthetic access$500(Lcom/oculus/horizon/cubemaps/Photo360View;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/oculus/horizon/cubemaps/Photo360View;->mOnSceneUpdateRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$600(Lcom/oculus/horizon/cubemaps/Photo360View;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/oculus/horizon/cubemaps/Photo360View;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/oculus/horizon/cubemaps/Photo360View;)I
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lcom/oculus/horizon/cubemaps/Photo360View;->mImagePipelineIdentifierId:I

    return v0
.end method

.method static synthetic access$800(Lcom/oculus/horizon/cubemaps/Photo360View;)Lcom/oculus/horizon/spherical/photo/logging/SphericalPhotoAnalyticsLogger;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/oculus/horizon/cubemaps/Photo360View;->mSphericalPhotoAnalyticsLogger:Lcom/oculus/horizon/spherical/photo/logging/SphericalPhotoAnalyticsLogger;

    return-object v0
.end method

.method static synthetic access$900(Lcom/oculus/horizon/cubemaps/Photo360View;)Ljava/util/List;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/oculus/horizon/cubemaps/Photo360View;->mOnSceneUpdateListeners:Ljava/util/List;

    return-object v0
.end method

.method private addDebugConsole()Landroid/widget/TextView;
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    const/4 v2, -0x2

    .line 194
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/oculus/horizon/cubemaps/Photo360View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 195
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 197
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const v2, 0xff00

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 198
    invoke-virtual {p0, v0}, Lcom/oculus/horizon/cubemaps/Photo360View;->addView(Landroid/view/View;)V

    .line 199
    return-object v0
.end method

.method private static getResizeOptions(Landroid/util/Size;)Lcom/facebook/imagepipeline/common/ResizeOptions;
    .locals 5
    .param p0    # Landroid/util/Size;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 433
    if-nez p0, :cond_0

    .line 434
    const/4 v0, 0x0

    .line 437
    :goto_0
    return-object v0

    .line 436
    :cond_0
    new-instance v0, Lcom/facebook/imagepipeline/common/ResizeOptions;

    .line 437
    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    int-to-float v3, v3

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/imagepipeline/common/ResizeOptions;-><init>(IIF)V

    goto :goto_0
.end method

.method private onTextureViewReady()V
    .locals 1

    .prologue
    .line 182
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oculus/horizon/cubemaps/Photo360View;->mIsReadyForRendering:Z

    .line 183
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oculus/horizon/cubemaps/Photo360View;->mIsTextureReady:Z

    .line 187
    invoke-virtual {p0}, Lcom/oculus/horizon/cubemaps/Photo360View;->setPreviewPhotoAndStartAnimation()V

    .line 188
    iget-object v0, p0, Lcom/oculus/horizon/cubemaps/Photo360View;->mSphericalTextureView:Lcom/oculus/horizon/spherical/photo/SphericalPhotoTextureView;

    invoke-virtual {v0, p0}, Lcom/oculus/horizon/spherical/photo/SphericalPhotoTextureView;->setHasSphericalPhoto(Lcom/oculus/horizon/spherical/photo/HasSphericalPhoto;)V

    .line 189
    invoke-virtual {p0}, Lcom/oculus/horizon/cubemaps/Photo360View;->startLowResBitmapRequest()V

    .line 190
    return-void
.end method

.method private setRendererBounds()V
    .locals 4

    .prologue
    const/high16 v2, 0x43340000    # 180.0f

    const/high16 v1, 0x42b40000    # 90.0f

    .line 396
    iget-object v0, p0, Lcom/oculus/horizon/cubemaps/Photo360View;->mSphericalPhotoParams:Lcom/oculus/horizon/spherical/photo/model/SphericalPhotoParams;

    invoke-virtual {v0}, Lcom/oculus/horizon/spherical/photo/model/SphericalPhotoParams;->getPanoBounds()Lcom/oculus/horizon/spherical/photo/utils/PartialPanoUtil$PanoBounds;

    move-result-object v0

    .line 397
    if-nez v0, :cond_0

    .line 399
    new-instance v0, Lcom/oculus/horizon/spherical/photo/utils/PartialPanoUtil$PanoBounds;

    invoke-direct {v0, v2, v2, v1, v1}, Lcom/oculus/horizon/spherical/photo/utils/PartialPanoUtil$PanoBounds;-><init>(FFFF)V

    .line 401
    :cond_0
    iget-object v1, p0, Lcom/oculus/horizon/cubemaps/Photo360View;->mSphericalPhotoParams:Lcom/oculus/horizon/spherical/photo/model/SphericalPhotoParams;

    iget-wide v2, v1, Lcom/oculus/horizon/spherical/photo/model/SphericalPhotoParams;->initialViewVerticalFov:D

    double-to-float v1, v2

    .line 402
    new-instance v1, Lcom/oculus/horizon/spherical/model/SphericalRendererBounds$Builder;

    invoke-direct {v1}, Lcom/oculus/horizon/spherical/model/SphericalRendererBounds$Builder;-><init>()V

    .line 404
    invoke-virtual {v1}, Lcom/oculus/horizon/spherical/model/SphericalRendererBounds$Builder;->setPitchBounds()Lcom/oculus/horizon/spherical/model/SphericalRendererBounds$Builder;

    move-result-object v2

    .line 405
    invoke-virtual {v0}, Lcom/oculus/horizon/spherical/photo/utils/PartialPanoUtil$PanoBounds;->getPartialBottom()F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/oculus/horizon/spherical/model/SphericalRendererBounds$Builder;->setMaxPitch(F)Lcom/oculus/horizon/spherical/model/SphericalRendererBounds$Builder;

    move-result-object v2

    .line 406
    invoke-virtual {v0}, Lcom/oculus/horizon/spherical/photo/utils/PartialPanoUtil$PanoBounds;->getPartialTop()F

    move-result v3

    neg-float v3, v3

    invoke-virtual {v2, v3}, Lcom/oculus/horizon/spherical/model/SphericalRendererBounds$Builder;->setMinPitch(F)Lcom/oculus/horizon/spherical/model/SphericalRendererBounds$Builder;

    .line 409
    invoke-virtual {v0}, Lcom/oculus/horizon/spherical/photo/utils/PartialPanoUtil$PanoBounds;->getPartialLeft()F

    move-result v2

    invoke-virtual {v0}, Lcom/oculus/horizon/spherical/photo/utils/PartialPanoUtil$PanoBounds;->getPartialRight()F

    move-result v3

    add-float/2addr v2, v3

    .line 410
    const/high16 v3, 0x43af0000    # 350.0f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_1

    .line 412
    invoke-virtual {v1}, Lcom/oculus/horizon/spherical/model/SphericalRendererBounds$Builder;->setYawBounds()Lcom/oculus/horizon/spherical/model/SphericalRendererBounds$Builder;

    move-result-object v2

    .line 413
    invoke-virtual {v0}, Lcom/oculus/horizon/spherical/photo/utils/PartialPanoUtil$PanoBounds;->getPartialRight()F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/oculus/horizon/spherical/model/SphericalRendererBounds$Builder;->setMaxYaw(F)Lcom/oculus/horizon/spherical/model/SphericalRendererBounds$Builder;

    move-result-object v2

    .line 414
    invoke-virtual {v0}, Lcom/oculus/horizon/spherical/photo/utils/PartialPanoUtil$PanoBounds;->getPartialLeft()F

    move-result v3

    neg-float v3, v3

    invoke-virtual {v2, v3}, Lcom/oculus/horizon/spherical/model/SphericalRendererBounds$Builder;->setMinYaw(F)Lcom/oculus/horizon/spherical/model/SphericalRendererBounds$Builder;

    .line 416
    :cond_1
    iget-object v2, p0, Lcom/oculus/horizon/cubemaps/Photo360View;->mSphericalTextureView:Lcom/oculus/horizon/spherical/photo/SphericalPhotoTextureView;

    invoke-virtual {v1}, Lcom/oculus/horizon/spherical/model/SphericalRendererBounds$Builder;->build()Lcom/oculus/horizon/spherical/model/SphericalRendererBounds;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/oculus/horizon/spherical/photo/SphericalPhotoTextureView;->setRendererBounds(Lcom/oculus/horizon/spherical/model/SphericalRendererBounds;)V

    .line 417
    iget-object v1, p0, Lcom/oculus/horizon/cubemaps/Photo360View;->mSphericalTextureView:Lcom/oculus/horizon/spherical/photo/SphericalPhotoTextureView;

    invoke-virtual {v1, v0}, Lcom/oculus/horizon/spherical/photo/SphericalPhotoTextureView;->setPanoBounds(Lcom/oculus/horizon/spherical/photo/utils/PartialPanoUtil$PanoBounds;)V

    .line 418
    return-void
.end method

.method private setVrCastParamsAndMaybeStartVR()V
    .locals 0

    .prologue
    .line 393
    return-void
.end method

.method private setupImageRequests()V
    .locals 3

    .prologue
    .line 421
    iget-object v0, p0, Lcom/oculus/horizon/cubemaps/Photo360View;->mSphericalPhotoParams:Lcom/oculus/horizon/spherical/photo/model/SphericalPhotoParams;

    iget-object v0, v0, Lcom/oculus/horizon/spherical/photo/model/SphericalPhotoParams;->cubemapUris:Lcom/oculus/horizon/spherical/photo/utils/CubemapsUtil$CubemapUris;

    .line 423
    invoke-virtual {v0}, Lcom/oculus/horizon/spherical/photo/utils/CubemapsUtil$CubemapUris;->getLowResCubeMapUri()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->newBuilderWithSource(Landroid/net/Uri;)Lcom/facebook/imagepipeline/request/ImageRequestBuilder;

    move-result-object v1

    .line 424
    invoke-virtual {v0}, Lcom/oculus/horizon/spherical/photo/utils/CubemapsUtil$CubemapUris;->getLowResCubeMapSize()Landroid/util/Size;

    move-result-object v2

    invoke-static {v2}, Lcom/oculus/horizon/cubemaps/Photo360View;->getResizeOptions(Landroid/util/Size;)Lcom/facebook/imagepipeline/common/ResizeOptions;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->setResizeOptions(Lcom/facebook/imagepipeline/common/ResizeOptions;)Lcom/facebook/imagepipeline/request/ImageRequestBuilder;

    move-result-object v1

    .line 425
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->build()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object v1

    iput-object v1, p0, Lcom/oculus/horizon/cubemaps/Photo360View;->mLowResImageRequest:Lcom/facebook/imagepipeline/request/ImageRequest;

    .line 427
    invoke-virtual {v0}, Lcom/oculus/horizon/spherical/photo/utils/CubemapsUtil$CubemapUris;->getHighResCubeMapUri()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->newBuilderWithSource(Landroid/net/Uri;)Lcom/facebook/imagepipeline/request/ImageRequestBuilder;

    move-result-object v1

    .line 428
    invoke-virtual {v0}, Lcom/oculus/horizon/spherical/photo/utils/CubemapsUtil$CubemapUris;->getHighResCubeMapSize()Landroid/util/Size;

    move-result-object v0

    invoke-static {v0}, Lcom/oculus/horizon/cubemaps/Photo360View;->getResizeOptions(Landroid/util/Size;)Lcom/facebook/imagepipeline/common/ResizeOptions;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->setResizeOptions(Lcom/facebook/imagepipeline/common/ResizeOptions;)Lcom/facebook/imagepipeline/request/ImageRequestBuilder;

    move-result-object v0

    .line 429
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->build()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/cubemaps/Photo360View;->mHighResImageRequest:Lcom/facebook/imagepipeline/request/ImageRequest;

    .line 430
    return-void
.end method


# virtual methods
.method public canSupportGltoUIBridge()Z
    .locals 1

    .prologue
    .line 454
    iget-object v0, p0, Lcom/oculus/horizon/cubemaps/Photo360View;->mSphericalTextureView:Lcom/oculus/horizon/spherical/photo/SphericalPhotoTextureView;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public get360TextureView()Lcom/oculus/horizon/spherical/SphericalMediaTextureView;
    .locals 1

    .prologue
    .line 459
    iget-object v0, p0, Lcom/oculus/horizon/cubemaps/Photo360View;->mSphericalTextureView:Lcom/oculus/horizon/spherical/photo/SphericalPhotoTextureView;

    return-object v0
.end method

.method public getShouldShowPhoneAnimationInFullScreen()Z
    .locals 1

    .prologue
    .line 465
    const/4 v0, 0x0

    return v0
.end method

.method protected handleOnReadyForRendering()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 230
    iput-boolean v2, p0, Lcom/oculus/horizon/cubemaps/Photo360View;->mIsReadyForRendering:Z

    .line 232
    iget-object v0, p0, Lcom/oculus/horizon/cubemaps/Photo360View;->mPhotoAttachmentView:Lcom/facebook/drawee/view/GenericDraweeView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/facebook/drawee/view/GenericDraweeView;->setVisibility(I)V

    .line 241
    iput-boolean v2, p0, Lcom/oculus/horizon/cubemaps/Photo360View;->mIsGyroAlreadyStopped:Z

    .line 244
    invoke-virtual {p0}, Lcom/oculus/horizon/cubemaps/Photo360View;->startHighResBitmapRequest()V

    .line 245
    invoke-virtual {p0}, Lcom/oculus/horizon/cubemaps/Photo360View;->updateDebugConsole()V

    .line 246
    return-void
.end method

.method public initialize(Ljava/lang/String;Lcom/oculus/horizon/spherical/photo/model/SphericalPhotoParams;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 359
    iput-object p2, p0, Lcom/oculus/horizon/cubemaps/Photo360View;->mSphericalPhotoParams:Lcom/oculus/horizon/spherical/photo/model/SphericalPhotoParams;

    .line 360
    iput-object p3, p0, Lcom/oculus/horizon/cubemaps/Photo360View;->mPhotoId:Ljava/lang/String;

    .line 361
    iget-object v0, p0, Lcom/oculus/horizon/cubemaps/Photo360View;->mSphericalTextureView:Lcom/oculus/horizon/spherical/photo/SphericalPhotoTextureView;

    iget-object v1, p0, Lcom/oculus/horizon/cubemaps/Photo360View;->mSphericalPhotoParams:Lcom/oculus/horizon/spherical/photo/model/SphericalPhotoParams;

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/spherical/photo/SphericalPhotoTextureView;->setSphericalPhotoParams(Lcom/oculus/horizon/spherical/photo/model/SphericalPhotoParams;)V

    .line 364
    invoke-static {}, Lcom/facebook/drawee/backends/pipeline/Fresco;->newDraweeControllerBuilder()Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilder;

    move-result-object v0

    .line 365
    invoke-virtual {v0, p1}, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilder;->setUri(Ljava/lang/String;)Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/horizon/cubemaps/Photo360View;->mPhotoAttachmentView:Lcom/facebook/drawee/view/GenericDraweeView;

    .line 366
    invoke-virtual {v1}, Lcom/facebook/drawee/view/GenericDraweeView;->getController()Lcom/facebook/drawee/interfaces/DraweeController;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilder;->setOldController(Lcom/facebook/drawee/interfaces/DraweeController;)Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilder;

    .line 367
    invoke-virtual {v0}, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilder;->build()Lcom/facebook/drawee/controller/AbstractDraweeController;

    move-result-object v0

    .line 368
    iget-object v1, p0, Lcom/oculus/horizon/cubemaps/Photo360View;->mPhotoAttachmentView:Lcom/facebook/drawee/view/GenericDraweeView;

    invoke-virtual {v1, v0}, Lcom/facebook/drawee/view/GenericDraweeView;->setController(Lcom/facebook/drawee/interfaces/DraweeController;)V

    .line 377
    invoke-direct {p0}, Lcom/oculus/horizon/cubemaps/Photo360View;->setVrCastParamsAndMaybeStartVR()V

    .line 378
    invoke-direct {p0}, Lcom/oculus/horizon/cubemaps/Photo360View;->setRendererBounds()V

    .line 379
    invoke-direct {p0}, Lcom/oculus/horizon/cubemaps/Photo360View;->setupImageRequests()V

    .line 384
    return-void
.end method

.method public onError(Ljava/lang/Exception;)V
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/oculus/horizon/cubemaps/Photo360View;->mSphericalTextureView:Lcom/oculus/horizon/spherical/photo/SphericalPhotoTextureView;

    invoke-virtual {v0}, Lcom/oculus/horizon/spherical/photo/SphericalPhotoTextureView;->tearDownRenderThread()V

    .line 221
    return-void
.end method

.method public onReadyForRendering()V
    .locals 1

    .prologue
    .line 208
    new-instance v0, Lcom/oculus/horizon/cubemaps/Photo360View$4;

    invoke-direct {v0, p0}, Lcom/oculus/horizon/cubemaps/Photo360View$4;-><init>(Lcom/oculus/horizon/cubemaps/Photo360View;)V

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/cubemaps/Photo360View;->post(Ljava/lang/Runnable;)Z

    .line 216
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 533
    iget-object v0, p0, Lcom/oculus/horizon/cubemaps/Photo360View;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 534
    if-eqz v0, :cond_0

    .line 535
    const/4 v0, 0x1

    .line 541
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/cubemaps/Photo360View;->mSphericalTouchDetector:Lcom/facebook/spherical/touch/SphericalTouchDetector;

    invoke-virtual {v0, p1}, Lcom/facebook/spherical/touch/SphericalTouchDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected setContentView(I)V
    .locals 1

    .prologue
    .line 177
    invoke-virtual {p0}, Lcom/oculus/horizon/cubemaps/Photo360View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 178
    invoke-virtual {v0, p1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 179
    return-void
.end method

.method public setHasFullScreenUFI(Lcom/oculus/horizon/spherical/photo/HasFullScreenUFI;)V
    .locals 0

    .prologue
    .line 564
    iput-object p1, p0, Lcom/oculus/horizon/cubemaps/Photo360View;->mHasFullScreenUFI:Lcom/oculus/horizon/spherical/photo/HasFullScreenUFI;

    .line 565
    return-void
.end method

.method protected setPreviewPhotoAndStartAnimation()V
    .locals 2

    .prologue
    .line 349
    iget-object v0, p0, Lcom/oculus/horizon/cubemaps/Photo360View;->mPhotoAttachmentView:Lcom/facebook/drawee/view/GenericDraweeView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/facebook/drawee/view/GenericDraweeView;->setVisibility(I)V

    .line 355
    return-void
.end method

.method public setShouldShowPhoneAnimationInFullScreen(Z)V
    .locals 0

    .prologue
    .line 473
    return-void
.end method

.method protected startHighResBitmapRequest()V
    .locals 3

    .prologue
    .line 288
    iget-object v0, p0, Lcom/oculus/horizon/cubemaps/Photo360View;->mImagePipeline:Lcom/facebook/imagepipeline/core/ImagePipeline;

    iget-object v1, p0, Lcom/oculus/horizon/cubemaps/Photo360View;->mHighResImageRequest:Lcom/facebook/imagepipeline/request/ImageRequest;

    sget-object v2, Lcom/oculus/horizon/cubemaps/Photo360View;->CALLER_CONTEXT:Lcom/facebook/common/callercontext/CallerContext;

    invoke-virtual {v0, v1, v2}, Lcom/facebook/imagepipeline/core/ImagePipeline;->fetchDecodedImage(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;)Lcom/facebook/datasource/DataSource;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/cubemaps/Photo360View;->mDataSource:Lcom/facebook/datasource/DataSource;

    .line 289
    iget-object v0, p0, Lcom/oculus/horizon/cubemaps/Photo360View;->mDataSource:Lcom/facebook/datasource/DataSource;

    new-instance v1, Lcom/oculus/horizon/cubemaps/Photo360View$6;

    invoke-direct {v1, p0}, Lcom/oculus/horizon/cubemaps/Photo360View$6;-><init>(Lcom/oculus/horizon/cubemaps/Photo360View;)V

    iget-object v2, p0, Lcom/oculus/horizon/cubemaps/Photo360View;->mUiThreadExecutor:Ljava/util/concurrent/Executor;

    invoke-interface {v0, v1, v2}, Lcom/facebook/datasource/DataSource;->subscribe(Lcom/facebook/datasource/DataSubscriber;Ljava/util/concurrent/Executor;)V

    .line 315
    return-void
.end method

.method protected startLowResBitmapRequest()V
    .locals 4

    .prologue
    .line 249
    iget-boolean v0, p0, Lcom/oculus/horizon/cubemaps/Photo360View;->mIsTextureReady:Z

    if-nez v0, :cond_0

    .line 250
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oculus/horizon/cubemaps/Photo360View;->mIsBitmapRequested:Z

    .line 285
    :goto_0
    return-void

    .line 253
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oculus/horizon/cubemaps/Photo360View;->mIsBitmapRequested:Z

    .line 254
    iget v0, p0, Lcom/oculus/horizon/cubemaps/Photo360View;->mImagePipelineIdentifierId:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/oculus/horizon/cubemaps/Photo360View;->mImagePipelineIdentifierId:I

    .line 255
    iget-object v1, p0, Lcom/oculus/horizon/cubemaps/Photo360View;->mImagePipeline:Lcom/facebook/imagepipeline/core/ImagePipeline;

    iget-object v2, p0, Lcom/oculus/horizon/cubemaps/Photo360View;->mLowResImageRequest:Lcom/facebook/imagepipeline/request/ImageRequest;

    sget-object v3, Lcom/oculus/horizon/cubemaps/Photo360View;->CALLER_CONTEXT:Lcom/facebook/common/callercontext/CallerContext;

    invoke-virtual {v1, v2, v3}, Lcom/facebook/imagepipeline/core/ImagePipeline;->fetchDecodedImage(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;)Lcom/facebook/datasource/DataSource;

    move-result-object v1

    iput-object v1, p0, Lcom/oculus/horizon/cubemaps/Photo360View;->mDataSource:Lcom/facebook/datasource/DataSource;

    .line 256
    iget-object v1, p0, Lcom/oculus/horizon/cubemaps/Photo360View;->mDataSource:Lcom/facebook/datasource/DataSource;

    new-instance v2, Lcom/oculus/horizon/cubemaps/Photo360View$5;

    invoke-direct {v2, p0, v0}, Lcom/oculus/horizon/cubemaps/Photo360View$5;-><init>(Lcom/oculus/horizon/cubemaps/Photo360View;I)V

    iget-object v0, p0, Lcom/oculus/horizon/cubemaps/Photo360View;->mUiThreadExecutor:Ljava/util/concurrent/Executor;

    invoke-interface {v1, v2, v0}, Lcom/facebook/datasource/DataSource;->subscribe(Lcom/facebook/datasource/DataSubscriber;Ljava/util/concurrent/Executor;)V

    goto :goto_0
.end method

.method protected updateDebugConsole()V
    .locals 3

    .prologue
    .line 558
    iget-object v0, p0, Lcom/oculus/horizon/cubemaps/Photo360View;->mShowPhotoSpecDisplay:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oculus/horizon/cubemaps/Photo360View;->mDebugConsole:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 559
    iget-object v0, p0, Lcom/oculus/horizon/cubemaps/Photo360View;->mDebugConsole:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Field of View: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/oculus/horizon/cubemaps/Photo360View;->mSphericalTextureView:Lcom/oculus/horizon/spherical/photo/SphericalPhotoTextureView;

    invoke-virtual {v2}, Lcom/oculus/horizon/spherical/photo/SphericalPhotoTextureView;->getFov()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 561
    :cond_0
    return-void
.end method
