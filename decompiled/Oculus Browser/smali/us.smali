.class public final Lus;
.super LFs;
.source "PG"


# instance fields
.field public final a:Ljava/util/concurrent/atomic/AtomicReference;

.field public final b:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lss;)V
    .locals 1

    .line 1
    invoke-direct {p0}, LFs;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lus;->a:Ljava/util/concurrent/atomic/AtomicReference;

    .line 3
    new-instance v0, Landroid/os/Handler;

    .line 4
    iget-object p1, p1, Lcom/google/android/gms/common/internal/BaseGmsClient;->h:Landroid/os/Looper;

    .line 5
    invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lus;->b:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/cast/ApplicationMetadata;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 10

    .line 1
    iget-object v0, p0, Lus;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lss;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iput-object p1, v0, Lss;->D:Lcom/google/android/gms/cast/ApplicationMetadata;

    .line 3
    iget-object v1, p1, Lcom/google/android/gms/cast/ApplicationMetadata;->w:Ljava/lang/String;

    .line 4
    iput-object v1, v0, Lss;->U:Ljava/lang/String;

    .line 5
    iput-object p3, v0, Lss;->V:Ljava/lang/String;

    .line 6
    iput-object p2, v0, Lss;->K:Ljava/lang/String;

    .line 7
    sget-object v1, Lss;->b0:Ljava/lang/Object;

    .line 8
    monitor-enter v1

    .line 9
    :try_start_0
    iget-object v2, v0, Lss;->Y:LTm;

    if-eqz v2, :cond_1

    .line 10
    iget-object v2, v0, Lss;->Y:LTm;

    .line 11
    new-instance v9, Lts;

    new-instance v4, Lcom/google/android/gms/common/api/Status;

    const/4 v3, 0x0

    invoke-direct {v4, v3}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    move-object v3, v9

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move v8, p4

    invoke-direct/range {v3 .. v8}, Lts;-><init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/cast/ApplicationMetadata;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    check-cast v2, LSm;

    :try_start_1
    invoke-virtual {v2, v9}, LSm;->a(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 12
    iput-object p1, v0, Lss;->Y:LTm;

    .line 13
    :cond_1
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
