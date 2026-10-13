.class public LL20;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic w:LP20;


# direct methods
.method public constructor <init>(LP20;)V
    .locals 0

    .line 1
    iput-object p1, p0, LL20;->w:LP20;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, LL20;->w:LP20;

    .line 2
    iget-object v1, v0, LP20;->y:LO20;

    if-nez v1, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, v0, LP20;->A:LJ20;

    .line 4
    invoke-virtual {v1}, LO20;->b()Landroid/view/SurfaceHolder;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v2

    invoke-interface {v0, v2}, LJ20;->a(Landroid/view/Surface;)V

    .line 5
    iget-object v0, p0, LL20;->w:LP20;

    const/4 v2, 0x0

    .line 6
    iput-object v2, v0, LP20;->y:LO20;

    .line 7
    invoke-virtual {v0, v1}, LP20;->c(LO20;)V

    return-void
.end method
