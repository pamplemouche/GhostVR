.class final Lcom/instagram/common/ui/widget/touchimageview/TouchImageView$DefaultBoundsDelegate;
.super Ljava/lang/Object;
.source "TouchImageView.java"

# interfaces
.implements Lcom/instagram/common/ui/widget/touchimageview/TouchImageView$BoundsDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DefaultBoundsDelegate"
.end annotation


# instance fields
.field private final mBounds:Landroid/graphics/RectF;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView$DefaultBoundsDelegate;->mBounds:Landroid/graphics/RectF;

    return-void
.end method

.method synthetic constructor <init>(Lcom/instagram/common/ui/widget/touchimageview/TouchImageView$1;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView$DefaultBoundsDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public getBounds(Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;)Landroid/graphics/RectF;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 42
    iget-object v0, p0, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView$DefaultBoundsDelegate;->mBounds:Landroid/graphics/RectF;

    invoke-virtual {p1}, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 43
    iget-object v0, p0, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView$DefaultBoundsDelegate;->mBounds:Landroid/graphics/RectF;

    return-object v0
.end method
