.class public Lorg/chromium/chrome/browser/tab/TabFavicon;
.super LFH0;
.source "PG"


# static fields
.field public static final E:Ljava/lang/Class;


# instance fields
.field public A:Landroid/graphics/Bitmap;

.field public B:I

.field public C:I

.field public D:Ljava/lang/String;

.field public final x:Lorg/chromium/chrome/browser/tab/Tab;

.field public final y:J

.field public final z:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lorg/chromium/chrome/browser/tab/TabFavicon;

    sput-object v0, Lorg/chromium/chrome/browser/tab/TabFavicon;->E:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, LFH0;-><init>(Lorg/chromium/chrome/browser/tab/Tab;)V

    .line 2
    iget-object v0, p1, Lorg/chromium/chrome/browser/tab/Tab;->d:Landroid/content/Context;

    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0700b6

    .line 4
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lorg/chromium/chrome/browser/tab/TabFavicon;->z:I

    .line 5
    iput-object p1, p0, Lorg/chromium/chrome/browser/tab/TabFavicon;->x:Lorg/chromium/chrome/browser/tab/Tab;

    .line 6
    invoke-static {p0}, LJ/N;->MMZhE4x7(Ljava/lang/Object;)J

    move-result-wide v0

    .line 7
    iput-wide v0, p0, Lorg/chromium/chrome/browser/tab/TabFavicon;->y:J

    return-void
.end method

