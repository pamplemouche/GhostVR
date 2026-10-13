.class public Lorg/chromium/chrome/browser/ui/widget/LoadingView;
.super Landroid/widget/ProgressBar;
.source "PG"


# instance fields
.field public w:J

.field public final x:Ljava/lang/Runnable;

.field public y:Z

.field public final z:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    const-wide/16 v0, -0x1

    .line 2
    iput-wide v0, p0, Lorg/chromium/chrome/browser/ui/widget/LoadingView;->w:J

    .line 3
    new-instance p1, LxM0;

    invoke-direct {p1, p0}, LxM0;-><init>(Lorg/chromium/chrome/browser/ui/widget/LoadingView;)V

    iput-object p1, p0, Lorg/chromium/chrome/browser/ui/widget/LoadingView;->x:Ljava/lang/Runnable;

    .line 4
    new-instance p1, LzM0;

    invoke-direct {p1, p0}, LzM0;-><init>(Lorg/chromium/chrome/browser/ui/widget/LoadingView;)V

    iput-object p1, p0, Lorg/chromium/chrome/browser/ui/widget/LoadingView;->z:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-wide/16 p1, -0x1

    .line 6
    iput-wide p1, p0, Lorg/chromium/chrome/browser/ui/widget/LoadingView;->w:J

    .line 7
    new-instance p1, LxM0;

    invoke-direct {p1, p0}, LxM0;-><init>(Lorg/chromium/chrome/browser/ui/widget/LoadingView;)V

    iput-object p1, p0, Lorg/chromium/chrome/browser/ui/widget/LoadingView;->x:Ljava/lang/Runnable;

    .line 8
    new-instance p1, LzM0;

    invoke-direct {p1, p0}, LzM0;-><init>(Lorg/chromium/chrome/browser/ui/widget/LoadingView;)V

    iput-object p1, p0, Lorg/chromium/chrome/browser/ui/widget/LoadingView;->z:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 7

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/ui/widget/LoadingView;->x:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/ProgressBar;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2
    iget-object v0, p0, Lorg/chromium/chrome/browser/ui/widget/LoadingView;->z:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/ProgressBar;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lorg/chromium/chrome/browser/ui/widget/LoadingView;->y:Z

    .line 4
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 5
    iget-object v0, p0, Lorg/chromium/chrome/browser/ui/widget/LoadingView;->z:Ljava/lang/Runnable;

    const-wide/16 v1, 0x0

    iget-wide v3, p0, Lorg/chromium/chrome/browser/ui/widget/LoadingView;->w:J

    const-wide/16 v5, 0x1f4

    add-long/2addr v3, v5

    .line 6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    sub-long/2addr v3, v5

    .line 7
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    .line 8
    invoke-virtual {p0, v0, v1, v2}, Landroid/widget/ProgressBar;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public b()V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/ui/widget/LoadingView;->x:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/ProgressBar;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2
    iget-object v0, p0, Lorg/chromium/chrome/browser/ui/widget/LoadingView;->z:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/ProgressBar;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lorg/chromium/chrome/browser/ui/widget/LoadingView;->y:Z

    const/16 v0, 0x8

    .line 4
    invoke-virtual {p0, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 5
    iget-object v0, p0, Lorg/chromium/chrome/browser/ui/widget/LoadingView;->x:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1f4

    invoke-virtual {p0, v0, v1, v2}, Landroid/widget/ProgressBar;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
