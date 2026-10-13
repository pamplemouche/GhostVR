.class public final synthetic LJe0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lorg/chromium/base/Callback;


# instance fields
.field public final a:Lorg/chromium/base/Callback;

.field public final b:I

.field public final c:I


# direct methods
.method public constructor <init>(Lorg/chromium/base/Callback;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LJe0;->a:Lorg/chromium/base/Callback;

    iput p2, p0, LJe0;->b:I

    iput p3, p0, LJe0;->c:I

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, LJe0;->a:Lorg/chromium/base/Callback;

    iget v1, p0, LJe0;->b:I

    iget v2, p0, LJe0;->c:I

    check-cast p1, Landroid/graphics/Bitmap;

    if-eqz p1, :cond_0

    if-lez v1, :cond_0

    if-lez v2, :cond_0

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    if-eq v3, v1, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-eq v3, v2, :cond_0

    const/4 v3, 0x2

    .line 3
    invoke-static {p1, v1, v2, v3}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 4
    :cond_0
    invoke-interface {v0, p1}, Lorg/chromium/base/Callback;->onResult(Ljava/lang/Object;)V

    return-void
.end method
