.class public Lcc0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic w:Landroid/app/Activity;

.field public final synthetic x:Lorg/chromium/chrome/browser/feedback/ScreenshotTask;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/feedback/ScreenshotTask;Landroid/app/Activity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcc0;->x:Lorg/chromium/chrome/browser/feedback/ScreenshotTask;

    iput-object p2, p0, Lcc0;->w:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcc0;->w:Landroid/app/Activity;

    .line 2
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/16 v2, 0x258

    .line 3
    invoke-static {v0, v2, v1}, Lwc1;->a(Landroid/view/View;ILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 4
    iget-object v0, p0, Lcc0;->x:Lorg/chromium/chrome/browser/feedback/ScreenshotTask;

    const/4 v1, 0x1

    .line 5
    iput-boolean v1, v0, Lorg/chromium/chrome/browser/feedback/ScreenshotTask;->b:Z

    .line 6
    iget-object v1, v0, Lorg/chromium/chrome/browser/feedback/ScreenshotTask;->c:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    :cond_0
    const/4 v1, 0x0

    .line 7
    iput-object v1, v0, Lorg/chromium/chrome/browser/feedback/ScreenshotTask;->c:Ljava/lang/Runnable;

    return-void
.end method
