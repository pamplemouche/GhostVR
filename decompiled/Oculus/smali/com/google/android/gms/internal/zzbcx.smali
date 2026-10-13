.class public final Lcom/google/android/gms/internal/zzbcx;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzbbj;
.implements Lcom/google/android/gms/internal/zzbdp;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private zzaBe:Lcom/google/android/gms/common/api/Api$zza;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$zza",
            "<+",
            "Lcom/google/android/gms/internal/zzctk;",
            "Lcom/google/android/gms/internal/zzctl;",
            ">;"
        }
    .end annotation
.end field

.field private zzaCA:Lcom/google/android/gms/common/internal/zzq;

.field private zzaCD:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/common/api/Api",
            "<*>;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final zzaCF:Lcom/google/android/gms/common/zze;

.field final zzaCl:Lcom/google/android/gms/internal/zzbcp;

.field private final zzaCv:Ljava/util/concurrent/locks/Lock;

.field final zzaDF:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/common/api/Api$zzc",
            "<*>;",
            "Lcom/google/android/gms/common/api/Api$zze;",
            ">;"
        }
    .end annotation
.end field

.field private final zzaDS:Ljava/util/concurrent/locks/Condition;

.field private final zzaDT:Lcom/google/android/gms/internal/zzbcz;

.field final zzaDU:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/common/api/Api$zzc",
            "<*>;",
            "Lcom/google/android/gms/common/ConnectionResult;",
            ">;"
        }
    .end annotation
.end field

.field private volatile zzaDV:Lcom/google/android/gms/internal/zzbcw;

.field private zzaDW:Lcom/google/android/gms/common/ConnectionResult;

.field zzaDX:I

