.class public LP20;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback2;
.implements LK20;


# instance fields
.field public A:LJ20;

.field public final B:Landroid/view/ViewGroup;

.field public final w:LO20;

.field public final x:LO20;

.field public y:LO20;

.field public z:LO20;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, LP20;

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup;LJ20;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, LP20;->B:Landroid/view/ViewGroup;

    .line 3
    iput-object p2, p0, LP20;->A:LJ20;

    .line 4
    new-instance p2, LO20;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 v0, -0x3

    invoke-direct {p2, p1, v0, p0}, LO20;-><init>(Landroid/content/Context;ILandroid/view/SurfaceHolder$Callback2;)V

    iput-object p2, p0, LP20;->w:LO20;

    .line 5
    new-instance p1, LO20;

    iget-object p2, p0, LP20;->B:Landroid/view/ViewGroup;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    const/4 v0, -0x1

    invoke-direct {p1, p2, v0, p0}, LO20;-><init>(Landroid/content/Context;ILandroid/view/SurfaceHolder$Callback2;)V

    iput-object p1, p0, LP20;->x:LO20;

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/SurfaceHolder;)LO20;
    .locals 1

    .line 17
    iget-object v0, p0, LP20;->w:LO20;

    invoke-virtual {v0}, LO20;->b()Landroid/view/SurfaceHolder;

    move-result-object v0

    if-ne v0, p1, :cond_0

    iget-object p1, p0, LP20;->w:LO20;

    return-object p1

    .line 18
    :cond_0
    iget-object v0, p0, LP20;->x:LO20;

    invoke-virtual {v0}, LO20;->b()Landroid/view/SurfaceHolder;

    move-result-object v0

    if-ne v0, p1, :cond_1

    iget-object p1, p0, LP20;->x:LO20;

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public a()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, LP20;->z:LO20;

    .line 2
    iget-object v0, p0, LP20;->x:LO20;

    invoke-virtual {p0, v0}, LP20;->c(LO20;)V

    .line 3
    iget-object v0, p0, LP20;->w:LO20;

    invoke-virtual {p0, v0}, LP20;->c(LO20;)V

    .line 4
    iget-object v0, p0, LP20;->w:LO20;

    invoke-virtual {v0}, LO20;->b()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 5
    iget-object v0, p0, LP20;->x:LO20;

    invoke-virtual {v0}, LO20;->b()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    return-void
.end method

.method public a(I)V
    .locals 4

    const-string v0, "Transitioning to surface with format : "

    .line 6
    invoke-static {v0, p1}, LZi;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "CompositorSurfaceMgr"

    invoke-static {v2, v0, v1}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, -0x3

    if-ne p1, v0, :cond_0

    .line 7
    iget-object p1, p0, LP20;->w:LO20;

    goto :goto_0

    :cond_0
    iget-object p1, p0, LP20;->x:LO20;

    :goto_0
    iput-object p1, p0, LP20;->z:LO20;

    .line 8
    iget-boolean v0, p1, LO20;->c:Z

    if-eqz v0, :cond_1

    return-void

    .line 9
    :cond_1
    invoke-virtual {p1}, LO20;->a()Z

    move-result p1

    if-nez p1, :cond_2

    .line 10
    iget-object p1, p0, LP20;->z:LO20;

    invoke-virtual {p0, p1}, LP20;->a(LO20;)V

    return-void

    .line 11
    :cond_2
    iget-object p1, p0, LP20;->z:LO20;

    iget-boolean p1, p1, LO20;->b:Z

    if-eqz p1, :cond_3

    return-void

    .line 12
    :cond_3
    iget-object p1, p0, LP20;->y:LO20;

    invoke-virtual {p0, p1}, LP20;->d(LO20;)V

    .line 13
    iget-object p1, p0, LP20;->z:LO20;

    iput-object p1, p0, LP20;->y:LO20;

    .line 14
    iget-object v0, p0, LP20;->A:LJ20;

    invoke-virtual {p1}, LO20;->b()Landroid/view/SurfaceHolder;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p1

    invoke-interface {v0, p1}, LJ20;->b(Landroid/view/Surface;)V

    .line 15
    iget-object p1, p0, LP20;->y:LO20;

    iget v0, p1, LO20;->d:I

    if-eqz v0, :cond_4

    .line 16
    iget-object v0, p0, LP20;->A:LJ20;

    invoke-virtual {p1}, LO20;->b()Landroid/view/SurfaceHolder;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p1

    iget-object v1, p0, LP20;->y:LO20;

    iget v2, v1, LO20;->d:I

    iget v3, v1, LO20;->e:I

    iget v1, v1, LO20;->f:I

    invoke-interface {v0, p1, v2, v3, v1}, LJ20;->a(Landroid/view/Surface;III)V

    :cond_4
    return-void
