.class public final LjE;
.super LZE;
.source "PG"


# instance fields
.field public final c:I

.field public final d:LPE;

.field public final e:LaE;

.field public final f:I


# direct methods
.method public constructor <init>(Ljava/lang/Integer;LPE;LaE;Ljava/lang/Integer;)V
    .locals 2

    .line 1
    invoke-direct {p0}, LZE;-><init>()V

    const-string v0, "client_type"

    .line 2
    invoke-static {v0, p1}, LZE;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, LZE;->a(Ljava/lang/String;I)V

    .line 4
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, LjE;->c:I

    const-string p1, "nonce"

    .line 5
    invoke-static {p1, p2}, LZE;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 6
    iput-object p2, p0, LjE;->d:LPE;

    const-string p1, "application_client_id"

    .line 7
    invoke-static {p1, p3}, LZE;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 8
    iput-object p3, p0, LjE;->e:LaE;

    const-string p1, "digest_serialization_type"

    .line 9
    invoke-static {p1, p4}, LZE;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 10
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, LjE;->f:I

    return-void
.end method

.method public static a(LWH;)LjE;
    .locals 4

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 17
    :cond_0
    new-instance v0, LjE;

    iget-object v1, p0, LWH;->c:Ljava/lang/Integer;

    iget-object v2, p0, LWH;->d:[B

    .line 18
    invoke-static {v2}, LPE;->a([B)LPE;

    move-result-object v2

    iget-object v3, p0, LWH;->e:LNH;

    .line 19
    invoke-static {v3}, LaE;->a(LNH;)LaE;

    move-result-object v3

    iget-object p0, p0, LWH;->f:Ljava/lang/Integer;

    invoke-direct {v0, v1, v2, v3, p0}, LjE;-><init>(Ljava/lang/Integer;LPE;LaE;Ljava/lang/Integer;)V

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 3

    .line 13
    iget v0, p0, LjE;->c:I

    const/16 v1, 0x1f

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 14
    iget-object v2, p0, LjE;->d:LPE;

    invoke-virtual {v2}, LPE;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    .line 15
    iget-object v0, p0, LjE;->e:LaE;

    invoke-virtual {v0}, LZE;->hashCode()I

    move-result v0

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 16
    iget v1, p0, LjE;->f:I

    add-int/2addr v0, v1

    return v0
.end method

.method public a(LbF;)V
    .locals 2

    .line 1
    iget-object v0, p1, LbF;->a:Ljava/lang/StringBuilder;

    const-string v1, "<InitializeMessage:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    iget-object v0, p1, LbF;->a:Ljava/lang/StringBuilder;

    const-string v1, " client_type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    iget v0, p0, LjE;->c:I

    .line 4
    iget-object v1, p1, LbF;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 5
    iget-object v0, p1, LbF;->a:Ljava/lang/StringBuilder;

    const-string v1, " nonce="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    iget-object v0, p0, LjE;->d:LPE;

    invoke-virtual {p1, v0}, LbF;->a(LSE;)LbF;

    .line 7
    iget-object v0, p1, LbF;->a:Ljava/lang/StringBuilder;

    const-string v1, " application_client_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    iget-object v0, p0, LjE;->e:LaE;

    invoke-virtual {p1, v0}, LbF;->a(LSE;)LbF;

    .line 9
    iget-object v0, p1, LbF;->a:Ljava/lang/StringBuilder;

    const-string v1, " digest_serialization_type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    iget v0, p0, LjE;->f:I

    .line 11
    iget-object v1, p1, LbF;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v0, 0x3e

    .line 12
    iget-object p1, p1, LbF;->a:Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void
.end method

.method public c()LWH;
    .locals 5

    .line 1
    new-instance v0, LWH;

    invoke-direct {v0}, LWH;-><init>()V

    .line 2
    iget v1, p0, LjE;->c:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, LWH;->c:Ljava/lang/Integer;

    .line 3
    iget-object v1, p0, LjE;->d:LPE;

    .line 4
    iget-object v1, v1, LPE;->w:[B

    .line 5
    iput-object v1, v0, LWH;->d:[B

    .line 6
    iget-object v1, p0, LjE;->e:LaE;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 7
    new-instance v3, LNH;

    invoke-direct {v3}, LNH;-><init>()V

    .line 8
    invoke-virtual {v1}, LaE;->c()Z

    move-result v4

    if-eqz v4, :cond_0

    iget v2, v1, LaE;->d:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :cond_0
    iput-object v2, v3, LNH;->c:Ljava/lang/Integer;

    .line 9
    iget-object v1, v1, LaE;->e:LPE;

    .line 10
    iget-object v1, v1, LPE;->w:[B

    .line 11
    iput-object v1, v3, LNH;->d:[B

    .line 12
    iput-object v3, v0, LWH;->e:LNH;

    .line 13
    iget v1, p0, LjE;->f:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, LWH;->f:Ljava/lang/Integer;

    return-object v0

    .line 14
    :cond_1
    throw v2
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, LjE;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    check-cast p1, LjE;

    .line 3
    iget v1, p0, LjE;->c:I

    iget v3, p1, LjE;->c:I

    if-ne v1, v3, :cond_2

    iget-object v1, p0, LjE;->d:LPE;

    iget-object v3, p1, LjE;->d:LPE;

    .line 4
    invoke-static {v1, v3}, LZE;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, LjE;->e:LaE;

    iget-object v3, p1, LjE;->e:LaE;

    .line 5
    invoke-static {v1, v3}, LZE;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, LjE;->f:I

    iget p1, p1, LjE;->f:I

    if-ne v1, p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
