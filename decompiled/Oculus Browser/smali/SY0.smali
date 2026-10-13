.class public LSY0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic w:Landroid/view/View;

.field public final synthetic x:LWY0;


# direct methods
.method public constructor <init>(LWY0;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, LSY0;->x:LWY0;

    iput-object p2, p0, LSY0;->w:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, LSY0;->x:LWY0;

    .line 2
    iget-object v0, v0, LWY0;->c:LYY0;

    const/4 v1, 0x1

    .line 3
    invoke-virtual {v0, v1}, LYY0;->onWindowFocusChanged(Z)V

    .line 4
    iget-object v0, p0, LSY0;->x:LWY0;

    .line 5
    iget-object v0, v0, LWY0;->a:LL01;

    .line 6
    iget-object v1, p0, LSY0;->w:Landroid/view/View;

    check-cast v0, LYX0;

    invoke-virtual {v0, v1}, LYX0;->a(Landroid/view/View;)Z

    .line 7
    iget-object v0, p0, LSY0;->x:LWY0;

    if-eqz v0, :cond_0

    .line 8
    sget-object v0, LVY0;->a:Landroid/os/Handler;

    .line 9
    new-instance v1, LRY0;

    invoke-direct {v1, p0}, LRY0;-><init>(LSY0;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 10
    throw v0
.end method