.field final zzaDY:Lcom/google/android/gms/internal/zzbdq;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzbcp;Ljava/util/concurrent/locks/Lock;Landroid/os/Looper;Lcom/google/android/gms/common/zze;Ljava/util/Map;Lcom/google/android/gms/common/internal/zzq;Ljava/util/Map;Lcom/google/android/gms/common/api/Api$zza;Ljava/util/ArrayList;Lcom/google/android/gms/internal/zzbdq;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/internal/zzbcp;",
            "Ljava/util/concurrent/locks/Lock;",
            "Landroid/os/Looper;",
            "Lcom/google/android/gms/common/zze;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/common/api/Api$zzc",
            "<*>;",
            "Lcom/google/android/gms/common/api/Api$zze;",
            ">;",
            "Lcom/google/android/gms/common/internal/zzq;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/common/api/Api",
            "<*>;",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/google/android/gms/common/api/Api$zza",
            "<+",
            "Lcom/google/android/gms/internal/zzctk;",
            "Lcom/google/android/gms/internal/zzctl;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/internal/zzbbi;",
            ">;",
            "Lcom/google/android/gms/internal/zzbdq;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbcx;->zzaDU:Ljava/util/Map;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbcx;->zzaDW:Lcom/google/android/gms/common/ConnectionResult;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbcx;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzbcx;->zzaCv:Ljava/util/concurrent/locks/Lock;

    iput-object p5, p0, Lcom/google/android/gms/internal/zzbcx;->zzaCF:Lcom/google/android/gms/common/zze;

    iput-object p6, p0, Lcom/google/android/gms/internal/zzbcx;->zzaDF:Ljava/util/Map;

    iput-object p7, p0, Lcom/google/android/gms/internal/zzbcx;->zzaCA:Lcom/google/android/gms/common/internal/zzq;

    iput-object p8, p0, Lcom/google/android/gms/internal/zzbcx;->zzaCD:Ljava/util/Map;

    iput-object p9, p0, Lcom/google/android/gms/internal/zzbcx;->zzaBe:Lcom/google/android/gms/common/api/Api$zza;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzbcx;->zzaCl:Lcom/google/android/gms/internal/zzbcp;

    iput-object p11, p0, Lcom/google/android/gms/internal/zzbcx;->zzaDY:Lcom/google/android/gms/internal/zzbdq;

    check-cast p10, Ljava/util/ArrayList;

    invoke-virtual {p10}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    invoke-virtual {p10, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    check-cast v0, Lcom/google/android/gms/internal/zzbbi;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/zzbbi;->zza(Lcom/google/android/gms/internal/zzbbj;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/zzbcz;

    invoke-direct {v0, p0, p4}, Lcom/google/android/gms/internal/zzbcz;-><init>(Lcom/google/android/gms/internal/zzbcx;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbcx;->zzaDT:Lcom/google/android/gms/internal/zzbcz;

    invoke-interface {p3}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbcx;->zzaDS:Ljava/util/concurrent/locks/Condition;

    new-instance v0, Lcom/google/android/gms/internal/zzbco;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzbco;-><init>(Lcom/google/android/gms/internal/zzbcx;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbcx;->zzaDV:Lcom/google/android/gms/internal/zzbcw;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzbcx;)Ljava/util/concurrent/locks/Lock;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbcx;->zzaCv:Ljava/util/concurrent/locks/Lock;

    return-object v0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzbcx;)Lcom/google/android/gms/internal/zzbcw;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbcx;->zzaDV:Lcom/google/android/gms/internal/zzbcw;

    return-object v0
.end method


# virtual methods
.method public final connect()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbcx;->zzaDV:Lcom/google/android/gms/internal/zzbcw;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzbcw;->connect()V

    return-void
.end method

.method public final disconnect()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbcx;->zzaDV:Lcom/google/android/gms/internal/zzbcw;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzbcw;->disconnect()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbcx;->zzaDU:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    :cond_0
    return-void
.end method

.method public final dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    const-string v2, "mState="

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbcx;->zzaDV:Lcom/google/android/gms/internal/zzbcw;

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbcx;->zzaCD:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/Api;

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/Api;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/google/android/gms/internal/zzbcx;->zzaDF:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/Api;->zzpd()Lcom/google/android/gms/common/api/Api$zzc;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/Api$zze;

    invoke-interface {v0, v1, p2, p3, p4}, Lcom/google/android/gms/common/api/Api$zze;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final isConnected()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbcx;->zzaDV:Lcom/google/android/gms/internal/zzbcw;

    instance-of v0, v0, Lcom/google/android/gms/internal/zzbca;

    return v0
.end method

.method public final onConnected(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbcx;->zzaCv:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbcx;->zzaDV:Lcom/google/android/gms/internal/zzbcw;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzbcw;->onConnected(Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbcx;->zzaCv:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbcx;->zzaCv:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public final onConnectionSuspended(I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbcx;->zzaCv:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbcx;->zzaDV:Lcom/google/android/gms/internal/zzbcw;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzbcw;->onConnectionSuspended(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbcx;->zzaCv:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbcx;->zzaCv:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public final zza(Lcom/google/android/gms/common/ConnectionResult;Lcom/google/android/gms/common/api/Api;Z)V
    .locals 2
    .param p1    # Lcom/google/android/gms/common/ConnectionResult;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/gms/common/api/Api;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/ConnectionResult;",
            "Lcom/google/android/gms/common/api/Api",
            "<*>;Z)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbcx;->zzaCv:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbcx;->zzaDV:Lcom/google/android/gms/internal/zzbcw;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/internal/zzbcw;->zza(Lcom/google/android/gms/common/ConnectionResult;Lcom/google/android/gms/common/api/Api;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbcx;->zzaCv:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbcx;->zzaCv:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method final zza(Lcom/google/android/gms/internal/zzbcy;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbcx;->zzaDT:Lcom/google/android/gms/internal/zzbcz;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/zzbcz;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbcx;->zzaDT:Lcom/google/android/gms/internal/zzbcz;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzbcz;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method final zza(Ljava/lang/RuntimeException;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbcx;->zzaDT:Lcom/google/android/gms/internal/zzbcz;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/zzbcz;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbcx;->zzaDT:Lcom/google/android/gms/internal/zzbcz;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzbcz;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final zze(Lcom/google/android/gms/internal/zzbay;)Lcom/google/android/gms/internal/zzbay;
    .locals 1
    .param p1    # Lcom/google/android/gms/internal/zzbay;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lcom/google/android/gms/common/api/Api$zzb;",
            "T:",
            "Lcom/google/android/gms/internal/zzbay",
            "<+",
            "Lcom/google/android/gms/common/api/Result;",
            "TA;>;>(TT;)TT;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbay;->zzpC()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbcx;->zzaDV:Lcom/google/android/gms/internal/zzbcw;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzbcw;->zze(Lcom/google/android/gms/internal/zzbay;)Lcom/google/android/gms/internal/zzbay;

    move-result-object v0

    return-object v0
.end method

.method final zzg(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbcx;->zzaCv:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/zzbcx;->zzaDW:Lcom/google/android/gms/common/ConnectionResult;

    new-instance v0, Lcom/google/android/gms/internal/zzbco;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzbco;-><init>(Lcom/google/android/gms/internal/zzbcx;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbcx;->zzaDV:Lcom/google/android/gms/internal/zzbcw;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbcx;->zzaDV:Lcom/google/android/gms/internal/zzbcw;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzbcw;->begin()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbcx;->zzaDS:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbcx;->zzaCv:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbcx;->zzaCv:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public final zzpE()V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbcx;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbcx;->zzaDV:Lcom/google/android/gms/internal/zzbcw;

    check-cast v0, Lcom/google/android/gms/internal/zzbca;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbca;->zzpU()V

    :cond_0
    return-void
.end method

.method final zzqh()V
    .locals 8

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbcx;->zzaCv:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    new-instance v0, Lcom/google/android/gms/internal/zzbcd;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbcx;->zzaCA:Lcom/google/android/gms/common/internal/zzq;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzbcx;->zzaCD:Ljava/util/Map;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzbcx;->zzaCF:Lcom/google/android/gms/common/zze;

    iget-object v5, p0, Lcom/google/android/gms/internal/zzbcx;->zzaBe:Lcom/google/android/gms/common/api/Api$zza;

    iget-object v6, p0, Lcom/google/android/gms/internal/zzbcx;->zzaCv:Ljava/util/concurrent/locks/Lock;

    iget-object v7, p0, Lcom/google/android/gms/internal/zzbcx;->mContext:Landroid/content/Context;

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/zzbcd;-><init>(Lcom/google/android/gms/internal/zzbcx;Lcom/google/android/gms/common/internal/zzq;Ljava/util/Map;Lcom/google/android/gms/common/zze;Lcom/google/android/gms/common/api/Api$zza;Ljava/util/concurrent/locks/Lock;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbcx;->zzaDV:Lcom/google/android/gms/internal/zzbcw;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbcx;->zzaDV:Lcom/google/android/gms/internal/zzbcw;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzbcw;->begin()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbcx;->zzaDS:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbcx;->zzaCv:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbcx;->zzaCv:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method final zzqi()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbcx;->zzaCv:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbcx;->zzaCl:Lcom/google/android/gms/internal/zzbcp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbcp;->zzqe()Z

    new-instance v0, Lcom/google/android/gms/internal/zzbca;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzbca;-><init>(Lcom/google/android/gms/internal/zzbcx;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbcx;->zzaDV:Lcom/google/android/gms/internal/zzbcw;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbcx;->zzaDV:Lcom/google/android/gms/internal/zzbcw;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzbcw;->begin()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbcx;->zzaDS:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbcx;->zzaCv:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbcx;->zzaCv:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method
