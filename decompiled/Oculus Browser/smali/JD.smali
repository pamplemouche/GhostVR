.class public final LJD;
.super LZE;
.source "PG"


# instance fields
.field public final c:LPE;


# direct methods
.method public constructor <init>(LPE;)V
    .locals 1

    .line 1
    invoke-direct {p0}, LZE;-><init>()V

    const-string v0, "data"

    .line 2
    invoke-static {v0, p1}, LZE;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3
    iput-object p1, p0, LJD;->c:LPE;

    return-void
.end method

.method public static a(LrH;)LJD;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 6
    :cond_0
    new-instance v0, LJD;

    iget-object p0, p0, LrH;->c:[B

    invoke-static {p0}, LPE;->a([B)LPE;

    move-result-object p0

    invoke-direct {v0, p0}, LJD;-><init>(LPE;)V

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 5
    iget-object v0, p0, LJD;->c:LPE;

    invoke-virtual {v0}, LPE;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x1f

    return v0
.end method

.method public a(LbF;)V
    .locals 2

    .line 1
    iget-object v0, p1, LbF;->a:Ljava/lang/StringBuilder;

    const-string v1, "<ServerMessage:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    iget-object v0, p1, LbF;->a:Ljava/lang/StringBuilder;

    const-string v1, " data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    iget-object v0, p0, LJD;->c:LPE;

    invoke-virtual {p1, v0}, LbF;->a(LSE;)LbF;

    const/16 v0, 0x3e

    .line 4
    iget-object p1, p1, LbF;->a:Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 1
    :cond_0
    instance-of v0, p1, LJD;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_1
    check-cast p1, LJD;

    .line 3
    iget-object v0, p0, LJD;->c:LPE;

    iget-object p1, p1, LJD;->c:LPE;

    invoke-static {v0, p1}, LZE;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
