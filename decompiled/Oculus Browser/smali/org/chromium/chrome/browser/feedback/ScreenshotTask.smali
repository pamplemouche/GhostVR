.class public final Lorg/chromium/chrome/browser/feedback/ScreenshotTask;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lac0;


# instance fields
.field public final a:Landroid/app/Activity;

.field public b:Z

.field public c:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/chromium/chrome/browser/feedback/ScreenshotTask;->a:Landroid/app/Activity;

    return-void
.end method

.method private onBytesReceived([B)V
    .locals 2

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 1
    array-length v1, p1

    invoke-static {p1, v0, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    :cond_0
    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lorg/chromium/chrome/browser/feedback/ScreenshotTask;->b:Z

    .line 3
    iget-object p1, p0, Lorg/chromium/chrome/browser/feedback/ScreenshotTask;->c:Ljava/lang/Runnable;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_1
    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lorg/chromium/chrome/browser/feedback/ScreenshotTask;->c:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Runnable;)V
    .locals 5

    .line 1
    iput-object p1, p0, Lorg/chromium/chrome/browser/feedback/ScreenshotTask;->c:Ljava/lang/Runnable;

    .line 2
    iget-object p1, p0, Lorg/chromium/chrome/browser/feedback/ScreenshotTask;->a:Landroid/app/Activity;

    .line 3
    instance-of v0, p1, Lorg/chromium/chrome/browser/ChromeActivity;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/chromium/chrome/browser/ChromeActivity;

    .line 5
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/ChromeActivity;->k0()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v3

    .line 6
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/ChromeActivity;->p0()Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 7
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/ChromeActivity;->p0()Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;

    move-result-object v0

    .line 8
    iget-boolean v0, v0, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->U:Z

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    if-nez v3, :cond_2

    goto :goto_0

    .line 9
    :cond_2
    invoke-virtual {v3}, Lorg/chromium/chrome/browser/tab/Tab;->isUserInteractable()Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    .line 10
    :cond_3
    iget-object v0, v3, Lorg/chromium/chrome/browser/tab/Tab;->f:Lsl0;

    if-nez v0, :cond_4

    .line 11
    invoke-static {v3}, LaH0;->a(Lorg/chromium/chrome/browser/tab/Tab;)Z

    move-result v0

    if-nez v0, :cond_4

    :goto_0
    const/4 v0, 0x1

    goto :goto_2

    :cond_4
    :goto_1
    const/4 v0, 0x0

    :goto_2
    if-nez v0, :cond_5

    const/4 p1, 0x0

    goto :goto_3

    .line 12
    :cond_5
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 13
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 14
    check-cast p1, Lorg/chromium/chrome/browser/ChromeActivity;

    .line 15
    invoke-virtual {p1}, LBg0;->Q()LDc1;

    move-result-object p1

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    .line 16
    invoke-static {p0, p1, v3, v0}, LJ/N;->MJ03E235(Ljava/lang/Object;Ljava/lang/Object;II)V

    const/4 p1, 0x1

    :goto_3
    if-eqz p1, :cond_6

    return-void

    .line 17
    :cond_6
    iget-object p1, p0, Lorg/chromium/chrome/browser/feedback/ScreenshotTask;->a:Landroid/app/Activity;

    const-wide/16 v3, 0x0

    if-nez p1, :cond_7

    goto :goto_4

    .line 18
    :cond_7
    sget-object v0, LZ01;->a:LFW;

    new-instance v1, Lcc0;

    invoke-direct {v1, p0, p1}, Lcc0;-><init>(Lorg/chromium/chrome/browser/feedback/ScreenshotTask;Landroid/app/Activity;)V

    .line 19
    invoke-static {v0, v1, v3, v4}, Lorg/chromium/base/task/PostTask;->a(LFW;Ljava/lang/Runnable;J)V

    const/4 v1, 0x1

    :goto_4
    if-eqz v1, :cond_8

    return-void

    .line 20
    :cond_8
    sget-object p1, LZ01;->a:LFW;

    new-instance v0, Lbc0;

    invoke-direct {v0, p0}, Lbc0;-><init>(Lorg/chromium/chrome/browser/feedback/ScreenshotTask;)V

    .line 21
    invoke-static {p1, v0, v3, v4}, Lorg/chromium/base/task/PostTask;->a(LFW;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public a()Z
    .locals 1

    .line 22
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/feedback/ScreenshotTask;->b:Z

    return v0
.end method
