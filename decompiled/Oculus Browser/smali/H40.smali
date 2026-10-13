.class public LH40;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public w:Lle1;

.field public x:Landroid/content/Context;

.field public y:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lle1;Lorg/chromium/chrome/browser/contextmenu/ContextMenuParams;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, LH40;->x:Landroid/content/Context;

    .line 3
    invoke-virtual {p3}, Lorg/chromium/chrome/browser/contextmenu/ContextMenuParams;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LH40;->y:Ljava/lang/String;

    .line 4
    iput-object p2, p0, LH40;->w:Lle1;

    .line 5
    sget-object v0, LI40;->d:Lke1;

    invoke-virtual {p2, v0, p0}, Lle1;->a(Lke1;Ljava/lang/Object;)V

    .line 6
    iget-boolean p2, p3, Lorg/chromium/chrome/browser/contextmenu/ContextMenuParams;->i:Z

    if-nez p2, :cond_0

    .line 7
    iget-boolean p2, p3, Lorg/chromium/chrome/browser/contextmenu/ContextMenuParams;->j:Z

    if-nez p2, :cond_0

    .line 8
    new-instance p2, LIa0;

    invoke-static {}, Lorg/chromium/chrome/browser/profiles/Profile;->e()Lorg/chromium/chrome/browser/profiles/Profile;

    move-result-object p3

    invoke-direct {p2, p3}, LIa0;-><init>(Lorg/chromium/chrome/browser/profiles/Profile;)V

    .line 9
    iget-object p3, p0, LH40;->y:Ljava/lang/String;

    .line 10
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0700b5

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    new-instance v0, LG40;

    invoke-direct {v0, p0}, LG40;-><init>(LH40;)V

    .line 11
    invoke-virtual {p2, p3, p1, v0}, LIa0;->a(Ljava/lang/String;ILorg/chromium/chrome/browser/favicon/LargeIconBridge$LargeIconCallback;)Z

    goto :goto_0

    .line 12
    :cond_0
    iget-boolean p1, p3, Lorg/chromium/chrome/browser/contextmenu/ContextMenuParams;->j:Z

    if-eqz p1, :cond_1

    .line 13
    new-instance p1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 p2, 0x1

    .line 14
    iput-boolean p2, p1, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    .line 15
    iget-object p2, p0, LH40;->x:Landroid/content/Context;

    .line 16
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f080225

    .line 17
    invoke-static {p2, p3, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 18
    new-instance p2, Landroid/graphics/Canvas;

    invoke-direct {p2, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 19
    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3}, Landroid/graphics/Paint;-><init>()V

    .line 20
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    iget-object v1, p0, LH40;->x:Landroid/content/Context;

    .line 21
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060079

    .line 22
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 23
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 24
    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 25
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {p2, p1, v0, p3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    const/4 p2, 0x0

    .line 26
    invoke-virtual {p0, p1, p2}, LH40;->a(Landroid/graphics/Bitmap;Z)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/Bitmap;Z)V
    .locals 2

    if-eqz p2, :cond_0

    .line 1
    iget-object p2, p0, LH40;->w:Lle1;

    sget-object v0, LI40;->f:Lke1;

    invoke-virtual {p2, v0, p1}, Lle1;->a(Lke1;Ljava/lang/Object;)V

    return-void

    .line 2
    :cond_0
    iget-object p2, p0, LH40;->w:Lle1;

    sget-object v0, LI40;->g:Lhe1;

    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1}, Lle1;->a(Lhe1;Z)V

    .line 3
    iget-object p2, p0, LH40;->w:Lle1;

    sget-object v0, LI40;->f:Lke1;

    invoke-virtual {p2, v0, p1}, Lle1;->a(Lke1;Ljava/lang/Object;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    const/4 p1, 0x1

    const-string v0, "ContextMenu.URLClicked"

    .line 1
    invoke-static {v0, p1}, LfV;->a(Ljava/lang/String;Z)V

    .line 2
    iget-object v0, p0, LH40;->w:Lle1;

    sget-object v1, LI40;->e:Lje1;

    invoke-virtual {v0, v1}, Lle1;->a(Lee1;)I

    move-result v0

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_1

    .line 3
    iget-object v0, p0, LH40;->w:Lle1;

    sget-object v1, LI40;->a:Lke1;

    .line 4
    invoke-virtual {v0, v1}, Lle1;->a(Lfe1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 5
    iget-object v1, p0, LH40;->w:Lle1;

    sget-object v2, LI40;->e:Lje1;

    if-eqz v0, :cond_0

    const/4 p1, 0x2

    :cond_0
    invoke-virtual {v1, v2, p1}, Lle1;->a(Lje1;I)V

    goto :goto_0

    .line 6
    :cond_1
    iget-object p1, p0, LH40;->w:Lle1;

    sget-object v0, LI40;->e:Lje1;

    invoke-virtual {p1, v0, v1}, Lle1;->a(Lje1;I)V

    :goto_0
    return-void
.end method
