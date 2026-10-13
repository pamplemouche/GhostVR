.class public LBX0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback2;


# instance fields
.field public final synthetic w:LDX0;


# direct methods
.method public synthetic constructor <init>(LDX0;LAX0;)V
    .locals 0

    .line 1
    iput-object p1, p0, LBX0;->w:LDX0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2

    .line 1
    iget-object v0, p0, LBX0;->w:LDX0;

    .line 2
    invoke-virtual {v0}, LDX0;->a()V

    .line 3
    iget-object v0, p0, LBX0;->w:LDX0;

    .line 4
    iget-object v1, v0, LDX0;->b:Landroid/app/Dialog;

    if-nez v1, :cond_0

    return-void

    .line 5
    :cond_0
    iget-object v0, v0, LDX0;->a:LCX0;

    if-eqz v0, :cond_1

    .line 6
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p1

    invoke-interface {v0, p1}, LCX0;->a(Landroid/view/Surface;)V

    :cond_1
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2

    .line 1
    iget-object p1, p0, LBX0;->w:LDX0;

    .line 2
    iget-object v0, p1, LDX0;->b:Landroid/app/Dialog;

    if-eqz v0, :cond_3

    .line 3
    iget-object v0, p1, LDX0;->a:LCX0;

    if-nez v0, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-eq v0, v1, :cond_1

    .line 5
    invoke-virtual {p1}, LDX0;->a()V

    goto :goto_0

    .line 6
    :cond_1
    iget-object p1, p1, LDX0;->f:Landroid/os/Looper;

    .line 7
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eq p1, v0, :cond_2

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "DSCore"

    const-string v1, "surfaceDestroyed called on wrong thread.  Avoiding proper shutdown."

    .line 8
    invoke-static {v0, v1, p1}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 9
    iget-object p1, p0, LBX0;->w:LDX0;

    .line 10
    iget-object p1, p1, LDX0;->a:LCX0;

    .line 11
    invoke-interface {p1}, LCX0;->a()V

    return-void

    .line 12
    :cond_2
    :goto_0
    iget-object p1, p0, LBX0;->w:LDX0;

    .line 13
    iget-object p1, p1, LDX0;->a:LCX0;

    .line 14
    invoke-interface {p1}, LCX0;->a()V

    .line 15
    iget-object p1, p0, LBX0;->w:LDX0;

    .line 16
    iget-object p1, p1, LDX0;->a:LCX0;

    .line 17
    invoke-interface {p1}, LCX0;->f()V

    .line 18
    iget-object p1, p0, LBX0;->w:LDX0;

    .line 19
    iget-object p1, p1, LDX0;->a:LCX0;

    .line 20
    invoke-interface {p1}, LCX0;->e()V

    .line 21
    iget-object p1, p0, LBX0;->w:LDX0;

    const/4 v0, 0x0

    .line 22
    iput-object v0, p1, LDX0;->a:LCX0;

    :cond_3
    :goto_1
    return-void
.end method

.method public surfaceRedrawNeeded(Landroid/view/SurfaceHolder;)V
    .locals 0

    return-void
.end method
