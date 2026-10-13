.class public Ltx0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public final synthetic a:Lxx0;


# direct methods
.method public constructor <init>(Lxx0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ltx0;->a:Lxx0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    .line 1
    iget-object p1, p0, Ltx0;->a:Lxx0;

    invoke-static {p2}, LBx0;->a(Landroid/os/IBinder;)LCx0;

    move-result-object p2

    iput-object p2, p1, Lxx0;->k:LCx0;

    .line 2
    iget-object p1, p0, Ltx0;->a:Lxx0;

    const/4 p2, 0x1

    .line 3
    iput-boolean p2, p1, Lxx0;->q:Z

    .line 4
    iget-object p1, p1, Lxx0;->p:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lwx0;

    .line 5
    check-cast v0, LTx0;

    .line 6
    iput-boolean p2, v0, LTx0;->R:Z

    .line 7
    iget-object v1, v0, LTx0;->z:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 8
    iget-object v0, v0, LTx0;->E:LKx0;

    .line 9
    iget-object v0, v0, LBg;->w:LCg;

    invoke-virtual {v0}, LCg;->b()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3

    const/4 p1, 0x0

    new-array v0, p1, [Ljava/lang/Object;

    const-string v1, "ImageDecoderHost"

    const-string v2, "Service has unexpectedly disconnected"

    .line 1
    invoke-static {v1, v2, v0}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Ltx0;->a:Lxx0;

    const/4 v1, 0x0

    iput-object v1, v0, Lxx0;->k:LCx0;

    .line 3
    iput-boolean p1, v0, Lxx0;->q:Z

    return-void
.end method
