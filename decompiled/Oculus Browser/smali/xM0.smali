.class public LxM0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic w:Lorg/chromium/chrome/browser/ui/widget/LoadingView;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/ui/widget/LoadingView;)V
    .locals 0

    .line 1
    iput-object p1, p0, LxM0;->w:Lorg/chromium/chrome/browser/ui/widget/LoadingView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, LxM0;->w:Lorg/chromium/chrome/browser/ui/widget/LoadingView;

    .line 2
    iget-boolean v1, v0, Lorg/chromium/chrome/browser/ui/widget/LoadingView;->y:Z

    if-nez v1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 4
    iput-wide v1, v0, Lorg/chromium/chrome/browser/ui/widget/LoadingView;->w:J

    .line 5
    iget-object v0, p0, LxM0;->w:Lorg/chromium/chrome/browser/ui/widget/LoadingView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 6
    iget-object v0, p0, LxM0;->w:Lorg/chromium/chrome/browser/ui/widget/LoadingView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setAlpha(F)V

    return-void
.end method
