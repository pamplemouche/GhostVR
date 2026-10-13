.class public final LzD;
.super LZE;
.source "PG"


# instance fields
.field public final c:I

.field public final d:LPE;

.field public final e:J

.field public final f:LbE;


# direct methods
.method public constructor <init>(Ljava/lang/Integer;LPE;Ljava/lang/Long;LbE;)V
    .locals 1

    .line 1
    invoke-direct {p0}, LZE;-><init>()V

    const-string v0, "client_type"

    .line 2
    invoke-static {v0, p1}, LZE;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, LzD;->c:I

    const-string p1, "client_name"

    .line 4
    invoke-static {p1, p2}, LZE;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 5
    iput-object p2, p0, LzD;->d:LPE;

    const-string p1, "ticl_id"

    .line 6
    invoke-static {p1, p3}, LZE;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 7
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    iput-wide p1, p0, LzD;->e:J

    const-string p1, "client_config"

    .line 8
    invoke-static {p1, p4}, LZE;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 9
    iput-object p4, p0, LzD;->f:LbE;

    return-void
.end method

.method public static a(LhH;)LzD;
    .locals 4

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 17
    :cond_0
    new-instance v0, LzD;

    iget-object v1, p0, LhH;->c:Ljava/lang/Integer;

    iget-object v2, p0, LhH;->d:[B

    .line 18
    invoke-static {v2}, LPE;->a([B)LPE;

    move-result-object v2

    iget-object v3, p0, LhH;->e:Ljava/lang/Long;

    iget-object p0, p0, LhH;->f:LOH;

    .line 19
    invoke-static {p0}, LbE;->a(LOH;)LbE;

    move-result-object p0

    invoke-direct {v0, v1, v2, v3, p0}, LzD;-><init>(Ljava/lang/Integer;LPE;Ljava/lang/Long;LbE;)V

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 5

    .line 13
    iget v0, p0, LzD;->c:I

    const/16 v1, 0x1f

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 14
    iget-object v2, p0, LzD;->d:LPE;

    invoke-virtual {v2}, LPE;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    .line 15
    iget-wide v3, p0, LzD;->e:J

    invoke-static {v3, v4}, LZE;->a(J)I

    move-result v0

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 16
    iget-object v1, p0, LzD;->f:LbE;

    invoke-virtual {v1}, LZE;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public a(LbF;)V
    .locals 3

    .line 1
    iget-object v0, p1, LbF;->a:Ljava/lang/StringBuilder;

    const-string v1, "<Metadata:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    iget-object v0, p1, LbF;->a:Ljava/lang/StringBuilder;

    const-string v1, " client_type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    iget v0, p0, LzD;->c:I

    .line 4
    iget-object v1, p1, LbF;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 5
    iget-object v0, p1, LbF;->a:Ljava/lang/StringBuilder;

    const-string v1, " client_name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    iget-object v0, p0, LzD;->d:LPE;

    invoke-virtual {p1, v0}, LbF;->a(LSE;)LbF;

    .line 7
    iget-object v0, p1, LbF;->a:Ljava/lang/StringBuilder;

    const-string v1, " ticl_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    iget-wide v0, p0, LzD;->e:J

    .line 9
    iget-object v2, p1, LbF;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 10
    iget-object v0, p1, LbF;->a:Ljava/lang/StringBuilder;

    const-string v1, " client_config="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    iget-object v0, p0, LzD;->f:LbE;

    invoke-virtual {p1, v0}, LbF;->a(LSE;)LbF;

    const/16 v0, 0x3e

    .line 12
    iget-object p1, p1, LbF;->a:Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, LzD;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    check-cast p1, LzD;

    .line 3
    iget v1, p0, LzD;->c:I

    iget v3, p1, LzD;->c:I

    if-ne v1, v3, :cond_2

    iget-object v1, p0, LzD;->d:LPE;

    iget-object v3, p1, LzD;->d:LPE;

    .line 4
    invoke-static {v1, v3}, LZE;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-wide v3, p0, LzD;->e:J

    iget-wide v5, p1, LzD;->e:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    iget-object v1, p0, LzD;->f:LbE;

    iget-object p1, p1, LzD;->f:LbE;

    .line 5
    invoke-static {v1, p1}, LZE;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
