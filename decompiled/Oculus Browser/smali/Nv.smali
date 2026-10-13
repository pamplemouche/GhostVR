.class public final LNv;
.super Luv;
.source "PG"


# instance fields
.field public final b:Lcw;

.field public final c:LPv;

.field public final d:Ljava/lang/Object;

.field public e:Z


# direct methods
.method public synthetic constructor <init>(LPv;LXv;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Luv;-><init>()V

    new-instance p2, Lcw;

    invoke-direct {p2}, Lcw;-><init>()V

    iput-object p2, p0, LNv;->b:Lcw;

    new-instance p2, Ljava/lang/Object;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, LNv;->d:Ljava/lang/Object;

    const/4 p2, 0x1

    iput-boolean p2, p0, LNv;->e:Z

    iput-object p1, p0, LNv;->c:LPv;

    return-void
.end method


# virtual methods
.method public final a(Lwv;)Landroid/util/SparseArray;
    .locals 8

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lwv;->a()Ljava/nio/ByteBuffer;

    move-result-object v0

    iget-object v1, p0, LNv;->d:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v2, p0, LNv;->e:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, LNv;->c:LPv;

    invoke-static {p1}, Lcom/google/android/gms/internal/vision/zzk;->a(Lwv;)Lcom/google/android/gms/internal/vision/zzk;

    move-result-object p1

    invoke-virtual {v2, v0, p1}, LPv;->a(Ljava/nio/ByteBuffer;Lcom/google/android/gms/internal/vision/zzk;)[LMv;

    move-result-object p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    new-instance v1, Landroid/util/SparseArray;

    array-length v2, p1

    invoke-direct {v1, v2}, Landroid/util/SparseArray;-><init>(I)V

    array-length v2, p1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v5, p1, v3

    .line 1
    iget v6, v5, LMv;->a:I

    .line 2
    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    add-int/lit8 v6, v4, 0x1

    move v4, v6

    :cond_0
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, LNv;->b:Lcw;

    invoke-virtual {v7, v6}, Lcw;->a(I)I

    move-result v6

    invoke-virtual {v1, v6, v5}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v1

    :cond_2
    :try_start_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Cannot use detector after release()"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "No frame supplied."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a()V
    .locals 2

    invoke-super {p0}, Luv;->a()V

    iget-object v0, p0, LNv;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, LNv;->e:Z

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    iget-object v1, p0, LNv;->c:LPv;

    invoke-virtual {v1}, Leu;->c()V

    const/4 v1, 0x0

    iput-boolean v1, p0, LNv;->e:Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final finalize()V
    .locals 3

    :try_start_0
    iget-object v0, p0, LNv;->d:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-boolean v1, p0, LNv;->e:Z

    if-eqz v1, :cond_0

    const-string v1, "FaceDetector"

    const-string v2, "FaceDetector was not released with FaceDetector.release()"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, LNv;->a()V

    :cond_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method
