.class public abstract LWl0;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:I

.field public final b:I

.field public final c:LCM0;

.field public d:Ljava/lang/CharSequence;

.field public e:Ljava/lang/CharSequence;

.field public f:Ljava/lang/CharSequence;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/CharSequence;

.field public i:Landroid/graphics/Bitmap;

.field public j:I

.field public k:Landroid/graphics/Bitmap;

.field public l:Landroid/graphics/Bitmap;

.field public m:Ljava/lang/String;

.field public n:Lpm0;

.field public o:Lpm0;

.field public p:Ljava/util/List;

.field public q:LVl0;

.field public r:I

.field public s:[J

.field public t:J

.field public u:Z

.field public v:I

.field public w:Landroid/graphics/Bitmap;

.field public x:Z


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 10

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, LWl0;->p:Ljava/util/List;

    const v0, 0x1050005

    .line 3
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, LWl0;->a:I

    const v2, 0x1050006

    .line 4
    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, LWl0;->b:I

    .line 5
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 6
    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 7
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    .line 8
    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v0

    div-int/lit8 v7, v0, 0x2

    .line 9
    new-instance v0, LCM0;

    const/high16 v1, 0x41e00000    # 28.0f

    mul-float v9, p1, v1

    const v8, -0x69696a

    move-object v4, v0

    invoke-direct/range {v4 .. v9}, LCM0;-><init>(IIIIF)V

    .line 10
    iput-object v0, p0, LWl0;->c:LCM0;

    return-void
.end method

.method public static a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2

    if-nez p0, :cond_0

    return-object p0

    .line 36
    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/16 v1, 0x1400

    if-le v0, v1, :cond_1

    const/4 v0, 0x0

    .line 37
    invoke-interface {p0, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method public static a(LPl0;LVl0;)V
    .locals 4

    .line 38
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 39
    iget-object v0, p1, LVl0;->b:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 40
    invoke-static {v0}, Landroid/graphics/drawable/Icon;->createWithBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    move-result-object v0

    .line 41
    new-instance v1, Landroid/app/Notification$Action$Builder;

    iget-object v2, p1, LVl0;->c:Ljava/lang/CharSequence;

    iget-object v3, p1, LVl0;->d:Landroid/app/PendingIntent;

    invoke-direct {v1, v0, v2, v3}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    goto :goto_0

    .line 42
    :cond_0
    new-instance v1, Landroid/app/Notification$Action$Builder;

    iget v0, p1, LVl0;->a:I

    iget-object v2, p1, LVl0;->c:Ljava/lang/CharSequence;

    iget-object v3, p1, LVl0;->d:Landroid/app/PendingIntent;

    invoke-direct {v1, v0, v2, v3}, Landroid/app/Notification$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 43
    :goto_0
    iget v0, p1, LVl0;->e:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 44
    new-instance v0, Landroid/app/RemoteInput$Builder;

    const-string v2, "key_text_reply"

    invoke-direct {v0, v2}, Landroid/app/RemoteInput$Builder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, LVl0;->g:Ljava/lang/String;

    .line 45
    invoke-virtual {v0, v2}, Landroid/app/RemoteInput$Builder;->setLabel(Ljava/lang/CharSequence;)Landroid/app/RemoteInput$Builder;

    move-result-object v0

    .line 46
    invoke-virtual {v0}, Landroid/app/RemoteInput$Builder;->build()Landroid/app/RemoteInput;

    move-result-object v0

    .line 47
    invoke-virtual {v1, v0}, Landroid/app/Notification$Action$Builder;->addRemoteInput(Landroid/app/RemoteInput;)Landroid/app/Notification$Action$Builder;

    .line 48
    :cond_1
    iget v0, p1, LVl0;->f:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_2

    .line 49
    invoke-virtual {v1}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object p1

    invoke-interface {p0, p1}, LPl0;->a(Landroid/app/Notification$Action;)LPl0;

    goto :goto_1

    .line 50
    :cond_2
    invoke-virtual {v1}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v0

    const/high16 v1, 0x8000000

    iget p1, p1, LVl0;->f:I

    invoke-interface {p0, v0, v1, p1}, LPl0;->a(Landroid/app/Notification$Action;II)LPl0;

    :goto_1
    return-void
.end method

.method public static a(LPl0;Ljava/lang/CharSequence;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 51
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Web:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, LPl0;->c(Ljava/lang/String;)LPl0;

    return-void
.end method

.method public static c(Landroid/graphics/Bitmap;)V
    .locals 4

    .line 2
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 3
    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    const/4 v3, -0x1

    invoke-direct {v1, v3, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 4
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, p0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v2, 0x0

    .line 5
    invoke-virtual {v1, p0, v2, v2, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public static d()Z
    .locals 9

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    return v2

    :cond_0
    if-ne v0, v1, :cond_2

    const/4 v0, 0x6

    const-string v7, "hisense"

    const-string v8, "leeco"

    const-string v3, "samsung"

    const-string v4, "yulong"

    const-string v5, "lenovo"

    const-string v6, "zuk"

    .line 2
    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_2

    aget-object v4, v1, v3

    .line 3
    sget-object v5, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    return v2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public abstract a(Lcm0;)LOl0;
.end method

.method public a(ILandroid/graphics/Bitmap;Ljava/lang/String;)LWl0;
    .locals 2

    .line 4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    .line 5
    invoke-static {}, LWl0;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {p0, p2}, LWl0;->b(Landroid/graphics/Bitmap;)LWl0;

    goto :goto_0

    :cond_0
    const-string p2, "AllowRemoteContextForNotifications"

    .line 7
    invoke-static {p2}, LJ/N;->MPiSwAE4(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 8
    iput-object p3, p0, LWl0;->m:Ljava/lang/String;

    .line 9
    iput p1, p0, LWl0;->j:I

    goto :goto_0

    .line 10
    :cond_1
    iput p1, p0, LWl0;->j:I

    :cond_2
    :goto_0
    return-object p0
.end method

.method public a(Landroid/graphics/Bitmap;)LWl0;
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 2
    invoke-static {p1}, LWl0;->c(Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 3
    :goto_0
    iput-object p1, p0, LWl0;->l:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public a(Landroid/content/Context;)Landroid/app/Notification;
    .locals 4

    .line 21
    iget-object v0, p0, LWl0;->g:Ljava/lang/String;

    const/4 v1, 0x0

    .line 22
    invoke-static {v1, v0}, LXl0;->a(ZLjava/lang/String;)LPl0;

    move-result-object v0

    const v2, 0x7f130428

    .line 23
    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, LPl0;->c(Ljava/lang/CharSequence;)LPl0;

    move-result-object p1

    const v0, 0x7f08010d

    .line 24
    invoke-interface {p1, v0}, LPl0;->c(I)LPl0;

    move-result-object p1

    .line 25
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-le v0, v2, :cond_0

    .line 26
    iget-object v0, p0, LWl0;->f:Ljava/lang/CharSequence;

    invoke-interface {p1, v0}, LPl0;->a(Ljava/lang/CharSequence;)LPl0;

    goto :goto_0

    .line 27
    :cond_0
    iget-object v0, p0, LWl0;->f:Ljava/lang/CharSequence;

    invoke-interface {p1, v0}, LPl0;->d(Ljava/lang/CharSequence;)LPl0;

    .line 28
    invoke-interface {p1, v1}, LPl0;->b(Z)LPl0;

    .line 29
    :goto_0
    iget-object v0, p0, LWl0;->k:Landroid/graphics/Bitmap;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v2, :cond_1

    .line 30
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    .line 31
    invoke-virtual {v0, v2, v1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 32
    invoke-static {v0}, Landroid/graphics/drawable/Icon;->createWithBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    move-result-object v0

    invoke-interface {p1, v0}, LPl0;->a(Landroid/graphics/drawable/Icon;)LPl0;

    goto :goto_1

    .line 33
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt v0, v2, :cond_2

    iget-object v0, p0, LWl0;->f:Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    .line 34
    iget-object v2, p0, LWl0;->c:LCM0;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0, v1}, LCM0;->a(Ljava/lang/String;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-interface {p1, v0}, LPl0;->a(Landroid/graphics/Bitmap;)LPl0;

    .line 35
    :cond_2
    :goto_1
    invoke-interface {p1}, LPl0;->a()Landroid/app/Notification;

    move-result-object p1

    return-object p1
.end method

.method public a()Landroid/graphics/Bitmap;
    .locals 4

    .line 15
    iget-boolean v0, p0, LWl0;->x:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 16
    :cond_0
    iget-object v0, p0, LWl0;->w:Landroid/graphics/Bitmap;

    iget-object v2, p0, LWl0;->f:Ljava/lang/CharSequence;

    if-eqz v0, :cond_3

    .line 17
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    .line 18
    :cond_1
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget v2, p0, LWl0;->a:I

    if-gt v1, v2, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iget v2, p0, LWl0;->b:I

    if-le v1, v2, :cond_5

    .line 19
    :cond_2
    iget v1, p0, LWl0;->a:I

    iget v2, p0, LWl0;->b:I

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_1

    :cond_3
    :goto_0
    if-eqz v2, :cond_4

    .line 20
    iget-object v0, p0, LWl0;->c:LCM0;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, LCM0;->a(Ljava/lang/String;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    :cond_4
    move-object v0, v1

    :cond_5
    :goto_1
    return-object v0
.end method

.method public final a(Landroid/graphics/Bitmap;Ljava/lang/CharSequence;Landroid/app/PendingIntent;ILjava/lang/String;)V
    .locals 8

    .line 11
    iget-object v0, p0, LWl0;->p:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    if-eqz p1, :cond_0

    .line 12
    invoke-static {p1}, LWl0;->c(Landroid/graphics/Bitmap;)V

    .line 13
    :cond_0
    iget-object v0, p0, LWl0;->p:Ljava/util/List;

    new-instance v7, LVl0;

    invoke-static {p2}, LWl0;->a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    move-object v1, v7

    move-object v2, p1

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, LVl0;-><init>(Landroid/graphics/Bitmap;Ljava/lang/CharSequence;Landroid/app/PendingIntent;ILjava/lang/String;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 14
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot add more than 2 actions."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b(Landroid/graphics/Bitmap;)LWl0;
    .locals 2

    .line 1
    invoke-static {}, LWl0;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 3
    invoke-static {p1}, LWl0;->c(Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 4
    :goto_0
    iput-object p1, p0, LWl0;->k:Landroid/graphics/Bitmap;

    :cond_1
    return-object p0
.end method

.method public b()Z
    .locals 1

    .line 5
    iget-object v0, p0, LWl0;->l:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public c()Z
    .locals 1

    .line 1
    iget-object v0, p0, LWl0;->k:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
