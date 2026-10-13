.class public LQ20;
.super Landroid/content/BroadcastReceiver;
.source "PG"


# instance fields
.field public final synthetic a:Lorg/chromium/chrome/browser/compositor/CompositorView;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/compositor/CompositorView;)V
    .locals 2

    .line 1
    iput-object p1, p0, LQ20;->a:Lorg/chromium/chrome/browser/compositor/CompositorView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 2
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, LQ20;->a:Lorg/chromium/chrome/browser/compositor/CompositorView;

    .line 2
    iget-object p2, p1, Lorg/chromium/chrome/browser/compositor/CompositorView;->x:LK20;

    if-eqz p2, :cond_1

    .line 3
    iget-boolean v0, p1, Lorg/chromium/chrome/browser/compositor/CompositorView;->K:Z

    if-nez v0, :cond_1

    .line 4
    iget-wide v0, p1, Lorg/chromium/chrome/browser/compositor/CompositorView;->B:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_1

    .line 5
    check-cast p2, LP20;

    invoke-virtual {p2}, LP20;->a()V

    .line 6
    iget-object p1, p0, LQ20;->a:Lorg/chromium/chrome/browser/compositor/CompositorView;

    if-eqz p1, :cond_0

    .line 7
    new-instance p2, LP20;

    invoke-direct {p2, p1, p1}, LP20;-><init>(Landroid/view/ViewGroup;LJ20;)V

    iput-object p2, p1, Lorg/chromium/chrome/browser/compositor/CompositorView;->x:LK20;

    .line 8
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/compositor/CompositorView;->b()I

    move-result v0

    invoke-virtual {p2, v0}, LP20;->a(I)V

    .line 9
    iget-wide v0, p1, Lorg/chromium/chrome/browser/compositor/CompositorView;->B:J

    .line 10
    invoke-static {v0, v1, p1}, LJ/N;->M_Nkznfe(JLjava/lang/Object;)V

    .line 11
    iget-object p2, p1, Lorg/chromium/chrome/browser/compositor/CompositorView;->x:LK20;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p1

    check-cast p2, LP20;

    .line 12
    iget-object v0, p2, LP20;->w:LO20;

    iget-object v0, v0, LO20;->a:Landroid/view/SurfaceView;

    invoke-virtual {v0, p1}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 13
    iget-object p2, p2, LP20;->x:LO20;

    iget-object p2, p2, LO20;->a:Landroid/view/SurfaceView;

    invoke-virtual {p2, p1}, Landroid/view/SurfaceView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 14
    throw p1

    :cond_1
    :goto_0
    return-void
.end method
