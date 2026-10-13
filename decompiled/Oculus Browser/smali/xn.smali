.class public final Lxn;
.super LEn;
.source "PG"


# instance fields
.field public final x:Ljava/util/Map;

.field public final synthetic y:Lun;


# direct methods
.method public constructor <init>(Lun;Ljava/util/Map;)V
    .locals 1

    iput-object p1, p0, Lxn;->y:Lun;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, LEn;-><init>(Lun;Lvn;)V

    iput-object p2, p0, Lxn;->x:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 8

    new-instance v0, Lip;

    iget-object v1, p0, Lxn;->y:Lun;

    .line 1
    iget-object v1, v1, Lun;->d:Lem;

    .line 2
    invoke-direct {v0, v1}, Lip;-><init>(Lem;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lxn;->x:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lwm;

    move-object v6, v4

    check-cast v6, Lcom/google/android/gms/common/internal/BaseGmsClient;

    if-eqz v6, :cond_1

    iget-object v5, p0, Lxn;->x:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lwn;

    .line 3
    iget-boolean v5, v5, Lwn;->c:Z

    if-nez v5, :cond_0

    .line 4
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5
    :cond_1
    throw v5

    :cond_2
    const/4 v3, -0x1

    .line 6
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    const/4 v6, 0x0

    if-eqz v4, :cond_4

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    :cond_3
    if-ge v6, v1, :cond_6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v6, v6, 0x1

    check-cast v3, Lwm;

    iget-object v4, p0, Lxn;->y:Lun;

    .line 7
    iget-object v4, v4, Lun;->c:Landroid/content/Context;

    .line 8
    invoke-virtual {v0, v4, v3}, Lip;->a(Landroid/content/Context;Lwm;)I

    move-result v3

    if-nez v3, :cond_3

    goto :goto_1

    :cond_4
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    :cond_5
    if-ge v6, v2, :cond_6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v6, v6, 0x1

    check-cast v3, Lwm;

    iget-object v4, p0, Lxn;->y:Lun;

    .line 9
    iget-object v4, v4, Lun;->c:Landroid/content/Context;

    .line 10
    invoke-virtual {v0, v4, v3}, Lip;->a(Landroid/content/Context;Lwm;)I

    move-result v3

    if-eqz v3, :cond_5

    :cond_6
    :goto_1
    const/4 v1, 0x1

    if-eqz v3, :cond_7

    new-instance v0, Lcom/google/android/gms/common/ConnectionResult;

    invoke-direct {v0, v3, v5}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    iget-object v2, p0, Lxn;->y:Lun;

    .line 11
    iget-object v3, v2, Lun;->a:LMn;

    .line 12
    new-instance v4, Lyn;

    invoke-direct {v4, p0, v2, v0}, Lyn;-><init>(Lxn;LLn;Lcom/google/android/gms/common/ConnectionResult;)V

    .line 13
    iget-object v0, v3, LMn;->e:LOn;

    invoke-virtual {v0, v1, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, v3, LMn;->e:LOn;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    .line 14
    :cond_7
    iget-object v2, p0, Lxn;->y:Lun;

    .line 15
    iget-boolean v3, v2, Lun;->m:Z

    if-eqz v3, :cond_9

    .line 16
    iget-object v2, v2, Lun;->k:LHu;

    .line 17
    check-cast v2, LQu;

    if-eqz v2, :cond_8

    .line 18
    new-instance v3, LNo;

    invoke-direct {v3, v2}, LNo;-><init>(Lcom/google/android/gms/common/internal/BaseGmsClient;)V

    invoke-virtual {v2, v3}, Lcom/google/android/gms/common/internal/BaseGmsClient;->a(LKo;)V

    goto :goto_2

    :cond_8
    throw v5

    .line 19
    :cond_9
    :goto_2
    iget-object v2, p0, Lxn;->x:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lwm;

    iget-object v4, p0, Lxn;->x:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LKo;

    move-object v6, v3

    check-cast v6, Lcom/google/android/gms/common/internal/BaseGmsClient;

    if-eqz v6, :cond_b

    iget-object v6, p0, Lxn;->y:Lun;

    .line 20
    iget-object v6, v6, Lun;->c:Landroid/content/Context;

    .line 21
    invoke-virtual {v0, v6, v3}, Lip;->a(Landroid/content/Context;Lwm;)I

    move-result v6

    if-eqz v6, :cond_a

    iget-object v3, p0, Lxn;->y:Lun;

    .line 22
    iget-object v6, v3, Lun;->a:LMn;

    .line 23
    new-instance v7, Lzn;

    invoke-direct {v7, v3, v4}, Lzn;-><init>(LLn;LKo;)V

    .line 24
    iget-object v3, v6, LMn;->e:LOn;

    invoke-virtual {v3, v1, v7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    iget-object v4, v6, LMn;->e:LOn;

    invoke-virtual {v4, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_3

    .line 25
    :cond_a
    check-cast v3, Lcom/google/android/gms/common/internal/BaseGmsClient;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/common/internal/BaseGmsClient;->a(LKo;)V

    goto :goto_3

    .line 26
    :cond_b
    throw v5

    :cond_c
    return-void
.end method
