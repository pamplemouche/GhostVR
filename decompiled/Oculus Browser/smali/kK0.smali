.class public LkK0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LiQ0;
.implements LsK0;
.implements LVp0;
.implements Ld00;
.implements LO00;


# instance fields
.field public final A:LfL0;

.field public final B:Lorg/chromium/chrome/browser/toolbar/top/ToolbarControlContainer;

.field public C:LxI0;

.field public D:LlI0;

.field public E:LjK0;

.field public final F:Lorg/chromium/chrome/browser/toolbar/LocationBarModel;

.field public final G:LST;

.field public H:Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;

.field public I:LlU0;

.field public J:LWo0;

.field public K:Lxc0;

.field public L:LK00;

.field public M:LGJ0;

.field public N:LpH0;

.field public O:LP10;

.field public P:Lyc0;

.field public Q:Lv30;

.field public R:Lx30;

.field public final S:LyK0;

.field public T:LzK0;

.field public final U:LKK0;

.field public V:LiK0;

.field public final W:Lorg/chromium/base/Callback;

.field public final X:Landroid/os/Handler;

.field public final Y:Lorg/chromium/chrome/browser/ChromeActivity;

.field public Z:LVp0;

.field public a0:LOc0;

.field public b0:I

.field public c0:I

.field public d0:I

.field public e0:I

.field public f0:I

.field public g0:Z

.field public h0:Ly00;

.field public i0:LoN0;

.field public j0:Z

.field public k0:I

.field public l0:LLk0;

.field public m0:Z

.field public n0:LH00;

.field public final w:LJJ0;

.field public final x:LNJ0;

.field public final y:Lf00;