.method public static a(Lorg/chromium/chrome/browser/tab/Tab;)Lorg/chromium/chrome/browser/tab/TabFavicon;
    .locals 1

    if-eqz p0, :cond_1

    .line 1
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tab/Tab;->r()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p0, p0, Lorg/chromium/chrome/browser/tab/Tab;->I:LyU;

    .line 3
    sget-object v0, Lorg/chromium/chrome/browser/tab/TabFavicon;->E:Ljava/lang/Class;

    invoke-virtual {p0, v0}, LyU;->a(Ljava/lang/Class;)LxU;

    move-result-object p0

    check-cast p0, Lorg/chromium/chrome/browser/tab/TabFavicon;

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static b(Lorg/chromium/chrome/browser/tab/Tab;)Landroid/graphics/Bitmap;
    .locals 3

    .line 1
    invoke-static {p0}, Lorg/chromium/chrome/browser/tab/TabFavicon;->a(Lorg/chromium/chrome/browser/tab/Tab;)Lorg/chromium/chrome/browser/tab/TabFavicon;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 2
    iget-object v1, p0, Lorg/chromium/chrome/browser/tab/TabFavicon;->x:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/tab/Tab;->isNativePage()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lorg/chromium/chrome/browser/tab/TabFavicon;->x:Lorg/chromium/chrome/browser/tab/Tab;

    .line 3
    iget-object v2, v1, Lorg/chromium/chrome/browser/tab/Tab;->g:Lorg/chromium/content_public/browser/WebContents;

    if-nez v2, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/TabFavicon;->A:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/TabFavicon;->D:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/tab/Tab;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    iget-object p0, p0, Lorg/chromium/chrome/browser/tab/TabFavicon;->A:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 6
    :cond_1
    iget-wide v0, p0, Lorg/chromium/chrome/browser/tab/TabFavicon;->y:J

    .line 7
    invoke-static {v0, v1, p0}, LJ/N;->MmmF426r(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Bitmap;

    :goto_0
    move-object v0, p0

    :cond_2
    :goto_1
    return-object v0
.end method

.method private onFaviconAvailable(Landroid/graphics/Bitmap;)V
    .locals 7

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/TabFavicon;->x:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lorg/chromium/chrome/browser/tab/TabFavicon;->D:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    if-nez v1, :cond_9

    .line 3
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 4
    iget v4, p0, Lorg/chromium/chrome/browser/tab/TabFavicon;->z:I

    const/4 v5, 0x0

    if-ne v1, v4, :cond_1

    if-ne v3, v4, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    if-eqz v4, :cond_2

    goto :goto_1

    .line 5
    :cond_2
    iget v4, p0, Lorg/chromium/chrome/browser/tab/TabFavicon;->B:I

    iget v6, p0, Lorg/chromium/chrome/browser/tab/TabFavicon;->C:I

    if-eq v4, v6, :cond_3

    if-ne v1, v3, :cond_3

    goto :goto_1

    .line 6
    :cond_3
    iget v4, p0, Lorg/chromium/chrome/browser/tab/TabFavicon;->B:I

    iget v6, p0, Lorg/chromium/chrome/browser/tab/TabFavicon;->C:I

    if-ne v4, v6, :cond_4

    if-eq v1, v3, :cond_4

    goto :goto_2

    .line 7
    :cond_4
    iget v4, p0, Lorg/chromium/chrome/browser/tab/TabFavicon;->B:I

    iget v6, p0, Lorg/chromium/chrome/browser/tab/TabFavicon;->z:I

    if-lt v4, v6, :cond_5

    iget v4, p0, Lorg/chromium/chrome/browser/tab/TabFavicon;->C:I

    if-lt v4, v6, :cond_5

    goto :goto_2

    .line 8
    :cond_5
    iget v4, p0, Lorg/chromium/chrome/browser/tab/TabFavicon;->B:I

    if-le v1, v4, :cond_6

    iget v4, p0, Lorg/chromium/chrome/browser/tab/TabFavicon;->C:I

    if-ge v3, v4, :cond_7

    :cond_6
    iget v4, p0, Lorg/chromium/chrome/browser/tab/TabFavicon;->B:I

    if-lt v1, v4, :cond_8

    iget v1, p0, Lorg/chromium/chrome/browser/tab/TabFavicon;->C:I

    if-le v3, v1, :cond_8

    :cond_7
    :goto_1
    const/4 v5, 0x1

    :cond_8
    :goto_2
    if-eqz v5, :cond_a

    .line 9
    :cond_9
    iget v1, p0, Lorg/chromium/chrome/browser/tab/TabFavicon;->z:I

    invoke-static {p1, v1, v1, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lorg/chromium/chrome/browser/tab/TabFavicon;->A:Landroid/graphics/Bitmap;

    .line 10
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iput v1, p0, Lorg/chromium/chrome/browser/tab/TabFavicon;->B:I

    .line 11
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iput v1, p0, Lorg/chromium/chrome/browser/tab/TabFavicon;->C:I

    .line 12
    iput-object v0, p0, Lorg/chromium/chrome/browser/tab/TabFavicon;->D:Ljava/lang/String;

    .line 13
    :cond_a
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/TabFavicon;->x:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->m()LVT;

    move-result-object v0

    .line 14
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LpH0;

    iget-object v2, p0, Lorg/chromium/chrome/browser/tab/TabFavicon;->x:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-interface {v1, v2, p1}, LpH0;->onFaviconUpdated(Lorg/chromium/chrome/browser/tab/Tab;Landroid/graphics/Bitmap;)V

    goto :goto_3

    :cond_b
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 6
    iget-wide v0, p0, Lorg/chromium/chrome/browser/tab/TabFavicon;->y:J

    .line 7
    invoke-static {v0, v1, p0}, LJ/N;->M221q0MR(JLjava/lang/Object;)V

    return-void
.end method

.method public a(Lorg/chromium/content_public/browser/WebContents;)V
    .locals 2

    .line 4
    iget-wide v0, p0, Lorg/chromium/chrome/browser/tab/TabFavicon;->y:J

    .line 5
    invoke-static {v0, v1, p0}, LJ/N;->Mmp1Icg1(JLjava/lang/Object;)V

    return-void
.end method

.method public b(Lorg/chromium/content_public/browser/WebContents;)V
    .locals 2

    .line 8
    iget-wide v0, p0, Lorg/chromium/chrome/browser/tab/TabFavicon;->y:J

    .line 9
    invoke-static {v0, v1, p0, p1}, LJ/N;->MP93Z_9Y(JLjava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
