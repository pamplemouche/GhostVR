.class public Lorg/chromium/ui/display/DisplayAndroidManager;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static f:Lorg/chromium/ui/display/DisplayAndroidManager;


# instance fields
.field public a:J

.field public b:I

.field public final c:Landroid/util/SparseArray;

.field public d:Led1;

.field public e:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lorg/chromium/ui/display/DisplayAndroidManager;->c:Landroid/util/SparseArray;

    .line 3
    new-instance v0, Led1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Led1;-><init>(Lorg/chromium/ui/display/DisplayAndroidManager;Ldd1;)V

    iput-object v0, p0, Lorg/chromium/ui/display/DisplayAndroidManager;->d:Led1;

    const v0, 0x3fffffff    # 1.9999999f

    .line 4
    iput v0, p0, Lorg/chromium/ui/display/DisplayAndroidManager;->e:I

    return-void
.end method

.method public static a(Landroid/content/Context;)Landroid/view/Display;
    .locals 1

    const-string v0, "window"

    .line 21
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    .line 22
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    return-object p0
.end method

.method public static a()Lorg/chromium/ui/display/DisplayAndroidManager;
    .locals 7

    .line 1
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    .line 2
    sget-object v0, Lorg/chromium/ui/display/DisplayAndroidManager;->f:Lorg/chromium/ui/display/DisplayAndroidManager;

    if-nez v0, :cond_3

    .line 3
    new-instance v0, Lorg/chromium/ui/display/DisplayAndroidManager;

    invoke-direct {v0}, Lorg/chromium/ui/display/DisplayAndroidManager;-><init>()V

    sput-object v0, Lorg/chromium/ui/display/DisplayAndroidManager;->f:Lorg/chromium/ui/display/DisplayAndroidManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 4
    sget-object v2, LzT;->a:Landroid/content/Context;

    const-string v3, "display"

    .line 5
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/display/DisplayManager;

    const/4 v4, 0x0

    .line 6
    invoke-virtual {v2, v4}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v2

    if-nez v2, :cond_0

    .line 7
    sget-object v2, LzT;->a:Landroid/content/Context;

    .line 8
    invoke-static {v2}, Lorg/chromium/ui/display/DisplayAndroidManager;->a(Landroid/content/Context;)Landroid/view/Display;

    move-result-object v2

    .line 9
    :cond_0
    invoke-virtual {v2}, Landroid/view/Display;->getDisplayId()I

    move-result v4

    iput v4, v0, Lorg/chromium/ui/display/DisplayAndroidManager;->b:I

    .line 10
    invoke-virtual {v2}, Landroid/view/Display;->getDisplayId()I

    move-result v4

    .line 11
    new-instance v5, Lfd1;

    invoke-direct {v5, v2}, Lfd1;-><init>(Landroid/view/Display;)V

    .line 12
    iget-object v6, v0, Lorg/chromium/ui/display/DisplayAndroidManager;->c:Landroid/util/SparseArray;

    invoke-virtual {v6, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 13
    invoke-virtual {v5, v2}, Lfd1;->a(Landroid/view/Display;)V

    .line 14
    iget-object v0, v0, Lorg/chromium/ui/display/DisplayAndroidManager;->d:Led1;

    if-eqz v0, :cond_1

    .line 15
    sget-object v2, LzT;->a:Landroid/content/Context;

    .line 16
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/display/DisplayManager;

    .line 17
    invoke-virtual {v2, v0, v1}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    goto :goto_0

    .line 18
    :cond_1
    throw v1

    .line 19
    :cond_2
    throw v1

    .line 20
    :cond_3
    :goto_0
    sget-object v0, Lorg/chromium/ui/display/DisplayAndroidManager;->f:Lorg/chromium/ui/display/DisplayAndroidManager;

    return-object v0
.end method

.method public static onNativeSideCreated(J)V
    .locals 2

    .line 1
    invoke-static {}, Lorg/chromium/ui/display/DisplayAndroidManager;->a()Lorg/chromium/ui/display/DisplayAndroidManager;

    move-result-object v0

    .line 2
    iput-wide p0, v0, Lorg/chromium/ui/display/DisplayAndroidManager;->a:J

    .line 3
    iget v1, v0, Lorg/chromium/ui/display/DisplayAndroidManager;->b:I

    .line 4
    invoke-static {p0, p1, v0, v1}, LJ/N;->MdOwtyr6(JLjava/lang/Object;I)V

    const/4 p0, 0x0

    .line 5
    :goto_0
    iget-object p1, v0, Lorg/chromium/ui/display/DisplayAndroidManager;->c:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    if-ge p0, p1, :cond_0

    .line 6
    iget-object p1, v0, Lorg/chromium/ui/display/DisplayAndroidManager;->c:Landroid/util/SparseArray;

    invoke-virtual {p1, p0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcd1;

    invoke-virtual {v0, p1}, Lorg/chromium/ui/display/DisplayAndroidManager;->a(Lcd1;)V

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lcd1;)V
    .locals 12

    .line 23
    iget-wide v0, p0, Lorg/chromium/ui/display/DisplayAndroidManager;->a:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-void

    .line 24
    :cond_0
    iget v3, p1, Lcd1;->b:I

    .line 25
    iget-object v2, p1, Lcd1;->c:Landroid/graphics/Point;

    iget v4, v2, Landroid/graphics/Point;->x:I

    .line 26
    iget v5, v2, Landroid/graphics/Point;->y:I

    .line 27
    iget v6, p1, Lcd1;->d:F

    .line 28
    iget v2, p1, Lcd1;->g:I

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v2, :cond_4

    if-eq v2, v8, :cond_3

    const/4 v9, 0x2

    if-eq v2, v9, :cond_2

    const/4 v9, 0x3

    if-eq v2, v9, :cond_1

    goto :goto_0

    :cond_1
    const/16 v2, 0x10e

    const/16 v9, 0x10e

    goto :goto_1

    :cond_2
    const/16 v2, 0xb4

    const/16 v9, 0xb4

    goto :goto_1

    :cond_3
    const/16 v2, 0x5a

    const/16 v9, 0x5a

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v9, 0x0

    .line 29
    :goto_1
    iget v10, p1, Lcd1;->e:I

    .line 30
    iget v11, p1, Lcd1;->f:I

    .line 31
    iget-boolean v2, p1, Lcd1;->k:Z

    if-eqz v2, :cond_5

    iget-boolean p1, p1, Lcd1;->l:Z

    if-eqz p1, :cond_5

    const/4 p1, 0x1

    goto :goto_2

    :cond_5
    const/4 p1, 0x0

    :goto_2
    move-object v2, p0

    move v7, v9

    move v8, v10

    move v9, v11

    move v10, p1

    .line 32
    invoke-static/range {v0 .. v10}, LJ/N;->M2$ANfTC(JLjava/lang/Object;IIIFIIIZ)V

    return-void
.end method