.end method

.method public final a(LO20;)V
    .locals 3

    .line 19
    invoke-virtual {p1}, LO20;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 20
    :cond_0
    iget-boolean v0, p1, LO20;->c:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x1

    .line 21
    iput-boolean v0, p1, LO20;->b:Z

    .line 22
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 23
    iget-object v1, p0, LP20;->B:Landroid/view/ViewGroup;

    .line 24
    iput-object v1, p1, LO20;->g:Landroid/view/ViewGroup;

    .line 25
    iget-object v2, p1, LO20;->a:Landroid/view/SurfaceView;

    invoke-virtual {v1, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 26
    iget-object v0, p0, LP20;->B:Landroid/view/ViewGroup;

    iget-object p1, p1, LO20;->a:Landroid/view/SurfaceView;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->bringChildToFront(Landroid/view/View;)V

    .line 27
    iget-object p1, p0, LP20;->B:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->postInvalidateOnAnimation()V

    return-void
.end method

.method public final b(LO20;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, LO20;->a()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p1, LO20;->c:Z

    .line 3
    iget-object v0, p0, LP20;->B:Landroid/view/ViewGroup;

    new-instance v1, LN20;

    invoke-direct {v1, p0, p1}, LN20;-><init>(LP20;LO20;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final c(LO20;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, LO20;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, LO20;->b()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0

    .line 3
    iput-boolean v0, p1, LO20;->c:Z

    const-string v1, "SurfaceState : detach from parent : "

    .line 4
    invoke-static {v1}, LZi;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, LO20;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "CompositorSurfaceMgr"

    invoke-static {v3, v1, v2}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5
    iget-object v1, p1, LO20;->g:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    .line 6
    iput-object v2, p1, LO20;->g:Landroid/view/ViewGroup;

    .line 7
    iget-object v2, p1, LO20;->a:Landroid/view/SurfaceView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    if-eqz v0, :cond_0

    return-void

    .line 8
    :cond_0
    invoke-virtual {p0, p1}, LP20;->d(LO20;)V

    .line 9
    iget-object v0, p0, LP20;->z:LO20;

    if-ne p1, v0, :cond_1

    invoke-virtual {p0, v0}, LP20;->a(LO20;)V

    :cond_1
    return-void
.end method

.method public final d(LO20;)V
    .locals 1

    .line 1
    iget-object v0, p0, LP20;->y:LO20;

    if-ne v0, p1, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, LP20;->A:LJ20;

    invoke-virtual {v0}, LO20;->b()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-interface {p1, v0}, LJ20;->a(Landroid/view/Surface;)V

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, LP20;->y:LO20;

    :cond_1
    :goto_0
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, LP20;->a(Landroid/view/SurfaceHolder;)LO20;

    move-result-object v0

    .line 2
    iget-object v1, p0, LP20;->y:LO20;

    if-ne v0, v1, :cond_0

    iget-object v1, p0, LP20;->z:LO20;

    if-ne v0, v1, :cond_0

    .line 3
    iput p3, v0, LO20;->e:I

    .line 4
    iput p4, v0, LO20;->f:I

    .line 5
    iput p2, v0, LO20;->d:I

    .line 6
    iget-object v0, p0, LP20;->A:LJ20;

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p1

    invoke-interface {v0, p1, p2, p3, p4}, LJ20;->a(Landroid/view/Surface;III)V

    :cond_0
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 4

    .line 1
    invoke-virtual {p0, p1}, LP20;->a(Landroid/view/SurfaceHolder;)LO20;

    move-result-object p1

    const-string v0, "surfaceCreated format : "

    .line 2
    invoke-static {v0}, LZi;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, LO20;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "CompositorSurfaceMgr"

    invoke-static {v3, v0, v2}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, LP20;->z:LO20;

    if-eq p1, v0, :cond_0

    .line 4
    invoke-virtual {p0, p1}, LP20;->b(LO20;)V

    return-void

    .line 5
    :cond_0
    iput-boolean v1, p1, LO20;->b:Z

    .line 6
    iput v1, p1, LO20;->d:I

    .line 7
    iget-object p1, p0, LP20;->y:LO20;

    invoke-virtual {p0, p1}, LP20;->d(LO20;)V

    .line 8
    iget-object p1, p0, LP20;->z:LO20;

    iput-object p1, p0, LP20;->y:LO20;

    .line 9
    iget-object v0, p0, LP20;->A:LJ20;

    invoke-virtual {p1}, LO20;->b()Landroid/view/SurfaceHolder;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p1

    invoke-interface {v0, p1}, LJ20;->b(Landroid/view/Surface;)V

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 4

    .line 1
    invoke-virtual {p0, p1}, LP20;->a(Landroid/view/SurfaceHolder;)LO20;

    move-result-object p1

    const-string v0, "surfaceDestroyed format : "

    .line 2
    invoke-static {v0}, LZi;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, LO20;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "CompositorSurfaceMgr"

    invoke-static {v3, v0, v2}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    iget-boolean v0, p1, LO20;->c:Z

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 4
    iput-boolean v2, p1, LO20;->b:Z

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p1}, LO20;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 6
    iput-boolean v1, p1, LO20;->c:Z

    .line 7
    :cond_1
    :goto_0
    iput v1, p1, LO20;->d:I

    .line 8
    iget-object v0, p0, LP20;->y:LO20;

    if-ne p1, v0, :cond_2

    .line 9
    invoke-virtual {p0, v0}, LP20;->d(LO20;)V

    return-void

    .line 10
    :cond_2
    iget-object v0, p0, LP20;->A:LJ20;

    invoke-interface {v0}, LJ20;->a()V

    .line 11
    iget-object v0, p0, LP20;->z:LO20;

    if-ne p1, v0, :cond_3

    invoke-virtual {p1}, LO20;->a()Z

    move-result v0

    if-nez v0, :cond_3

    .line 12
    iput-boolean v2, p1, LO20;->b:Z

    .line 13
    iget-object v0, p0, LP20;->B:Landroid/view/ViewGroup;

    new-instance v1, LM20;

    invoke-direct {v1, p0, p1}, LM20;-><init>(LP20;LO20;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 14
    :cond_3
    iget-object v0, p0, LP20;->z:LO20;

    if-eq p1, v0, :cond_4

    invoke-virtual {p1}, LO20;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 15
    invoke-virtual {p0, p1}, LP20;->b(LO20;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public surfaceRedrawNeeded(Landroid/view/SurfaceHolder;)V
    .locals 0

    return-void
.end method

.method public surfaceRedrawNeededAsync(Landroid/view/SurfaceHolder;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    iget-object p1, p0, LP20;->A:LJ20;

    invoke-interface {p1, p2}, LJ20;->a(Ljava/lang/Runnable;)V

    return-void
.end method
