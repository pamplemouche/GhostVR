.class public final LAE;
.super LZE;
.source "PG"


# instance fields
.field public final c:J

.field public final d:LzE;

.field public final e:LCE;

.field public final f:LkE;

.field public final g:LuE;

.field public final h:LyE;

.field public final i:LfE;

.field public final j:LiE;

.field public final k:LgE;


# direct methods
.method public constructor <init>(LzE;LCE;LkE;LuE;LyE;LfE;LiE;LgE;)V
    .locals 1

    .line 1
    invoke-direct {p0}, LZE;-><init>()V

    const-string v0, "header"

    .line 2
    invoke-static {v0, p1}, LZE;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3
    iput-object p1, p0, LAE;->d:LzE;

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    .line 4
    iput-object p2, p0, LAE;->e:LCE;

    goto :goto_0

    .line 5
    :cond_0
    sget-object p1, LCE;->e:LCE;

    iput-object p1, p0, LAE;->e:LCE;

    const/4 p1, 0x0

    .line 6
    :goto_0
    iput-object p3, p0, LAE;->f:LkE;

    .line 7
    iput-object p4, p0, LAE;->g:LuE;

    if-eqz p5, :cond_1

    or-int/lit8 p1, p1, 0x2

    .line 8
    iput-object p5, p0, LAE;->h:LyE;

    goto :goto_1

    .line 9
    :cond_1
    sget-object p2, LyE;->c:LyE;

    iput-object p2, p0, LAE;->h:LyE;

    :goto_1
    if-eqz p6, :cond_2

    or-int/lit8 p1, p1, 0x4

    .line 10
    iput-object p6, p0, LAE;->i:LfE;

    goto :goto_2

    .line 11
    :cond_2
    sget-object p2, LfE;->e:LfE;

    iput-object p2, p0, LAE;->i:LfE;

    .line 12
    :goto_2
    iput-object p7, p0, LAE;->j:LiE;

    .line 13
    iput-object p8, p0, LAE;->k:LgE;

    int-to-long p1, p1

    .line 14
    iput-wide p1, p0, LAE;->c:J

    return-void
.end method

.method public static a(LnI;)LAE;
    .locals 10

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 45
    :cond_0
    new-instance v9, LAE;

    iget-object v0, p0, LnI;->c:LmI;

    invoke-static {v0}, LzE;->a(LmI;)LzE;

    move-result-object v1

    iget-object v0, p0, LnI;->d:LpI;

    .line 46
    invoke-static {v0}, LCE;->a(LpI;)LCE;

    move-result-object v2

    iget-object v0, p0, LnI;->e:LXH;

    .line 47
    invoke-static {v0}, LkE;->a(LXH;)LkE;

    move-result-object v3

    iget-object v0, p0, LnI;->f:LhI;

    .line 48
    invoke-static {v0}, LuE;->a(LhI;)LuE;

    move-result-object v4

    iget-object v0, p0, LnI;->g:LlI;

    .line 49
    invoke-static {v0}, LyE;->a(LlI;)LyE;

    move-result-object v5

    iget-object v0, p0, LnI;->h:LSH;

    .line 50
    invoke-static {v0}, LfE;->a(LSH;)LfE;

    move-result-object v6

    iget-object v0, p0, LnI;->i:LVH;

    .line 51
    invoke-static {v0}, LiE;->a(LVH;)LiE;

    move-result-object v7

    iget-object p0, p0, LnI;->j:LTH;

    .line 52
    invoke-static {p0}, LgE;->a(LTH;)LgE;

    move-result-object v8

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, LAE;-><init>(LzE;LCE;LkE;LuE;LyE;LfE;LiE;LgE;)V

    return-object v9
.end method

