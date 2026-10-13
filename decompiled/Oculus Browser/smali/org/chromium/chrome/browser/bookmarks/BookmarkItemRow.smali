.class public Lorg/chromium/chrome/browser/bookmarks/BookmarkItemRow;
.super LU10;
.source "PG"

# interfaces
.implements Lorg/chromium/chrome/browser/favicon/LargeIconBridge$LargeIconCallback;


# instance fields
.field public S:LCM0;

.field public final T:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkItemRow;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, LU10;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0700b5

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimension(I)F

    .line 3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0700b6

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkItemRow;->T:I

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {p1}, LEa0;->a(Landroid/content/res/Resources;)LCM0;

    move-result-object p1

    iput-object p1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkItemRow;->S:LCM0;

    return-void
.end method


# virtual methods
.method public c()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    throw v0
.end method

.method public onLargeIconAvailable(Landroid/graphics/Bitmap;IZI)V
    .locals 6

    .line 1
    iget-object v3, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkItemRow;->S:LCM0;

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v5, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkItemRow;->T:I

    const/4 v1, 0x0

    move-object v0, p1

    move v2, p2

    .line 3
    invoke-static/range {v0 .. v5}, LEa0;->a(Landroid/graphics/Bitmap;Ljava/lang/String;ILCM0;Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 4
    iput-object p1, p0, LhR0;->M:Landroid/graphics/drawable/Drawable;

    const/4 p1, 0x0

    .line 5
    invoke-virtual {p0, p1}, LhR0;->b(Z)V

    return-void
.end method
