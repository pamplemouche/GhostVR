.class public Lcom/oculus/horizon/legacy/social/view/FrescoTouchImageView;
.super Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;
.source "FrescoTouchImageView.java"

# interfaces
.implements Lcom/facebook/common/callercontext/CallerContextable;


# static fields
.field private static final CALLER_CONTEXT:Lcom/facebook/common/callercontext/CallerContext;


# instance fields
.field private mDataSource:Lcom/facebook/datasource/DataSource;
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

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mImageDecodeOptions:Lcom/facebook/imagepipeline/common/ImageDecodeOptions;

.field private mReference:Lcom/facebook/common/references/CloseableReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/references/CloseableReference",
            "<",
            "Lcom/facebook/imagepipeline/image/CloseableImage;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mSubscriber:Lcom/facebook/datasource/DataSubscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/datasource/DataSubscriber",
            "<",
            "Lcom/facebook/common/references/CloseableReference",
            "<",
            "Lcom/facebook/imagepipeline/image/CloseableImage;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lcom/oculus/horizon/legacy/social/view/FrescoTouchImageView;

    .line 29
    invoke-static {v0}, Lcom/facebook/common/callercontext/CallerContext;->fromClass(Ljava/lang/Class;)Lcom/facebook/common/callercontext/CallerContext;

    move-result-object v0

    sput-object v0, Lcom/oculus/horizon/legacy/social/view/FrescoTouchImageView;->CALLER_CONTEXT:Lcom/facebook/common/callercontext/CallerContext;

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;-><init>(Landroid/content/Context;)V

    .line 31
    new-instance v0, Lcom/oculus/horizon/legacy/social/view/FrescoTouchImageView$1;

    invoke-direct {v0, p0}, Lcom/oculus/horizon/legacy/social/view/FrescoTouchImageView$1;-><init>(Lcom/oculus/horizon/legacy/social/view/FrescoTouchImageView;)V

    iput-object v0, p0, Lcom/oculus/horizon/legacy/social/view/FrescoTouchImageView;->mSubscriber:Lcom/facebook/datasource/DataSubscriber;

    .line 52
    invoke-static {}, Lcom/facebook/imagepipeline/common/ImageDecodeOptions;->newBuilder()Lcom/facebook/imagepipeline/common/ImageDecodeOptionsBuilder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/facebook/imagepipeline/common/ImageDecodeOptionsBuilder;->setForceStaticImage(Z)Lcom/facebook/imagepipeline/common/ImageDecodeOptionsBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/common/ImageDecodeOptionsBuilder;->build()Lcom/facebook/imagepipeline/common/ImageDecodeOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/legacy/social/view/FrescoTouchImageView;->mImageDecodeOptions:Lcom/facebook/imagepipeline/common/ImageDecodeOptions;

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    new-instance v0, Lcom/oculus/horizon/legacy/social/view/FrescoTouchImageView$1;

    invoke-direct {v0, p0}, Lcom/oculus/horizon/legacy/social/view/FrescoTouchImageView$1;-><init>(Lcom/oculus/horizon/legacy/social/view/FrescoTouchImageView;)V

    iput-object v0, p0, Lcom/oculus/horizon/legacy/social/view/FrescoTouchImageView;->mSubscriber:Lcom/facebook/datasource/DataSubscriber;

    .line 52
    invoke-static {}, Lcom/facebook/imagepipeline/common/ImageDecodeOptions;->newBuilder()Lcom/facebook/imagepipeline/common/ImageDecodeOptionsBuilder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/facebook/imagepipeline/common/ImageDecodeOptionsBuilder;->setForceStaticImage(Z)Lcom/facebook/imagepipeline/common/ImageDecodeOptionsBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/common/ImageDecodeOptionsBuilder;->build()Lcom/facebook/imagepipeline/common/ImageDecodeOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/legacy/social/view/FrescoTouchImageView;->mImageDecodeOptions:Lcom/facebook/imagepipeline/common/ImageDecodeOptions;

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .prologue
    .line 63
    invoke-direct {p0, p1, p2, p3}, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    new-instance v0, Lcom/oculus/horizon/legacy/social/view/FrescoTouchImageView$1;

    invoke-direct {v0, p0}, Lcom/oculus/horizon/legacy/social/view/FrescoTouchImageView$1;-><init>(Lcom/oculus/horizon/legacy/social/view/FrescoTouchImageView;)V

    iput-object v0, p0, Lcom/oculus/horizon/legacy/social/view/FrescoTouchImageView;->mSubscriber:Lcom/facebook/datasource/DataSubscriber;

    .line 52
    invoke-static {}, Lcom/facebook/imagepipeline/common/ImageDecodeOptions;->newBuilder()Lcom/facebook/imagepipeline/common/ImageDecodeOptionsBuilder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/facebook/imagepipeline/common/ImageDecodeOptionsBuilder;->setForceStaticImage(Z)Lcom/facebook/imagepipeline/common/ImageDecodeOptionsBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/common/ImageDecodeOptionsBuilder;->build()Lcom/facebook/imagepipeline/common/ImageDecodeOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/legacy/social/view/FrescoTouchImageView;->mImageDecodeOptions:Lcom/facebook/imagepipeline/common/ImageDecodeOptions;

    .line 64
    return-void
.end method

