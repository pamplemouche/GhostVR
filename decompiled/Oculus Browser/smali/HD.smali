.class public final LHD;
.super LZE;
.source "PG"


# instance fields
.field public final c:I

.field public final d:LPE;

.field public final e:LbE;

.field public final f:Z


# direct methods
.method public constructor <init>(Ljava/lang/Integer;LPE;LbE;Ljava/lang/Boolean;)V
    .locals 1

    .line 1
    invoke-direct {p0}, LZE;-><init>()V

    const-string v0, "client_type"

    .line 2
    invoke-static {v0, p1}, LZE;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, LHD;->c:I

    const-string p1, "client_name"

    .line 4
    invoke-static {p1, p2}, LZE;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 5
    iput-object p2, p0, LHD;->d:LPE;

    const-string p1, "client_config"

    .line 6
    invoke-static {p1, p3}, LZE;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 7
    iput-object p3, p0, LHD;->e:LbE;

    const-string p1, "skip_start_for_test"

    .line 8
    invoke-static {p1, p4}, LZE;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 9
    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, LHD;->f:Z

    return-void
.end method

.method public static a(LpH;)LHD;
    .locals 4

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 17
    :cond_0
    new-instance v0, LHD;

    iget-object v1, p0, LpH;->c:Ljava/lang/Integer;

    iget-object v2, p0, LpH;->d:[B

    .line 18
    invoke-static {v2}, LPE;->a([B)LPE;

    move-result-object v2

    iget-object v3, p0, LpH;->e:LOH;

    .line 19
    invoke-static {v3}, LbE;->a(LOH;)LbE;

    move-result-object v3

    iget-object p0, p0, LpH;->f:Ljava/lang/Boolean;

    invoke-direct {v0, v1, v2, v3, p0}, LHD;-><init>(Ljava/lang/Integer;LPE;LbE;Ljava/lang/Boolean;)V

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 3

    .line 13
    iget v0, p0, LHD;->c:I

    const/16 v1, 0x1f

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 14
    iget-object v2, p0, LHD;->d:LPE;

    invoke-virtual {v2}, LPE;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    .line 15
    iget-object v0, p0, LHD;->e:LbE;

    invoke-virtual {v0}, LZE;->hashCode()I

    move-result v0

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 16
    iget-boolean v1, p0, LHD;->f:Z

    invoke-static {v1}, LZE;->a(Z)I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public a(LbF;)V
    .locals 2

    .line 1
    iget-object v0, p1, LbF;->a:Ljava/lang/StringBuilder;

    const-string v1, "<CreateClient:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    iget-object v0, p1, LbF;->a:Ljava/lang/StringBuilder;

    const-string v1, " client_type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    iget v0, p0, LHD;->c:I

    .line 4
    iget-object v1, p1, LbF;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 5
    iget-object v0, p1, LbF;->a:Ljava/lang/StringBuilder;

    const-string v1, " client_name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    iget-object v0, p0, LHD;->d:LPE;

    invoke-virtual {p1, v0}, LbF;->a(LSE;)LbF;

    .line 7
    iget-object v0, p1, LbF;->a:Ljava/lang/StringBuilder;

    const-string v1, " client_config="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    iget-object v0, p0, LHD;->e:LbE;

    invoke-virtual {p1, v0}, LbF;->a(LSE;)LbF;

    .line 9
    iget-object v0, p1, LbF;->a:Ljava/lang/StringBuilder;

    const-string v1, " skip_start_for_test="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    iget-boolean v0, p0, LHD;->f:Z

    .line 11
    iget-object v1, p1, LbF;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v0, 0x3e

    .line 12
    iget-object p1, p1, LbF;->a:Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, LHD;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    check-cast p1, LHD;

    .line 3
    iget v1, p0, LHD;->c:I

    iget v3, p1, LHD;->c:I

    if-ne v1, v3, :cond_2

    iget-object v1, p0, LHD;->d:LPE;

    iget-object v3, p1, LHD;->d:LPE;

    .line 4
    invoke-static {v1, v3}, LZE;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, LHD;->e:LbE;

    iget-object v3, p1, LHD;->e:LbE;

    .line 5
    invoke-static {v1, v3}, LZE;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, LHD;->f:Z

    iget-boolean p1, p1, LHD;->f:Z

    if-ne v1, p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
