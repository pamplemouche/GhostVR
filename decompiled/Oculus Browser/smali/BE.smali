.class public final LBE;
.super LZE;
.source "PG"


# instance fields
.field public final c:J

.field public final d:I

.field public final e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, LZE;-><init>()V

    const-string v0, "code"

    .line 2
    invoke-static {v0, p1}, LZE;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, LBE;->d:I

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    .line 4
    iput-object p2, p0, LBE;->e:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p1, ""

    .line 5
    iput-object p1, p0, LBE;->e:Ljava/lang/String;

    const/4 p1, 0x0

    :goto_0
    int-to-long p1, p1

    .line 6
    iput-wide p1, p0, LBE;->c:J

    return-void
.end method

.method public static a(LoI;)LBE;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 14
    :cond_0
    new-instance v0, LBE;

    iget-object v1, p0, LoI;->c:Ljava/lang/Integer;

    iget-object p0, p0, LoI;->d:Ljava/lang/String;

    invoke-direct {v0, v1, p0}, LBE;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 2

    .line 10
    iget-wide v0, p0, LBE;->c:J

    invoke-static {v0, v1}, LZE;->a(J)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 11
    iget v1, p0, LBE;->d:I

    add-int/2addr v0, v1

    .line 12
    invoke-virtual {p0}, LBE;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    mul-int/lit8 v0, v0, 0x1f

    .line 13
    iget-object v1, p0, LBE;->e:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    return v0
.end method

.method public a(LbF;)V
    .locals 2

    .line 1
    iget-object v0, p1, LbF;->a:Ljava/lang/StringBuilder;

    const-string v1, "<StatusP:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    iget-object v0, p1, LbF;->a:Ljava/lang/StringBuilder;

    const-string v1, " code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    iget v0, p0, LBE;->d:I

    .line 4
    iget-object v1, p1, LbF;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 5
    invoke-virtual {p0}, LBE;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p1, LbF;->a:Ljava/lang/StringBuilder;

    const-string v1, " description="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    iget-object v0, p0, LBE;->e:Ljava/lang/String;

    .line 8
    iget-object v1, p1, LbF;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const/16 v0, 0x3e

    .line 9
    iget-object p1, p1, LbF;->a:Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void
.end method

.method public c()Z
    .locals 5

    .line 1
    iget-wide v0, p0, LBE;->c:J

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
    instance-of v1, p1, LBE;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    check-cast p1, LBE;

    .line 3
    iget-wide v3, p0, LBE;->c:J

    iget-wide v5, p1, LBE;->c:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    iget v1, p0, LBE;->d:I

    iget v3, p1, LBE;->d:I

    if-ne v1, v3, :cond_2

    .line 4
    invoke-virtual {p0}, LBE;->c()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, LBE;->e:Ljava/lang/String;

    iget-object p1, p1, LBE;->e:Ljava/lang/String;

    invoke-static {v1, p1}, LZE;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :cond_3
    :goto_0
    return v0
.end method
