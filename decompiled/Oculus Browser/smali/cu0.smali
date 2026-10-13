.class public Lcu0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public final synthetic a:Leu0;


# direct methods
.method public constructor <init>(Leu0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcu0;->a:Leu0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    .line 1
    invoke-static {p2}, LVS;->a(Landroid/os/IBinder;)LWS;

    move-result-object p1

    const/4 p2, 0x0

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lcu0;->a:Leu0;

    .line 3
    invoke-virtual {p1, p2}, Leu0;->a(LQu0;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcu0;->a:Leu0;

    .line 5
    iget-object v1, v0, Leu0;->O:LJu0;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    .line 6
    iput-boolean v1, v0, Leu0;->S:Z

    .line 7
    new-instance v1, Ldu0;

    invoke-direct {v1, v0}, Ldu0;-><init>(Leu0;)V

    .line 8
    check-cast p1, LUS;

    :try_start_0
    invoke-virtual {p1, v1}, LUS;->a(LYS;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    iget-object p1, v0, Leu0;->I:Landroid/os/Handler;

    new-instance p2, LXt0;

    invoke-direct {p2, v0}, LXt0;-><init>(Leu0;)V

    const-wide/16 v0, 0x190

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 10
    :catchall_0
    invoke-virtual {v0, p2}, Leu0;->a(LQu0;)V

    :goto_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcu0;->a:Leu0;

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, v0}, Leu0;->a(LQu0;)V

    return-void
.end method
