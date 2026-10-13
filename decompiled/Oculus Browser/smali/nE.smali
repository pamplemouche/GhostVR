.class public final LnE;
.super LZE;
.source "PG"


# instance fields
.field public final c:J

.field public final d:Ljava/lang/String;

.field public final e:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, LnE;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, LnE;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 2

    .line 1
    invoke-direct {p0}, LZE;-><init>()V

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    .line 2
    iput-object p1, p0, LnE;->d:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p1, ""

    .line 3
    iput-object p1, p0, LnE;->d:Ljava/lang/String;

    const/4 v1, 0x0

    :goto_0
    if-eqz p2, :cond_1

    or-int/lit8 v1, v1, 0x2

    .line 4
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, LnE;->e:I

    goto :goto_1

    .line 5
    :cond_1
    iput v0, p0, LnE;->e:I

    :goto_1
    int-to-long p1, v1

    .line 6
    iput-wide p1, p0, LnE;->c:J

    return-void
.end method

.method public static a(LaI;)LnE;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 16
    :cond_0
    new-instance v0, LnE;

    iget-object v1, p0, LaI;->c:Ljava/lang/String;

    iget-object p0, p0, LaI;->d:Ljava/lang/Integer;

    invoke-direct {v0, v1, p0}, LnE;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 2

    .line 11
    iget-wide v0, p0, LnE;->c:J

    invoke-static {v0, v1}, LZE;->a(J)I

    move-result v0

    .line 12
    invoke-virtual {p0}, LnE;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    mul-int/lit8 v0, v0, 0x1f

    .line 13
    iget-object v1, p0, LnE;->d:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 14
    :cond_0
    invoke-virtual {p0}, LnE;->d()Z

    move-result v1

    if-eqz v1, :cond_1

    mul-int/lit8 v0, v0, 0x1f

    .line 15
    iget v1, p0, LnE;->e:I

    add-int/2addr v0, v1

    :cond_1
    return v0
.end method

.method public a(LbF;)V
    .locals 2

    .line 1
    iget-object v0, p1, LbF;->a:Ljava/lang/StringBuilder;

    const-string v1, "<PropertyRecord:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    invoke-virtual {p0}, LnE;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p1, LbF;->a:Ljava/lang/StringBuilder;

    const-string v1, " name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    iget-object v0, p0, LnE;->d:Ljava/lang/String;

    .line 5
    iget-object v1, p1, LbF;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    :cond_0
    invoke-virtual {p0}, LnE;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    iget-object v0, p1, LbF;->a:Ljava/lang/StringBuilder;

    const-string v1, " value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    iget v0, p0, LnE;->e:I

    .line 9
    iget-object v1, p1, LbF;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_1
    const/16 v0, 0x3e

    .line 10
    iget-object p1, p1, LbF;->a:Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void
.end method

.method public c()Z
    .locals 5

    .line 1
    iget-wide v0, p0, LnE;->c:J

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

.method public d()Z
    .locals 5

    .line 1
    iget-wide v0, p0, LnE;->c:J

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

.method public e()LaI;
    .locals 3

    .line 1
    new-instance v0, LaI;

    invoke-direct {v0}, LaI;-><init>()V

    .line 2
    invoke-virtual {p0}, LnE;->c()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, LnE;->d:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    iput-object v1, v0, LaI;->c:Ljava/lang/String;

    .line 3
    invoke-virtual {p0}, LnE;->d()Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, LnE;->e:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :cond_1
    iput-object v2, v0, LaI;->d:Ljava/lang/Integer;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, LnE;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    check-cast p1, LnE;

    .line 3
    iget-wide v3, p0, LnE;->c:J

    iget-wide v5, p1, LnE;->c:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_3

    .line 4
    invoke-virtual {p0}, LnE;->c()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, LnE;->d:Ljava/lang/String;

    iget-object v3, p1, LnE;->d:Ljava/lang/String;

    invoke-static {v1, v3}, LZE;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 5
    :cond_2
    invoke-virtual {p0}, LnE;->d()Z

    move-result v1

    if-eqz v1, :cond_4

    iget v1, p0, LnE;->e:I

    iget p1, p1, LnE;->e:I

    if-ne v1, p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :cond_4
    :goto_0
    return v0
.end method
