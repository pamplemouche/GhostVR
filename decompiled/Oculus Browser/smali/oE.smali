.class public final LoE;
.super LZE;
.source "PG"


# instance fields
.field public final c:J

.field public final d:I

.field public final e:Ljava/util/List;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, LoE;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, LoE;-><init>(Ljava/lang/Integer;Ljava/util/Collection;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;Ljava/util/Collection;)V
    .locals 1

    .line 1
    invoke-direct {p0}, LZE;-><init>()V

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, LoE;->d:I

    goto :goto_0

    :cond_0
    const/16 p1, 0x1f4

    .line 3
    iput p1, p0, LoE;->d:I

    const/4 v0, 0x0

    :goto_0
    const-string p1, "rate_limit"

    .line 4
    invoke-static {p1, p2}, LZE;->a(Ljava/lang/String;Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, LoE;->e:Ljava/util/List;

    int-to-long p1, v0

    .line 5
    iput-wide p1, p0, LoE;->c:J

    return-void
.end method

.method public static a(LbI;)LoE;
    .locals 4

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 14
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, LbI;->d:[LdI;

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    .line 15
    :goto_0
    iget-object v2, p0, LbI;->d:[LdI;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 16
    aget-object v2, v2, v1

    invoke-static {v2}, LqE;->a(LdI;)LqE;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 17
    :cond_1
    new-instance v1, LoE;

    iget-object p0, p0, LbI;->c:Ljava/lang/Integer;

    invoke-direct {v1, p0, v0}, LoE;-><init>(Ljava/lang/Integer;Ljava/util/Collection;)V

    return-object v1
.end method


# virtual methods
.method public a()I
    .locals 2

    .line 10
    iget-wide v0, p0, LoE;->c:J

    invoke-static {v0, v1}, LZE;->a(J)I

    move-result v0

    .line 11
    invoke-virtual {p0}, LoE;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    mul-int/lit8 v0, v0, 0x1f

    .line 12
    iget v1, p0, LoE;->d:I

    add-int/2addr v0, v1

    :cond_0
    mul-int/lit8 v0, v0, 0x1f

    .line 13
    iget-object v1, p0, LoE;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public a(LbF;)V
    .locals 2

    .line 1
    iget-object v0, p1, LbF;->a:Ljava/lang/StringBuilder;

    const-string v1, "<ProtocolHandlerConfigP:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    invoke-virtual {p0}, LoE;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p1, LbF;->a:Ljava/lang/StringBuilder;

    const-string v1, " batching_delay_ms="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    iget v0, p0, LoE;->d:I

    .line 5
    iget-object v1, p1, LbF;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 6
    :cond_0
    iget-object v0, p1, LbF;->a:Ljava/lang/StringBuilder;

    const-string v1, " rate_limit=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    iget-object v0, p0, LoE;->e:Ljava/util/List;

    invoke-virtual {p1, v0}, LbF;->a(Ljava/lang/Iterable;)LbF;

    const/16 v0, 0x5d

    .line 8
    iget-object v1, p1, LbF;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v0, 0x3e

    .line 9
    iget-object p1, p1, LbF;->a:Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void
.end method

.method public c()Z
    .locals 5

    .line 1
    iget-wide v0, p0, LoE;->c:J

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
    instance-of v1, p1, LoE;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    check-cast p1, LoE;

    .line 3
    iget-wide v3, p0, LoE;->c:J

    iget-wide v5, p1, LoE;->c:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_3

    .line 4
    invoke-virtual {p0}, LoE;->c()Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, LoE;->d:I

    iget v3, p1, LoE;->d:I

    if-ne v1, v3, :cond_3

    :cond_2
    iget-object v1, p0, LoE;->e:Ljava/util/List;

    iget-object p1, p1, LoE;->e:Ljava/util/List;

    .line 5
    invoke-static {v1, p1}, LZE;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
