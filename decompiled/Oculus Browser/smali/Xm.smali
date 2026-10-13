.class public final LXm;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lgo;
.implements LKo;


# instance fields
.field public final a:Lwm;

.field public final b:Loo;

.field public c:Llp;

.field public d:Ljava/util/Set;

.field public e:Z

.field public final synthetic f:LYm;


# direct methods
.method public constructor <init>(LYm;Lwm;Loo;)V
    .locals 0

    iput-object p1, p0, LXm;->f:LYm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, LXm;->c:Llp;

    iput-object p1, p0, LXm;->d:Ljava/util/Set;

    const/4 p1, 0x0

    iput-boolean p1, p0, LXm;->e:Z

    iput-object p2, p0, LXm;->a:Lwm;

    iput-object p3, p0, LXm;->b:Loo;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 2

    iget-object v0, p0, LXm;->f:LYm;

    .line 1
    iget-object v0, v0, LYm;->m:Landroid/os/Handler;

    .line 2
    new-instance v1, LWn;

    invoke-direct {v1, p0, p1}, LWn;-><init>(LXm;Lcom/google/android/gms/common/ConnectionResult;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final b(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 2

    iget-object v0, p0, LXm;->f:LYm;

    .line 1
    iget-object v0, v0, LYm;->i:Ljava/util/Map;

    .line 2
    iget-object v1, p0, LXm;->b:Loo;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LVm;

    .line 3
    iget-object v1, v0, LVm;->m:LYm;

    .line 4
    iget-object v1, v1, LYm;->m:Landroid/os/Handler;

    .line 5
    invoke-static {v1}, Lxp;->a(Landroid/os/Handler;)V

    iget-object v1, v0, LVm;->b:Lwm;

    invoke-interface {v1}, Lwm;->disconnect()V

    invoke-virtual {v0, p1}, LVm;->a(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void
.end method
