.class public final LsE;
.super LZE;
.source "PG"


# instance fields
.field public final c:LmE;

.field public final d:I


# direct methods
.method public constructor <init>(LmE;Ljava/lang/Integer;)V
    .locals 1

    .line 1
    invoke-direct {p0}, LZE;-><init>()V

    const-string v0, "object_id"

    .line 2
    invoke-static {v0, p1}, LZE;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3
    iput-object p1, p0, LsE;->c:LmE;

    const-string p1, "op_type"

    .line 4
    invoke-static {p1, p2}, LZE;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 5
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, LsE;->d:I

    return-void
.end method

.method public static a(LfI;)LsE;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 11
    :cond_0
    new-instance v0, LsE;

    iget-object v1, p0, LfI;->c:LZH;

    invoke-static {v1}, LmE;->a(LZH;)LmE;

    move-result-object v1

    iget-object p0, p0, LfI;->d:Ljava/lang/Integer;

    invoke-direct {v0, v1, p0}, LsE;-><init>(LmE;Ljava/lang/Integer;)V

    return-object v0
.end method

.method public static a(LmE;I)LsE;
    .locals 1

    .line 8
    new-instance v0, LsE;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {v0, p0, p1}, LsE;-><init>(LmE;Ljava/lang/Integer;)V

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 2

    .line 9
    iget-object v0, p0, LsE;->c:LmE;

    invoke-virtual {v0}, LZE;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v0, v0, 0x1f

    .line 10
    iget v1, p0, LsE;->d:I

    add-int/2addr v0, v1

    return v0
.end method

.method public a(LbF;)V
    .locals 2

    .line 1
    iget-object v0, p1, LbF;->a:Ljava/lang/StringBuilder;

    const-string v1, "<RegistrationP:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    iget-object v0, p1, LbF;->a:Ljava/lang/StringBuilder;

    const-string v1, " object_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    iget-object v0, p0, LsE;->c:LmE;

    invoke-virtual {p1, v0}, LbF;->a(LSE;)LbF;

    .line 4
    iget-object v0, p1, LbF;->a:Ljava/lang/StringBuilder;

    const-string v1, " op_type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    iget v0, p0, LsE;->d:I

    .line 6
    iget-object v1, p1, LbF;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v0, 0x3e

    .line 7
    iget-object p1, p1, LbF;->a:Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void
.end method

.method public c()LfI;
    .locals 2

    .line 1
    new-instance v0, LfI;

    invoke-direct {v0}, LfI;-><init>()V

    .line 2
    iget-object v1, p0, LsE;->c:LmE;

    invoke-virtual {v1}, LmE;->c()LZH;

    move-result-object v1

    iput-object v1, v0, LfI;->c:LZH;

    .line 3
    iget v1, p0, LsE;->d:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, LfI;->d:Ljava/lang/Integer;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, LsE;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    check-cast p1, LsE;

    .line 3
    iget-object v1, p0, LsE;->c:LmE;

    iget-object v3, p1, LsE;->c:LmE;

    invoke-static {v1, v3}, LZE;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, LsE;->d:I

    iget p1, p1, LsE;->d:I

    if-ne v1, p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
