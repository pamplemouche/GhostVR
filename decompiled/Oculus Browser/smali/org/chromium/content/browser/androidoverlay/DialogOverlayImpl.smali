.class public Lorg/chromium/content/browser/androidoverlay/DialogOverlayImpl;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lw51;
.implements LCX0;


# instance fields
.field public final A:LMX0;

.field public B:LDX0;

.field public C:J

.field public D:I

.field public E:Z

.field public w:Ly51;

.field public x:Landroid/os/Handler;

.field public y:Ljava/lang/Runnable;

.field public z:Ljava/lang/Runnable;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lorg/chromium/content/browser/androidoverlay/DialogOverlayImpl;

    return-void
.end method

.method public constructor <init>(Ly51;LG51;Landroid/os/Handler;Ljava/lang/Runnable;Z)V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    .line 3
    iput-object p1, p0, Lorg/chromium/content/browser/androidoverlay/DialogOverlayImpl;->w:Ly51;

    .line 4
    iput-object p4, p0, Lorg/chromium/content/browser/androidoverlay/DialogOverlayImpl;->y:Ljava/lang/Runnable;

    .line 5
    iput-object p3, p0, Lorg/chromium/content/browser/androidoverlay/DialogOverlayImpl;->x:Landroid/os/Handler;

    .line 6
    new-instance p1, LDX0;

    invoke-direct {p1}, LDX0;-><init>()V

    iput-object p1, p0, Lorg/chromium/content/browser/androidoverlay/DialogOverlayImpl;->B:LDX0;

    .line 7
    new-instance p1, LMX0;

    invoke-direct {p1, p0}, LMX0;-><init>(LCX0;)V

    iput-object p1, p0, Lorg/chromium/content/browser/androidoverlay/DialogOverlayImpl;->A:LMX0;

    .line 8
    iget-object p1, p2, LG51;->b:LV71;

    iget-wide v1, p1, LV71;->b:J

    iget-wide v3, p1, LV71;->c:J

    iget-boolean v5, p2, LG51;->e:Z

    move-object v0, p0

    .line 9
    invoke-static/range {v0 .. v5}, LJ/N;->MqPi0d6D(Ljava/lang/Object;JJZ)J

    move-result-wide p3

    .line 10
    iput-wide p3, p0, Lorg/chromium/content/browser/androidoverlay/DialogOverlayImpl;->C:J

    const-wide/16 v0, 0x0

    cmp-long p1, p3, v0

    if-nez p1, :cond_0

    .line 11
    iget-object p1, p0, Lorg/chromium/content/browser/androidoverlay/DialogOverlayImpl;->w:Ly51;

    check-cast p1, LD51;

    invoke-virtual {p1}, LD51;->a()V

    .line 12
    invoke-virtual {p0}, Lorg/chromium/content/browser/androidoverlay/DialogOverlayImpl;->g()V

    return-void

    .line 13
    :cond_0
    iget-object p1, p0, Lorg/chromium/content/browser/androidoverlay/DialogOverlayImpl;->B:LDX0;

    .line 14
    sget-object v3, LzT;->a:Landroid/content/Context;

    .line 15
    iget-object v0, p2, LG51;->c:Lorg/chromium/gfx/mojom/Rect;

    .line 16
    invoke-static {p3, p4, p0, v0}, LJ/N;->MAd6qeVr(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 17
    iget-object p3, p0, Lorg/chromium/content/browser/androidoverlay/DialogOverlayImpl;->x:Landroid/os/Handler;

    new-instance p4, LFX0;

    move-object v0, p4

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move v5, p5

    invoke-direct/range {v0 .. v5}, LFX0;-><init>(Lorg/chromium/content/browser/androidoverlay/DialogOverlayImpl;LDX0;Landroid/content/Context;LG51;Z)V

    invoke-virtual {p3, p4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 18
    new-instance p2, LGX0;

    invoke-direct {p2, p0, p1}, LGX0;-><init>(Lorg/chromium/content/browser/androidoverlay/DialogOverlayImpl;LDX0;)V

    iput-object p2, p0, Lorg/chromium/content/browser/androidoverlay/DialogOverlayImpl;->z:Ljava/lang/Runnable;

    return-void
.end method

.method private onPowerEfficientState(Z)V
    .locals 1

    .line 1
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    .line 2
    iget-object v0, p0, Lorg/chromium/content/browser/androidoverlay/DialogOverlayImpl;->B:LDX0;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lorg/chromium/content/browser/androidoverlay/DialogOverlayImpl;->w:Ly51;

    if-nez v0, :cond_1

    return-void

    .line 4
    :cond_1
    check-cast v0, LD51;

    invoke-virtual {v0, p1}, LD51;->a(Z)V

    return-void
.end method

.method public static receiveCompositorOffset(Lorg/chromium/gfx/mojom/Rect;II)V
    .locals 1

    .line 1
    iget v0, p0, Lorg/chromium/gfx/mojom/Rect;->b:I

    add-int/2addr v0, p1

    iput v0, p0, Lorg/chromium/gfx/mojom/Rect;->b:I

    .line 2
    iget p1, p0, Lorg/chromium/gfx/mojom/Rect;->c:I

    add-int/2addr p1, p2

    iput p1, p0, Lorg/chromium/gfx/mojom/Rect;->c:I

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 14
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    .line 15
    iget-object v0, p0, Lorg/chromium/content/browser/androidoverlay/DialogOverlayImpl;->B:LDX0;

    if-nez v0, :cond_0

    return-void

    .line 16
    :cond_0
    iget-object v0, p0, Lorg/chromium/content/browser/androidoverlay/DialogOverlayImpl;->w:Ly51;

    if-eqz v0, :cond_1

    check-cast v0, LD51;

    invoke-virtual {v0}, LD51;->a()V

    .line 17
    :cond_1
    invoke-virtual {p0}, Lorg/chromium/content/browser/androidoverlay/DialogOverlayImpl;->g()V

    return-void
.end method

.method public a(Landroid/view/Surface;)V
    .locals 3

    .line 9
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    .line 10
    iget-object v0, p0, Lorg/chromium/content/browser/androidoverlay/DialogOverlayImpl;->B:LDX0;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/chromium/content/browser/androidoverlay/DialogOverlayImpl;->w:Ly51;

    if-nez v0, :cond_0

    goto :goto_0

    .line 11
    :cond_0
    invoke-static {p1}, LJ/N;->MpcpmTlm(Ljava/lang/Object;)I

    move-result p1

    .line 12
    iput p1, p0, Lorg/chromium/content/browser/androidoverlay/DialogOverlayImpl;->D:I

    .line 13
    iget-object v0, p0, Lorg/chromium/content/browser/androidoverlay/DialogOverlayImpl;->w:Ly51;

    int-to-long v1, p1

    check-cast v0, LD51;

    invoke-virtual {v0, v1, v2}, LD51;->a(J)V

    :cond_1
    :goto_0
    return-void
.end method

.method public a(Lorg/chromium/gfx/mojom/Rect;)V
    .locals 3

    .line 3
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    .line 4
    iget-object v0, p0, Lorg/chromium/content/browser/androidoverlay/DialogOverlayImpl;->B:LDX0;

    if-nez v0, :cond_0

    return-void

    .line 5
    :cond_0
    iget-wide v0, p0, Lorg/chromium/content/browser/androidoverlay/DialogOverlayImpl;->C:J

    .line 6
    invoke-static {v0, v1, p0, p1}, LJ/N;->MAd6qeVr(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 7
    iget-object v0, p0, Lorg/chromium/content/browser/androidoverlay/DialogOverlayImpl;->B:LDX0;

    .line 8
    iget-object v1, p0, Lorg/chromium/content/browser/androidoverlay/DialogOverlayImpl;->x:Landroid/os/Handler;

    new-instance v2, LHX0;

    invoke-direct {v2, p0, v0, p1}, LHX0;-><init>(Lorg/chromium/content/browser/androidoverlay/DialogOverlayImpl;LDX0;Lorg/chromium/gfx/mojom/Rect;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public a(Ly71;)V
    .locals 0

    .line 1
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    .line 2
    invoke-virtual {p0}, Lorg/chromium/content/browser/androidoverlay/DialogOverlayImpl;->close()V

    return-void
.end method

.method public close()V
    .locals 2

    .line 1
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    .line 2
    iget-boolean v0, p0, Lorg/chromium/content/browser/androidoverlay/DialogOverlayImpl;->E:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lorg/chromium/content/browser/androidoverlay/DialogOverlayImpl;->E:Z

    .line 4
    iget-object v1, p0, Lorg/chromium/content/browser/androidoverlay/DialogOverlayImpl;->A:LMX0;

    .line 5
    iget-object v1, v1, LMX0;->y:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/Semaphore;->release(I)V

    .line 6
    iget-object v0, p0, Lorg/chromium/content/browser/androidoverlay/DialogOverlayImpl;->z:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 7
    iget-object v1, p0, Lorg/chromium/content/browser/androidoverlay/DialogOverlayImpl;->x:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lorg/chromium/content/browser/androidoverlay/DialogOverlayImpl;->z:Ljava/lang/Runnable;

    .line 9
    invoke-virtual {p0}, Lorg/chromium/content/browser/androidoverlay/DialogOverlayImpl;->g()V

    .line 10
    :cond_1
    iget-object v0, p0, Lorg/chromium/content/browser/androidoverlay/DialogOverlayImpl;->y:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public e()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/chromium/content/browser/androidoverlay/DialogOverlayImpl;->close()V

    return-void
.end method

.method public f()V
    .locals 0

    return-void
.end method

.method public final g()V
    .locals 5

    .line 1
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    .line 2
    iget v0, p0, Lorg/chromium/content/browser/androidoverlay/DialogOverlayImpl;->D:I

    if-eqz v0, :cond_0

    .line 3
    iget v0, p0, Lorg/chromium/content/browser/androidoverlay/DialogOverlayImpl;->D:I

    .line 4
    invoke-static {v0}, LJ/N;->M1e4GdYZ(I)V

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lorg/chromium/content/browser/androidoverlay/DialogOverlayImpl;->D:I

    .line 6
    :cond_0
    iget-wide v0, p0, Lorg/chromium/content/browser/androidoverlay/DialogOverlayImpl;->C:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 7
    iget-wide v0, p0, Lorg/chromium/content/browser/androidoverlay/DialogOverlayImpl;->C:J

    .line 8
    invoke-static {v0, v1, p0}, LJ/N;->MJj9v_ba(JLjava/lang/Object;)V

    .line 9
    iput-wide v2, p0, Lorg/chromium/content/browser/androidoverlay/DialogOverlayImpl;->C:J

    :cond_1
    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lorg/chromium/content/browser/androidoverlay/DialogOverlayImpl;->B:LDX0;

    .line 11
    iget-object v1, p0, Lorg/chromium/content/browser/androidoverlay/DialogOverlayImpl;->w:Ly51;

    if-eqz v1, :cond_2

    check-cast v1, Lz61;

    invoke-virtual {v1}, Lz61;->close()V

    .line 12
    :cond_2
    iput-object v0, p0, Lorg/chromium/content/browser/androidoverlay/DialogOverlayImpl;->w:Ly51;

    return-void
.end method

.method public onDismissed()V
    .locals 4

    .line 1
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    .line 2
    iget-object v0, p0, Lorg/chromium/content/browser/androidoverlay/DialogOverlayImpl;->w:Ly51;

    if-eqz v0, :cond_0

    check-cast v0, LD51;

    invoke-virtual {v0}, LD51;->a()V

    :cond_0
    const/4 v0, 0x0

    .line 3
    iget-object v1, p0, Lorg/chromium/content/browser/androidoverlay/DialogOverlayImpl;->B:LDX0;

    if-eqz v1, :cond_1

    .line 4
    iget-object v2, p0, Lorg/chromium/content/browser/androidoverlay/DialogOverlayImpl;->x:Landroid/os/Handler;

    new-instance v3, LIX0;

    invoke-direct {v3, p0, v1, v0}, LIX0;-><init>(Lorg/chromium/content/browser/androidoverlay/DialogOverlayImpl;LDX0;Landroid/os/IBinder;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 5
    :cond_1
    invoke-virtual {p0}, Lorg/chromium/content/browser/androidoverlay/DialogOverlayImpl;->g()V

    return-void
.end method

.method public onWindowToken(Landroid/os/IBinder;)V
    .locals 3

    .line 1
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    .line 2
    iget-object v0, p0, Lorg/chromium/content/browser/androidoverlay/DialogOverlayImpl;->B:LDX0;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz v0, :cond_1

    .line 3
    iget-object v1, p0, Lorg/chromium/content/browser/androidoverlay/DialogOverlayImpl;->x:Landroid/os/Handler;

    new-instance v2, LIX0;

    invoke-direct {v2, p0, v0, p1}, LIX0;-><init>(Lorg/chromium/content/browser/androidoverlay/DialogOverlayImpl;LDX0;Landroid/os/IBinder;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method