.field public final z:LCJ0;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, LUU;

    const-string v1, "MobileToolbarOmniboxAcceleratorTap"

    invoke-direct {v0, v1}, LUU;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lorg/chromium/chrome/browser/ChromeActivity;Lorg/chromium/chrome/browser/toolbar/top/ToolbarControlContainer;Lb30;Lorg/chromium/base/Callback;Lf00;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, LkK0;->X:Landroid/os/Handler;

    const/4 v0, -0x1

    .line 3
    iput v0, p0, LkK0;->b0:I

    .line 4
    iput v0, p0, LkK0;->c0:I

    .line 5
    iput v0, p0, LkK0;->d0:I

    .line 6
    iput v0, p0, LkK0;->e0:I

    .line 7
    iput v0, p0, LkK0;->f0:I

    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, LkK0;->j0:Z

    .line 9
    iput-object p1, p0, LkK0;->Y:Lorg/chromium/chrome/browser/ChromeActivity;

    .line 10
    new-instance v0, LgL0;

    invoke-direct {v0, p1, p2}, LgL0;-><init>(Lorg/chromium/chrome/browser/ChromeActivity;Landroid/view/View;)V

    iput-object v0, p0, LkK0;->S:LyK0;

    .line 11
    new-instance v0, Lorg/chromium/chrome/browser/toolbar/LocationBarModel;

    invoke-direct {v0, p1}, Lorg/chromium/chrome/browser/toolbar/LocationBarModel;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, LkK0;->F:Lorg/chromium/chrome/browser/toolbar/LocationBarModel;

    .line 12
    iput-object p2, p0, LkK0;->B:Lorg/chromium/chrome/browser/toolbar/top/ToolbarControlContainer;

    .line 13
    iput-object p4, p0, LkK0;->W:Lorg/chromium/base/Callback;

    .line 14
    new-instance p4, LKK0;

    invoke-direct {p4}, LKK0;-><init>()V

    iput-object p4, p0, LkK0;->U:LKK0;

    .line 15
    new-instance p4, LST;

    invoke-direct {p4}, LST;-><init>()V

    iput-object p4, p0, LkK0;->G:LST;

    .line 16
    new-instance p4, LYJ0;

    invoke-direct {p4, p0}, LYJ0;-><init>(LkK0;)V

    iput-object p4, p0, LkK0;->Z:LVp0;

    .line 17
    new-instance p4, LJJ0;

    invoke-direct {p4}, LJJ0;-><init>()V

    iput-object p4, p0, LkK0;->w:LJJ0;

    .line 18
    new-instance p4, LNJ0;

    invoke-direct {p4}, LNJ0;-><init>()V

    iput-object p4, p0, LkK0;->x:LNJ0;

    .line 19
    iput-object p5, p0, LkK0;->y:Lf00;

    .line 20
    iget-object p4, p5, Lf00;->A:LWT;

    invoke-virtual {p4, p0}, LWT;->a(Ljava/lang/Object;)Z

    .line 21
    new-instance p4, LCJ0;

    iget-object p5, p0, LkK0;->Y:Lorg/chromium/chrome/browser/ChromeActivity;

    invoke-direct {p4, p5}, LCJ0;-><init>(Landroid/content/Context;)V

    iput-object p4, p0, LkK0;->z:LCJ0;

    .line 22
    new-instance p4, LfL0;

    iget-object p5, p0, LkK0;->Y:Lorg/chromium/chrome/browser/ChromeActivity;

    const v0, 0x7f0b04a0

    .line 23
    invoke-virtual {p5, v0}, LQ8;->findViewById(I)Landroid/view/View;

    move-result-object p5

    check-cast p5, LQK0;

    invoke-direct {p4, p2, p5}, LfL0;-><init>(Lorg/chromium/chrome/browser/toolbar/top/ToolbarControlContainer;LQK0;)V

    iput-object p4, p0, LkK0;->A:LfL0;

    .line 24
    new-instance p2, LzK0;

    iget-object p4, p0, LkK0;->Y:Lorg/chromium/chrome/browser/ChromeActivity;

    iget-object p5, p0, LkK0;->S:LyK0;

    invoke-direct {p2, p4, p5}, LzK0;-><init>(Landroid/content/Context;LyK0;)V

    iput-object p2, p0, LkK0;->T:LzK0;

    .line 25
    iget-object p4, p0, LkK0;->U:LKK0;

    .line 26
    iget-object p5, p2, LzK0;->a:LKK0;

    invoke-virtual {p4, p5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_0

    goto :goto_0

    .line 27
    :cond_0
    iput-object p4, p2, LzK0;->a:LKK0;

    .line 28
    iput-object p2, p4, LKK0;->a:LzK0;

    .line 29
    :goto_0
    new-instance p2, LGJ0;

    .line 30
    invoke-virtual {p1}, LBg0;->M()Lqi0;

    move-result-object p4

    invoke-direct {p2, p1, p0, p4}, LGJ0;-><init>(Landroid/content/Context;LkK0;Lqi0;)V

    iput-object p2, p0, LkK0;->M:LGJ0;

    .line 31
    iget-object p2, p0, LkK0;->A:LfL0;

    .line 32
    iget-object p2, p2, LfL0;->a:LQK0;

    .line 33
    iput-object p3, p2, LQK0;->w:Lb30;

    .line 34
    iget-object p3, p0, LkK0;->T:LzK0;

    .line 35
    invoke-virtual {p2}, LQK0;->i()I

    move-result p2

    int-to-float p2, p2

    .line 36
    iput p2, p3, LzK0;->d:F

    .line 37
    iget-object p2, p0, LkK0;->A:LfL0;

    .line 38
    iget-object p2, p2, LfL0;->a:LQK0;

    invoke-virtual {p2}, LQK0;->f()LWo0;

    move-result-object p2

    .line 39
    iput-object p2, p0, LkK0;->J:LWo0;

    .line 40
    iget-object p3, p0, LkK0;->F:Lorg/chromium/chrome/browser/toolbar/LocationBarModel;

    invoke-interface {p2, p3}, LWo0;->a(LSJ0;)V

    .line 41
    iget-object p2, p0, LkK0;->J:LWo0;

    invoke-interface {p2, p0}, LGm0;->a(LVp0;)V

    .line 42
    iget-object p2, p0, LkK0;->J:LWo0;

    iget-object p3, p0, LkK0;->T:LzK0;

    .line 43
    iget-object p3, p3, LzK0;->a:LKK0;

    .line 44
    invoke-interface {p2, p3}, LWo0;->a(LKK0;)V

    .line 45
    iget-object p2, p0, LkK0;->J:LWo0;

    new-instance p3, Lk00;

    iget-object p4, p0, LkK0;->Y:Lorg/chromium/chrome/browser/ChromeActivity;

    invoke-virtual {p4}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p4

    invoke-direct {p3, p4}, Lk00;-><init>(Landroid/view/Window;)V

    iget-object p4, p0, LkK0;->Y:Lorg/chromium/chrome/browser/ChromeActivity;

    .line 46
    invoke-virtual {p4}, LBg0;->Q()LDc1;

    move-result-object p4

    iget-object p5, p0, LkK0;->Y:Lorg/chromium/chrome/browser/ChromeActivity;

    invoke-virtual {p5}, Lorg/chromium/chrome/browser/ChromeActivity;->l0()V

    const/4 p5, 0x0

    .line 47
    invoke-interface {p2, p3, p4, p5}, LWo0;->a(Lk00;Lorg/chromium/ui/base/WindowAndroid;LgY;)V

    .line 48
    iget-object p2, p0, LkK0;->J:LWo0;

    iget-object p3, p0, LkK0;->Z:LVp0;

    invoke-interface {p2, p3}, LGm0;->a(LVp0;)V

    .line 49
    iget-object p2, p0, LkK0;->A:LfL0;

    iget-object p3, p0, LkK0;->F:Lorg/chromium/chrome/browser/toolbar/LocationBarModel;

    .line 50
    iget-object p2, p2, LfL0;->a:LQK0;

    invoke-virtual {p2, p3, p0}, LQK0;->a(LSJ0;LsK0;)V

    .line 51
    iget-object p2, p0, LkK0;->A:LfL0;

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/ChromeActivity;->L0()LcM0;

    move-result-object p3

    .line 52
    iget-object p2, p2, LfL0;->a:LQK0;

    .line 53
    iget-object p2, p2, LQK0;->x:LWT;

    invoke-virtual {p2, p3}, LWT;->a(Ljava/lang/Object;)Z

    .line 54
    new-instance p2, LLk0;

    invoke-direct {p2, p1}, LLk0;-><init>(Lorg/chromium/chrome/browser/ChromeActivity;)V

    iput-object p2, p0, LkK0;->l0:LLk0;

    .line 55
    new-instance p1, LZJ0;

    invoke-direct {p1, p0}, LZJ0;-><init>(LkK0;)V

    iput-object p1, p0, LkK0;->C:LxI0;

    .line 56
    new-instance p1, LaK0;

    invoke-direct {p1, p0}, LaK0;-><init>(LkK0;)V

    iput-object p1, p0, LkK0;->D:LlI0;

    .line 57
    new-instance p1, LbK0;

    invoke-direct {p1, p0}, LbK0;-><init>(LkK0;)V

    iput-object p1, p0, LkK0;->N:LpH0;

    .line 58
    new-instance p1, LcK0;

    invoke-direct {p1, p0}, LcK0;-><init>(LkK0;)V

    iput-object p1, p0, LkK0;->O:LP10;

    .line 59
    new-instance p1, LdK0;

    invoke-direct {p1, p0}, LdK0;-><init>(LkK0;)V

    iput-object p1, p0, LkK0;->P:Lyc0;

    .line 60
    new-instance p1, LeK0;

    invoke-direct {p1, p0}, LeK0;-><init>(LkK0;)V

    iput-object p1, p0, LkK0;->Q:Lv30;

    .line 61
    new-instance p1, LfK0;

    invoke-direct {p1, p0}, LfK0;-><init>(LkK0;)V

    iput-object p1, p0, LkK0;->R:Lx30;

    .line 62
    new-instance p1, LiK0;

    invoke-direct {p1, p0}, LiK0;-><init>(LkK0;)V

    iput-object p1, p0, LkK0;->V:LiK0;

    .line 63
    iget-object p1, p0, LkK0;->A:LfL0;

    iget-object p2, p0, LkK0;->x:LNJ0;

    .line 64
    iget-object p3, p1, LfL0;->a:LQK0;

    invoke-virtual {p3, p2}, LQK0;->a(LNJ0;)V

    .line 65
    iget-object p1, p1, LfL0;->b:LIK0;

    if-eqz p1, :cond_2

    .line 66
    iget-object p1, p1, LIK0;->w:Lorg/chromium/chrome/browser/toolbar/top/TabSwitcherModeTTPhone;

    if-eqz p1, :cond_2

    .line 67
    iput-object p2, p1, Lorg/chromium/chrome/browser/toolbar/top/TabSwitcherModeTTPhone;->x:LNJ0;

    .line 68
    iget-object p3, p1, Lorg/chromium/chrome/browser/toolbar/top/TabSwitcherModeTTPhone;->D:Lorg/chromium/chrome/browser/toolbar/top/ToggleTabStackButton;

    if-eqz p3, :cond_1

    .line 69
    iput-object p2, p3, Lorg/chromium/chrome/browser/toolbar/top/ToggleTabStackButton;->A:LNJ0;

    .line 70
    invoke-virtual {p2, p3}, LNJ0;->a(LMJ0;)V

    .line 71
    :cond_1
    iget-object p1, p1, Lorg/chromium/chrome/browser/toolbar/top/TabSwitcherModeTTPhone;->z:Lorg/chromium/chrome/browser/toolbar/IncognitoToggleTabLayout;

    if-eqz p1, :cond_2

    .line 72
    iput-object p2, p1, Lorg/chromium/chrome/browser/toolbar/IncognitoToggleTabLayout;->x0:LNJ0;

    .line 73
    invoke-virtual {p2, p1}, LNJ0;->a(LMJ0;)V

    .line 74
    :cond_2
    iget-object p1, p0, LkK0;->A:LfL0;

    iget-object p2, p0, LkK0;->w:LJJ0;

    .line 75
    iget-object p1, p1, LfL0;->b:LIK0;

    if-eqz p1, :cond_3

    .line 76
    iget-object p1, p1, LIK0;->w:Lorg/chromium/chrome/browser/toolbar/top/TabSwitcherModeTTPhone;

    if-eqz p1, :cond_3

    .line 77
    iput-object p2, p1, Lorg/chromium/chrome/browser/toolbar/top/TabSwitcherModeTTPhone;->y:LJJ0;

    .line 78
    iget-object p3, p2, LJJ0;->a:LWT;

    invoke-virtual {p3, p1}, LWT;->a(Ljava/lang/Object;)Z

    .line 79
    invoke-virtual {p2}, LJJ0;->a()Z

    move-result p2

    invoke-interface {p1, p2}, LIJ0;->a(Z)V

    .line 80
    iget-object p2, p1, Lorg/chromium/chrome/browser/toolbar/top/TabSwitcherModeTTPhone;->B:Lorg/chromium/chrome/browser/toolbar/NewTabButton;

    if-eqz p2, :cond_3

    .line 81
    iget-object p1, p1, Lorg/chromium/chrome/browser/toolbar/top/TabSwitcherModeTTPhone;->y:LJJ0;

    .line 82
    iput-object p1, p2, Lorg/chromium/chrome/browser/toolbar/NewTabButton;->B:LJJ0;

    .line 83
    iget-object p3, p1, LJJ0;->a:LWT;

    invoke-virtual {p3, p2}, LWT;->a(Ljava/lang/Object;)Z

    .line 84
    invoke-virtual {p1}, LJJ0;->a()Z

    move-result p1

    invoke-interface {p2, p1}, LIJ0;->a(Z)V

    .line 85
    :cond_3
    iget-object p1, p0, LkK0;->A:LfL0;

    .line 86
    iget-object p2, p0, LkK0;->Y:Lorg/chromium/chrome/browser/ChromeActivity;

    invoke-virtual {p2}, LBg0;->S()Z

    move-result p2

    if-eqz p2, :cond_4

    iget-object p2, p0, LkK0;->z:LCJ0;

    goto :goto_1

    :cond_4
    iget-object p2, p0, LkK0;->y:Lf00;

    .line 87
    :goto_1
    invoke-virtual {p1}, LfL0;->a()Lorg/chromium/chrome/browser/toolbar/MenuButton;

    move-result-object p3

    if-eqz p3, :cond_5

    .line 88
    iput-object p2, p3, Lorg/chromium/chrome/browser/toolbar/MenuButton;->C:Lf00;

    .line 89
    iget-object p4, p2, Lf00;->B:LWT;

    invoke-virtual {p4, p3}, LWT;->a(Ljava/lang/Object;)Z

    .line 90
    :cond_5
    iget-object p1, p1, LfL0;->a:LQK0;

    .line 91
    iput-object p2, p1, LQK0;->H:Lf00;

    .line 92
    iget-object p2, p2, Lf00;->B:LWT;

    invoke-virtual {p2, p1}, LWT;->a(Ljava/lang/Object;)Z

    .line 93
    iget-object p2, p1, LQK0;->H:Lf00;

    .line 94
    iget-object p2, p2, Lf00;->A:LWT;

    invoke-virtual {p2, p1}, LWT;->a(Ljava/lang/Object;)Z

    return-void
.end method

.method public static synthetic a(LkK0;)V
    .locals 2

    .line 31
    iget p0, p0, LkK0;->f0:I

    const/4 v0, -0x1

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    .line 32
    throw v1

    .line 33
    :cond_0
    throw v1
.end method

.method public static synthetic a(LkK0;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, LkK0;->a(I)V

    return-void
.end method

.method public static synthetic a(LkK0;Z)V
    .locals 1

    .line 43
    iget-object v0, p0, LkK0;->V:LiK0;

    invoke-virtual {v0}, LiK0;->a()V

    .line 44
    iget-object p0, p0, LkK0;->A:LfL0;

    .line 45
    iget-object p0, p0, LfL0;->a:LQK0;

    .line 46
    iget-object p0, p0, LQK0;->D:LqK0;

    invoke-virtual {p0, p1}, LqK0;->a(Z)V

    return-void
.end method

.method public static synthetic b(LkK0;Z)V
    .locals 1

    .line 11
    iget-object v0, p0, LkK0;->J:LWo0;

    invoke-interface {v0, p1}, LWo0;->b(Z)V

    if-eqz p1, :cond_0

    .line 12
    invoke-virtual {p0}, LkK0;->d()V

    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public final a(I)V
    .locals 3

    .line 34
    iget-object v0, p0, LkK0;->F:Lorg/chromium/chrome/browser/toolbar/LocationBarModel;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/toolbar/LocationBarModel;->g()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 35
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->getUrl()Ljava/lang/String;

    move-result-object v1

    .line 36
    iget-boolean v0, v0, Lorg/chromium/chrome/browser/tab/Tab;->c:Z

    .line 37
    invoke-static {v1, v0}, Lul0;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x5

    .line 38
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 39
    iget-object v0, p0, LkK0;->A:LfL0;

    int-to-float v1, p1

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    .line 40
    iget-object v0, v0, LfL0;->a:LQK0;

    .line 41
    iget-object v0, v0, LQK0;->D:LqK0;

    invoke-virtual {v0, v1}, LqK0;->a(F)V

    const/16 v0, 0x64

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    .line 42
    invoke-virtual {p0, p1}, LkK0;->d(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final a(JLjava/lang/String;)V
    .locals 6

    .line 24
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sub-long/2addr v0, p1

    const-wide/16 v2, 0x7530

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    .line 25
    iget-object v4, p0, LkK0;->X:Landroid/os/Handler;

    new-instance v5, LTJ0;

    invoke-direct {v5, p0, p1, p2, p3}, LTJ0;-><init>(LkK0;JLjava/lang/String;)V

    sub-long/2addr v2, v0

    invoke-virtual {v4, v5, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_0
    const-string v0, "MobileStartup.ToolbarFirstDrawTime2."

    .line 26
    invoke-static {v0, p3}, LZi;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    iget-object v0, p0, LkK0;->A:LfL0;

    .line 27
    iget-object v0, v0, LfL0;->a:LQK0;

    .line 28
    iget-wide v0, v0, LQK0;->F:J

    sub-long/2addr v0, p1

    .line 29
    invoke-static {p3, v0, v1}, LfV;->c(Ljava/lang/String;J)V

    .line 30
    iget-object p1, p0, LkK0;->l0:LLk0;

    invoke-virtual {p1}, LLk0;->b()V

    return-void
.end method

.method public final a(LoT0;Ljava/lang/String;IILjava/lang/Integer;Z)V
    .locals 8

    .line 2
    new-instance v6, Lpf1;

    invoke-virtual {p0}, LkK0;->b()Landroid/view/View;

    move-result-object v0

    invoke-direct {v6, v0}, Lpf1;-><init>(Landroid/view/View;)V

    .line 3
    iget-object v0, p0, LkK0;->Y:Lorg/chromium/chrome/browser/ChromeActivity;

    invoke-virtual {v0}, LQ8;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0702f3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    const/4 v1, 0x0

    .line 4
    invoke-virtual {v6, v1, v1, v1, v0}, Lpf1;->a(IIII)V

    .line 5
    new-instance v7, LoN0;

    iget-object v1, p0, LkK0;->Y:Lorg/chromium/chrome/browser/ChromeActivity;

    .line 6
    invoke-virtual {p0}, LkK0;->b()Landroid/view/View;

    move-result-object v2

    const/4 v5, 0x1

    move-object v0, v7

    move v3, p3

    move v4, p4

    .line 7
    invoke-direct/range {v0 .. v6}, LoN0;-><init>(Landroid/content/Context;Landroid/view/View;IIZLhf1;)V

    .line 8
    iput-object v7, p0, LkK0;->i0:LoN0;

    const/4 p3, 0x1

    .line 9
    invoke-virtual {v7, p3}, LoN0;->a(Z)V

    .line 10
    iget-object p3, p0, LkK0;->i0:LoN0;

    new-instance p4, LVJ0;

    invoke-direct {p4, p0, p1, p2}, LVJ0;-><init>(LkK0;LoT0;Ljava/lang/String;)V

    .line 11
    iget-object p1, p3, LoN0;->y:Lef1;

    .line 12
    iget-object p1, p1, Lef1;->G:LWT;

    invoke-virtual {p1, p4}, LWT;->a(Ljava/lang/Object;)Z

    .line 13
    iget-object p1, p0, LkK0;->n0:LH00;

    check-cast p1, LI00;

    invoke-virtual {p1, p5, p6}, LI00;->a(Ljava/lang/Integer;Z)V

    .line 14
    iget-object p1, p0, LkK0;->i0:LoN0;

    invoke-virtual {p1}, LoN0;->b()V

    return-void
.end method

.method public a(Z)V
    .locals 6

    .line 15
    iget-object v0, p0, LkK0;->A:LfL0;

    .line 16
    iget-object v0, v0, LfL0;->a:LQK0;

    invoke-virtual {v0, p1}, LQK0;->e(Z)V

    if-eqz p1, :cond_0

    .line 17
    iget-object v0, p0, LkK0;->l0:LLk0;

    .line 18
    iget-wide v1, v0, LLk0;->d:J

    const-wide/16 v3, -0x1

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    .line 19
    iget v1, v0, LLk0;->b:I

    iput v1, v0, LLk0;->c:I

    .line 20
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, v0, LLk0;->d:J

    .line 21
    :cond_0
    iget-object v0, p0, LkK0;->K:Lxc0;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    .line 22
    iget-object p1, v0, Lxc0;->a:Lwc0;

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 23
    invoke-virtual {p1, v0}, Lwc0;->a(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method public b()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, LkK0;->A:LfL0;

    .line 2
    iget-object v0, v0, LfL0;->a:LQK0;

    invoke-virtual {v0}, LQK0;->g()Landroid/widget/ImageButton;

    move-result-object v0

    return-object v0
.end method

.method public b(IZ)V
    .locals 1

    .line 3
    iget-boolean v0, p0, LkK0;->j0:Z

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    iget v0, p0, LkK0;->k0:I

    if-eq v0, p1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    return-void

    .line 5
    :cond_2
    iput p1, p0, LkK0;->k0:I

    .line 6
    iget-object v0, p0, LkK0;->F:Lorg/chromium/chrome/browser/toolbar/LocationBarModel;

    .line 7
    iput p1, v0, Lorg/chromium/chrome/browser/toolbar/LocationBarModel;->c:I

    .line 8
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/toolbar/LocationBarModel;->r()V

    .line 9
    iget-object p1, p0, LkK0;->A:LfL0;

    .line 10
    iget-object p1, p1, LfL0;->a:LQK0;

    invoke-virtual {p1, p2}, LQK0;->d(Z)V

    return-void
.end method

.method public b(Z)V
    .locals 0

    return-void
.end method

.method public final c()V
    .locals 4

    .line 3
    iget-object v0, p0, LkK0;->F:Lorg/chromium/chrome/browser/toolbar/LocationBarModel;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/toolbar/LocationBarModel;->g()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 4
    invoke-static {v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;->a(Lorg/chromium/chrome/browser/tab/Tab;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 5
    iget-object v0, p0, LkK0;->H:Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 7
    :cond_2
    :goto_1
    iget-object v0, p0, LkK0;->A:LfL0;

    .line 8
    iget-object v0, v0, LfL0;->a:LQK0;

    invoke-virtual {v0, v3, v1}, LQK0;->a(ZZ)V

    return-void
.end method

.method public c(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, LkK0;->Y:Lorg/chromium/chrome/browser/ChromeActivity;

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/ChromeActivity;->K0()LlQ0;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/chromium/chrome/browser/ChromeActivity;->a(Landroid/view/View;)V

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, LkK0;->Y:Lorg/chromium/chrome/browser/ChromeActivity;

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/ChromeActivity;->K0()LlQ0;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/chromium/chrome/browser/ChromeActivity;->b(Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method public final d()V
    .locals 7

    .line 1
    iget-object v0, p0, LkK0;->F:Lorg/chromium/chrome/browser/toolbar/LocationBarModel;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/toolbar/LocationBarModel;->g()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v0}, LaH0;->a(Lorg/chromium/chrome/browser/tab/Tab;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 3
    :goto_0
    iget-object v4, p0, LkK0;->A:LfL0;

    .line 4
    iget-object v4, v4, LfL0;->a:LQK0;

    invoke-virtual {v4}, LQK0;->p()V

    .line 5
    iget-object v4, p0, LkK0;->A:LfL0;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->a()Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    .line 6
    :goto_1
    iget-object v4, v4, LfL0;->a:LQK0;

    invoke-virtual {v4, v5}, LQK0;->h(Z)V

    .line 7
    iget-object v4, p0, LkK0;->A:LfL0;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    .line 8
    :goto_2
    iget-object v4, v4, LfL0;->a:LQK0;

    invoke-virtual {v4, v0}, LQK0;->i(Z)V

    .line 9
    iget-object v0, p0, LkK0;->F:Lorg/chromium/chrome/browser/toolbar/LocationBarModel;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/toolbar/LocationBarModel;->g()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    if-nez v3, :cond_3

    if-eqz v0, :cond_4

    .line 10
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->s()Z

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    .line 11
    :cond_4
    :goto_3
    iget-object v0, p0, LkK0;->A:LfL0;

    .line 12
    iget-object v0, v0, LfL0;->a:LQK0;

    invoke-virtual {v0, v1}, LQK0;->j(Z)V

    .line 13
    iget-object v0, p0, LkK0;->E:LjK0;

    if-eqz v0, :cond_b

    check-cast v0, LgK0;

    .line 14
    iget-object v3, v0, LgK0;->b:LkK0;

    .line 15
    iget-object v3, v3, LkK0;->L:LK00;

    if-eqz v3, :cond_b

    .line 16
    check-cast v3, LN00;

    invoke-virtual {v3, v1}, LN00;->a(Z)V

    .line 17
    iget-object v0, v0, LgK0;->a:LH00;

    const v1, 0x7f0b020a

    check-cast v0, LI00;

    .line 18
    iget-object v0, v0, LI00;->w:Lv00;

    if-eqz v0, :cond_b

    .line 19
    iget-object v3, v0, Lv00;->z:Lw00;

    if-eqz v3, :cond_b

    iget-object v3, v0, Lv00;->w:Landroid/view/Menu;

    if-eqz v3, :cond_b

    iget-object v4, v0, Lv00;->x:Landroid/widget/PopupWindow;

    if-eqz v4, :cond_b

    iget-object v4, v0, Lv00;->y:Landroid/widget/ListView;

    if-nez v4, :cond_5

    goto :goto_6

    .line 20
    :cond_5
    invoke-interface {v3}, Landroid/view/Menu;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_4
    const/4 v5, -0x1

    if-ge v4, v3, :cond_7

    .line 21
    iget-object v6, v0, Lv00;->w:Landroid/view/Menu;

    invoke-interface {v6, v4}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v6

    invoke-interface {v6}, Landroid/view/MenuItem;->getItemId()I

    move-result v6

    if-ne v6, v1, :cond_6

    goto :goto_5

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_7
    const/4 v4, -0x1

    :goto_5
    if-ne v4, v5, :cond_8

    goto :goto_6

    .line 22
    :cond_8
    iget-object v1, v0, Lv00;->y:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v1

    .line 23
    iget-object v3, v0, Lv00;->y:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v3

    if-lt v4, v1, :cond_b

    if-le v4, v3, :cond_9

    goto :goto_6

    .line 24
    :cond_9
    iget-object v3, v0, Lv00;->y:Landroid/widget/ListView;

    sub-int v1, v4, v1

    invoke-virtual {v3, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_a

    goto :goto_6

    .line 25
    :cond_a
    iget-object v3, v0, Lv00;->y:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    iget-object v0, v0, Lv00;->y:Landroid/widget/ListView;

    invoke-interface {v3, v4, v1, v0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 26
    :cond_b
    :goto_6
    invoke-virtual {p0}, LkK0;->c()V

    .line 27
    iget-object v0, p0, LkK0;->A:LfL0;

    invoke-virtual {v0}, LfL0;->a()Lorg/chromium/chrome/browser/toolbar/MenuButton;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 28
    iget-boolean v0, p0, LkK0;->m0:Z

    if-nez v0, :cond_c

    .line 29
    iget-object v0, p0, LkK0;->A:LfL0;

    invoke-virtual {v0}, LfL0;->a()Lorg/chromium/chrome/browser/toolbar/MenuButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 30
    :cond_c
    iget-object v0, p0, LkK0;->M:LGJ0;

    iget-object v1, p0, LkK0;->F:Lorg/chromium/chrome/browser/toolbar/LocationBarModel;

    .line 31
    invoke-virtual {v1}, Lorg/chromium/chrome/browser/toolbar/LocationBarModel;->d()LMm0;

    .line 32
    invoke-virtual {v0, v2}, LGJ0;->a(Z)V

    return-void
.end method

.method public final d(Z)V
    .locals 1

    .line 33
    iget-object v0, p0, LkK0;->V:LiK0;

    invoke-virtual {v0}, LiK0;->a()V

    .line 34
    iget-object v0, p0, LkK0;->A:LfL0;

    .line 35
    iget-object v0, v0, LfL0;->a:LQK0;

    .line 36
    iget-object v0, v0, LQK0;->D:LqK0;

    invoke-virtual {v0, p1}, LqK0;->a(Z)V

    return-void
.end method
