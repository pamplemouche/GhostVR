.class public Ldk0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lej0;


# instance fields
.field public final a:Lik0;

.field public final b:Lhk0;

.field public final c:Ljava/lang/String;

.field public d:Lwj0;

.field public e:Z


# direct methods
.method public constructor <init>(Lhk0;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ldk0;->b:Lhk0;

    .line 3
    iput-object p2, p0, Ldk0;->c:Ljava/lang/String;

    .line 4
    new-instance p1, Lik0;

    invoke-direct {p1}, Lik0;-><init>()V

    iput-object p1, p0, Ldk0;->a:Lik0;

    return-void
.end method


# virtual methods
.method public a(J)V
    .locals 17

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Ldk0;->b:Lhk0;

    invoke-virtual {v1}, LGj0;->g()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 2
    iput-boolean v1, v0, Ldk0;->e:Z

    .line 3
    iget-object v15, v0, Ldk0;->c:Ljava/lang/String;

    .line 4
    new-instance v14, Lcom/google/android/gms/cast/MediaInfo;

    const/4 v13, 0x0

    const/16 v16, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v2, v14

    move-object v3, v15

    move-object v1, v14

    move-object/from16 v14, v16

    .line 5
    invoke-direct/range {v2 .. v14}, Lcom/google/android/gms/cast/MediaInfo;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/android/gms/cast/MediaMetadata;JLjava/util/List;Lcom/google/android/gms/cast/TextTrackStyle;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    if-eqz v15, :cond_3

    const-string v2, "*/*"

    .line 6
    iput-object v2, v1, Lcom/google/android/gms/cast/MediaInfo;->y:Ljava/lang/String;

    const/4 v2, 0x1

    .line 7
    iput v2, v1, Lcom/google/android/gms/cast/MediaInfo;->x:I

    .line 8
    iget-object v2, v0, Ldk0;->b:Lhk0;

    invoke-virtual {v2}, LGj0;->d()Lok;

    move-result-object v2

    const/4 v4, 0x1

    const/4 v14, 0x0

    if-eqz v2, :cond_2

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    const/4 v12, 0x0

    .line 9
    new-instance v15, LFj;

    const/4 v13, 0x0

    move-object v3, v15

    move-wide/from16 v5, p1

    move-object v9, v12

    move-object v10, v12

    move-object v11, v12

    invoke-direct/range {v3 .. v13}, LFj;-><init>(ZJD[JLorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;LGl;)V

    const-string v3, "Must be called from the main thread."

    .line 10
    invoke-static {v3}, Lxp;->a(Ljava/lang/String;)V

    .line 11
    invoke-virtual {v2}, Lok;->s()Z

    move-result v3

    if-nez v3, :cond_1

    const/16 v1, 0x11

    .line 12
    invoke-static {v1, v14}, Lok;->a(ILjava/lang/String;)LJm;

    goto :goto_0

    .line 13
    :cond_1
    new-instance v3, Lqk;

    iget-object v4, v2, Lok;->f:LHm;

    invoke-direct {v3, v2, v4, v1, v15}, Lqk;-><init>(Lok;LHm;Lcom/google/android/gms/cast/MediaInfo;LFj;)V

    invoke-virtual {v2, v3}, Lok;->a(Llk;)Llk;

    :goto_0
    return-void

    .line 14
    :cond_2
    throw v14

    .line 15
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "contentID cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final a(LLm;)V
    .locals 2

    .line 16
    invoke-interface {p1}, LLm;->c()Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/Status;->r()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 17
    invoke-interface {p1}, LLm;->c()Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    .line 18
    iget p1, p1, Lcom/google/android/gms/common/api/Status;->x:I

    .line 19
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v1

    const-string p1, "FlingCtrlAdptr"

    const-string v1, "Error when sending command. Status code: %d"

    .line 20
    invoke-static {p1, v1, v0}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
