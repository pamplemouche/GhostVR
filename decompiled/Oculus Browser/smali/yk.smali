.class public final Lyk;
.super Llk;
.source "PG"


# instance fields
.field public final synthetic u:D

.field public final synthetic v:Lorg/json/JSONObject;

.field public final synthetic w:Lok;


# direct methods
.method public constructor <init>(Lok;LHm;DLorg/json/JSONObject;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lyk;->w:Lok;

    iput-wide p3, p0, Lyk;->u:D

    iput-object p5, p0, Lyk;->v:Lorg/json/JSONObject;

    invoke-direct {p0, p1, p2}, Llk;-><init>(Lok;LHm;)V

    return-void
.end method


# virtual methods
.method public final a(Lss;)V
    .locals 5

    .line 1
    iget-object p1, p0, Lyk;->w:Lok;

    .line 2
    iget-object p1, p1, Lok;->a:Ljava/lang/Object;

    .line 3
    monitor-enter p1

    .line 4
    :try_start_0
    iget-object v0, p0, Lyk;->w:Lok;

    .line 5
    iget-object v0, v0, Lok;->c:LKs;

    .line 6
    iget-object v1, p0, Llk;->r:LPs;

    iget-wide v2, p0, Lyk;->u:D

    iget-object v4, p0, Lyk;->v:Lorg/json/JSONObject;

    invoke-virtual {v0, v1, v2, v3, v4}, LKs;->a(LPs;DLorg/json/JSONObject;)J
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch LNs; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 7
    :catch_0
    :try_start_1
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/16 v1, 0x834

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    .line 8
    new-instance v1, LDk;

    invoke-direct {v1, v0}, LDk;-><init>(Lcom/google/android/gms/common/api/Status;)V

    .line 9
    invoke-virtual {p0, v1}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->a(LLm;)V

    .line 10
    :goto_0
    monitor-exit p1

    return-void

    :goto_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