.method static synthetic access$000(Lcom/oculus/horizon/legacy/social/view/FrescoTouchImageView;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/oculus/horizon/legacy/social/view/FrescoTouchImageView;->closeReference()V

    return-void
.end method

.method static synthetic access$102(Lcom/oculus/horizon/legacy/social/view/FrescoTouchImageView;Lcom/facebook/common/references/CloseableReference;)Lcom/facebook/common/references/CloseableReference;
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lcom/oculus/horizon/legacy/social/view/FrescoTouchImageView;->mReference:Lcom/facebook/common/references/CloseableReference;

    return-object p1
.end method

.method static synthetic access$200(Lcom/oculus/horizon/legacy/social/view/FrescoTouchImageView;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/oculus/horizon/legacy/social/view/FrescoTouchImageView;->closeDataSource()V

    return-void
.end method

.method static synthetic access$300(Lcom/oculus/horizon/legacy/social/view/FrescoTouchImageView;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/oculus/horizon/legacy/social/view/FrescoTouchImageView;->setBitmapFromReference()V

    return-void
.end method

.method private closeDataSource()V
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/FrescoTouchImageView;->mDataSource:Lcom/facebook/datasource/DataSource;

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/FrescoTouchImageView;->mDataSource:Lcom/facebook/datasource/DataSource;

    invoke-interface {v0}, Lcom/facebook/datasource/DataSource;->close()Z

    .line 101
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oculus/horizon/legacy/social/view/FrescoTouchImageView;->mDataSource:Lcom/facebook/datasource/DataSource;

    .line 103
    :cond_0
    return-void
.end method

.method private closeReference()V
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/FrescoTouchImageView;->mReference:Lcom/facebook/common/references/CloseableReference;

    invoke-static {v0}, Lcom/facebook/common/references/CloseableReference;->closeSafely(Lcom/facebook/common/references/CloseableReference;)V

    .line 96
    return-void
.end method

.method private setBitmapFromReference()V
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/FrescoTouchImageView;->mReference:Lcom/facebook/common/references/CloseableReference;

    invoke-virtual {v0}, Lcom/facebook/common/references/CloseableReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/imagepipeline/image/CloseableBitmap;

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/image/CloseableBitmap;->getUnderlyingBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 90
    invoke-virtual {p0, v0}, Lcom/oculus/horizon/legacy/social/view/FrescoTouchImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 91
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/legacy/social/view/FrescoTouchImageView;->setTouchEnabled(Z)V

    .line 92
    return-void
.end method


# virtual methods
.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 68
    invoke-super {p0}, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;->onDetachedFromWindow()V

    .line 69
    invoke-direct {p0}, Lcom/oculus/horizon/legacy/social/view/FrescoTouchImageView;->closeReference()V

    .line 70
    invoke-direct {p0}, Lcom/oculus/horizon/legacy/social/view/FrescoTouchImageView;->closeDataSource()V

    .line 71
    return-void
.end method

.method public setImageRequest(Lcom/facebook/imagepipeline/request/ImageRequest;)V
    .locals 3

    .prologue
    .line 79
    invoke-static {}, Lcom/facebook/drawee/backends/pipeline/Fresco;->getImagePipeline()Lcom/facebook/imagepipeline/core/ImagePipeline;

    move-result-object v0

    .line 81
    invoke-static {p1}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->fromRequest(Lcom/facebook/imagepipeline/request/ImageRequest;)Lcom/facebook/imagepipeline/request/ImageRequestBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/oculus/horizon/legacy/social/view/FrescoTouchImageView;->mImageDecodeOptions:Lcom/facebook/imagepipeline/common/ImageDecodeOptions;

    .line 82
    invoke-virtual {v1, v2}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->setImageDecodeOptions(Lcom/facebook/imagepipeline/common/ImageDecodeOptions;)Lcom/facebook/imagepipeline/request/ImageRequestBuilder;

    move-result-object v1

    .line 83
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->build()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object v1

    sget-object v2, Lcom/oculus/horizon/legacy/social/view/FrescoTouchImageView;->CALLER_CONTEXT:Lcom/facebook/common/callercontext/CallerContext;

    .line 80
    invoke-virtual {v0, v1, v2}, Lcom/facebook/imagepipeline/core/ImagePipeline;->fetchDecodedImage(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;)Lcom/facebook/datasource/DataSource;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/legacy/social/view/FrescoTouchImageView;->mDataSource:Lcom/facebook/datasource/DataSource;

    .line 85
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/FrescoTouchImageView;->mDataSource:Lcom/facebook/datasource/DataSource;

    iget-object v1, p0, Lcom/oculus/horizon/legacy/social/view/FrescoTouchImageView;->mSubscriber:Lcom/facebook/datasource/DataSubscriber;

    sget-object v2, Lbolts/Task;->UI_THREAD_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-interface {v0, v1, v2}, Lcom/facebook/datasource/DataSource;->subscribe(Lcom/facebook/datasource/DataSubscriber;Ljava/util/concurrent/Executor;)V

    .line 86
    return-void
.end method

.method public setImageURI(Landroid/net/Uri;)V
    .locals 1

    .prologue
    .line 74
    invoke-static {p1}, Lcom/facebook/imagepipeline/request/ImageRequest;->fromUri(Landroid/net/Uri;)Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/legacy/social/view/FrescoTouchImageView;->setImageRequest(Lcom/facebook/imagepipeline/request/ImageRequest;)V

    .line 75
    return-void
.end method
