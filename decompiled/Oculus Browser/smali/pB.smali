.class public final LpB;
.super LiB;
.source "PG"


# instance fields
.field public final synthetic x:LnB;


# direct methods
.method public constructor <init>(LnB;)V
    .locals 0

    iput-object p1, p0, LpB;->x:LnB;

    invoke-direct {p0}, LiB;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    iget-object v0, p0, LpB;->x:LnB;

    iget-object v0, v0, LnB;->a:LhB;

    .line 1
    iget-object v1, v0, LhB;->b:LuB;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x4

    const-string v5, "unlinkToDeath"

    .line 2
    invoke-virtual {v1, v4, v5, v3}, LuB;->a(ILjava/lang/String;[Ljava/lang/Object;)I

    .line 3
    iget-object v1, v0, LhB;->k:Landroid/os/IInterface;

    invoke-interface {v1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    iget-object v0, v0, LhB;->i:Landroid/os/IBinder$DeathRecipient;

    invoke-interface {v1, v0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 4
    iget-object v0, p0, LpB;->x:LnB;

    iget-object v0, v0, LnB;->a:LhB;

    const/4 v1, 0x0

    .line 5
    iput-object v1, v0, LhB;->k:Landroid/os/IInterface;

    .line 6
    iput-boolean v2, v0, LhB;->e:Z

    return-void
.end method