.method public static a([B)LAE;
    .locals 1

    .line 42
    :try_start_0
    new-instance v0, LnI;

    invoke-direct {v0}, LnI;-><init>()V

    invoke-static {v0, p0}, LZG;->a(LZG;[B)LZG;

    check-cast v0, LnI;

    invoke-static {v0}, LAE;->a(LnI;)LAE;

    move-result-object p0
    :try_end_0
    .catch LYG; {:try_start_0 .. :try_end_0} :catch_1
    .catch LXE; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 43
    new-instance v0, LYE;

    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, LYE;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_1
    move-exception p0

    .line 44
    new-instance v0, LYE;

    invoke-direct {v0, p0}, LYE;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public a()I
    .locals 2

    .line 26
    iget-wide v0, p0, LAE;->c:J

    invoke-static {v0, v1}, LZE;->a(J)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 27
    iget-object v1, p0, LAE;->d:LzE;

    invoke-virtual {v1}, LZE;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    .line 28
    invoke-virtual {p0}, LAE;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    mul-int/lit8 v1, v1, 0x1f

    .line 29
    iget-object v0, p0, LAE;->e:LCE;

    invoke-virtual {v0}, LZE;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 30
    :cond_0
    iget-object v0, p0, LAE;->f:LkE;

    if-eqz v0, :cond_1

    mul-int/lit8 v1, v1, 0x1f

    .line 31
    invoke-virtual {v0}, LZE;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 32
    :cond_1
    iget-object v0, p0, LAE;->g:LuE;

    if-eqz v0, :cond_2

    mul-int/lit8 v1, v1, 0x1f

    .line 33
    invoke-virtual {v0}, LZE;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 34
    :cond_2
    invoke-virtual {p0}, LAE;->d()Z

    move-result v0

    if-eqz v0, :cond_3

    mul-int/lit8 v1, v1, 0x1f

    .line 35
    iget-object v0, p0, LAE;->h:LyE;

    invoke-virtual {v0}, LZE;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 36
    :cond_3
    invoke-virtual {p0}, LAE;->c()Z

    move-result v0

    if-eqz v0, :cond_4

    mul-int/lit8 v1, v1, 0x1f

    .line 37
    iget-object v0, p0, LAE;->i:LfE;

    invoke-virtual {v0}, LZE;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 38
    :cond_4
    iget-object v0, p0, LAE;->j:LiE;

    if-eqz v0, :cond_5

    mul-int/lit8 v1, v1, 0x1f

    .line 39
    invoke-virtual {v0}, LZE;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 40
    :cond_5
    iget-object v0, p0, LAE;->k:LgE;

    if-eqz v0, :cond_6

    mul-int/lit8 v1, v1, 0x1f

    .line 41
    invoke-virtual {v0}, LZE;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    :cond_6
    return v1
.end method

.method public a(LbF;)V
    .locals 2

    .line 1
    iget-object v0, p1, LbF;->a:Ljava/lang/StringBuilder;

    const-string v1, "<ServerToClientMessage:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    iget-object v0, p1, LbF;->a:Ljava/lang/StringBuilder;

    const-string v1, " header="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    iget-object v0, p0, LAE;->d:LzE;

    invoke-virtual {p1, v0}, LbF;->a(LSE;)LbF;

    .line 4
    invoke-virtual {p0}, LAE;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p1, LbF;->a:Ljava/lang/StringBuilder;

    const-string v1, " token_control_message="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    iget-object v0, p0, LAE;->e:LCE;

    invoke-virtual {p1, v0}, LbF;->a(LSE;)LbF;

    .line 7
    :cond_0
    iget-object v0, p0, LAE;->f:LkE;

    if-eqz v0, :cond_1

    .line 8
    iget-object v0, p1, LbF;->a:Ljava/lang/StringBuilder;

    const-string v1, " invalidation_message="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    iget-object v0, p0, LAE;->f:LkE;

    invoke-virtual {p1, v0}, LbF;->a(LSE;)LbF;

    .line 10
    :cond_1
    iget-object v0, p0, LAE;->g:LuE;

    if-eqz v0, :cond_2

    .line 11
    iget-object v0, p1, LbF;->a:Ljava/lang/StringBuilder;

    const-string v1, " registration_status_message="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    iget-object v0, p0, LAE;->g:LuE;

    invoke-virtual {p1, v0}, LbF;->a(LSE;)LbF;

    .line 13
    :cond_2
    invoke-virtual {p0}, LAE;->d()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 14
    iget-object v0, p1, LbF;->a:Ljava/lang/StringBuilder;

    const-string v1, " registration_sync_request_message="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    iget-object v0, p0, LAE;->h:LyE;

    invoke-virtual {p1, v0}, LbF;->a(LSE;)LbF;

    .line 16
    :cond_3
    invoke-virtual {p0}, LAE;->c()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 17
    iget-object v0, p1, LbF;->a:Ljava/lang/StringBuilder;

    const-string v1, " config_change_message="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    iget-object v0, p0, LAE;->i:LfE;

    invoke-virtual {p1, v0}, LbF;->a(LSE;)LbF;

    .line 19
    :cond_4
    iget-object v0, p0, LAE;->j:LiE;

    if-eqz v0, :cond_5

    .line 20
    iget-object v0, p1, LbF;->a:Ljava/lang/StringBuilder;

    const-string v1, " info_request_message="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    iget-object v0, p0, LAE;->j:LiE;

    invoke-virtual {p1, v0}, LbF;->a(LSE;)LbF;

    .line 22
    :cond_5
    iget-object v0, p0, LAE;->k:LgE;

    if-eqz v0, :cond_6

    .line 23
    iget-object v0, p1, LbF;->a:Ljava/lang/StringBuilder;

    const-string v1, " error_message="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    iget-object v0, p0, LAE;->k:LgE;

    invoke-virtual {p1, v0}, LbF;->a(LSE;)LbF;

    :cond_6
    const/16 v0, 0x3e

    .line 25
    iget-object p1, p1, LbF;->a:Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void
.end method

.method public c()Z
    .locals 5

    .line 1
    iget-wide v0, p0, LAE;->c:J

    const-wide/16 v2, 0x4

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public d()Z
    .locals 5

    .line 1
    iget-wide v0, p0, LAE;->c:J

    const-wide/16 v2, 0x2

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public e()Z
    .locals 5

    .line 1
    iget-wide v0, p0, LAE;->c:J

    const-wide/16 v2, 0x1

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, LAE;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    check-cast p1, LAE;

    .line 3
    iget-wide v3, p0, LAE;->c:J

    iget-wide v5, p1, LAE;->c:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_5

    iget-object v1, p0, LAE;->d:LzE;

    iget-object v3, p1, LAE;->d:LzE;

    .line 4
    invoke-static {v1, v3}, LZE;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 5
    invoke-virtual {p0}, LAE;->e()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, LAE;->e:LCE;

    iget-object v3, p1, LAE;->e:LCE;

    invoke-static {v1, v3}, LZE;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_2
    iget-object v1, p0, LAE;->f:LkE;

    iget-object v3, p1, LAE;->f:LkE;

    .line 6
    invoke-static {v1, v3}, LZE;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, LAE;->g:LuE;

    iget-object v3, p1, LAE;->g:LuE;

    .line 7
    invoke-static {v1, v3}, LZE;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 8
    invoke-virtual {p0}, LAE;->d()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, LAE;->h:LyE;

    iget-object v3, p1, LAE;->h:LyE;

    invoke-static {v1, v3}, LZE;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 9
    :cond_3
    invoke-virtual {p0}, LAE;->c()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, LAE;->i:LfE;

    iget-object v3, p1, LAE;->i:LfE;

    invoke-static {v1, v3}, LZE;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_4
    iget-object v1, p0, LAE;->j:LiE;

    iget-object v3, p1, LAE;->j:LiE;

    .line 10
    invoke-static {v1, v3}, LZE;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, LAE;->k:LgE;

    iget-object p1, p1, LAE;->k:LgE;

    .line 11
    invoke-static {v1, p1}, LZE;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
