.class public final LnB;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public final synthetic a:LhB;


# direct methods
.method public synthetic constructor <init>(LhB;B)V
    .locals 0

    .line 1
    iput-object p1, p0, LnB;->a:LhB;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    iget-object v0, p0, LnB;->a:LhB;

    .line 1
    iget-object v0, v0, LhB;->b:LuB;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x4

    const-string v2, "ServiceConnectionImpl.onServiceConnected(%s)"

    .line 2
    invoke-virtual {v0, p1, v2, v1}, LuB;->a(ILjava/lang/String;[Ljava/lang/Object;)I

    .line 3
    iget-object p1, p0, LnB;->a:LhB;

    new-instance v0, LqB;

    invoke-direct {v0, p0, p2}, LqB;-><init>(LnB;Landroid/os/IBinder;)V

    .line 4
    invoke-virtual {p1}, LhB;->b()Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3

    iget-object v0, p0, LnB;->a:LhB;

    .line 1
    iget-object v0, v0, LhB;->b:LuB;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x4

    const-string v2, "ServiceConnectionImpl.onServiceDisconnected(%s)"

    .line 2
    invoke-virtual {v0, p1, v2, v1}, LuB;->a(ILjava/lang/String;[Ljava/lang/Object;)I

    .line 3
    iget-object p1, p0, LnB;->a:LhB;

    new-instance v0, LpB;

    invoke-direct {v0, p0}, LpB;-><init>(LnB;)V

    .line 4
    invoke-virtual {p1}, LhB;->b()Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
