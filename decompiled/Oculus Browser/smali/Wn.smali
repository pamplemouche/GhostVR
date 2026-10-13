.class public final LWn;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic w:Lcom/google/android/gms/common/ConnectionResult;

.field public final synthetic x:LXm;


# direct methods
.method public constructor <init>(LXm;Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 0

    iput-object p1, p0, LWn;->x:LXm;

    iput-object p2, p0, LWn;->w:Lcom/google/android/gms/common/ConnectionResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, LWn;->w:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {v0}, Lcom/google/android/gms/common/ConnectionResult;->s()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, LWn;->x:LXm;

    const/4 v1, 0x1

    .line 1
    iput-boolean v1, v0, LXm;->e:Z

    .line 2
    iget-object v0, v0, LXm;->a:Lwm;

    .line 3
    invoke-interface {v0}, Lwm;->requiresSignIn()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, LWn;->x:LXm;

    .line 4
    iget-boolean v1, v0, LXm;->e:Z

    if-eqz v1, :cond_0

    iget-object v1, v0, LXm;->c:Llp;

    if-eqz v1, :cond_0

    iget-object v2, v0, LXm;->a:Lwm;

    iget-object v0, v0, LXm;->d:Ljava/util/Set;

    check-cast v2, Lcom/google/android/gms/common/internal/BaseGmsClient;

    invoke-virtual {v2, v1, v0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->a(Llp;Ljava/util/Set;)V

    :cond_0
    return-void

    .line 5
    :cond_1
    iget-object v0, p0, LWn;->x:LXm;

    .line 6
    iget-object v0, v0, LXm;->a:Lwm;

    const/4 v1, 0x0

    .line 7
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v2

    check-cast v0, Lcom/google/android/gms/common/internal/BaseGmsClient;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/BaseGmsClient;->a(Llp;Ljava/util/Set;)V

    return-void

    :cond_2
    iget-object v0, p0, LWn;->x:LXm;

    iget-object v1, v0, LXm;->f:LYm;

    .line 8
    iget-object v1, v1, LYm;->i:Ljava/util/Map;

    .line 9
    iget-object v0, v0, LXm;->b:Loo;

    .line 10
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LVm;

    iget-object v1, p0, LWn;->w:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {v0, v1}, LVm;->a(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void
.end method
