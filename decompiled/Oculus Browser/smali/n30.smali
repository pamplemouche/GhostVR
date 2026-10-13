.class public final synthetic Ln30;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lorg/chromium/chrome/browser/favicon/FaviconHelper$FaviconImageCallback;


# instance fields
.field public final w:Lo30;

.field public final x:Lorg/chromium/base/Callback;


# direct methods
.method public constructor <init>(Lo30;Lorg/chromium/base/Callback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln30;->w:Lo30;

    iput-object p2, p0, Ln30;->x:Lorg/chromium/base/Callback;

    return-void
.end method


# virtual methods
.method public onFaviconAvailable(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Ln30;->w:Lo30;

    iget-object v1, p0, Ln30;->x:Lorg/chromium/base/Callback;

    if-eqz p1, :cond_0

    .line 1
    iget-object p2, v0, Lo30;->a:Landroid/content/Context;

    .line 2
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0700b3

    .line 3
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 4
    new-instance v2, Ly4;

    invoke-direct {v2, p2, p1}, Ly4;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    int-to-float p1, v0

    .line 5
    invoke-virtual {v2, p1}, Lz4;->a(F)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object p1, v0, Lo30;->c:LCa0;

    iget-object v0, v0, Lo30;->a:Landroid/content/Context;

    .line 7
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v2, 0x1

    if-eqz p1, :cond_1

    .line 8
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    .line 9
    invoke-virtual {p1, v0, p2, v2}, LCa0;->a(Landroid/content/res/Resources;Ljava/lang/String;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-direct {v3, v0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    move-object v2, v3

    .line 10
    :goto_0
    invoke-interface {v1, v2}, Lorg/chromium/base/Callback;->onResult(Ljava/lang/Object;)V

    return-void

    :cond_1
    const/4 p1, 0x0

    .line 11
    throw p1
.end method
