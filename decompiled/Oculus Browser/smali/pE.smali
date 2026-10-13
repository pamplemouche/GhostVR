.class public final LpE;
.super LZE;
.source "PG"


# instance fields
.field public final c:LDE;


# direct methods
.method public constructor <init>(LDE;)V
    .locals 1

    .line 1
    invoke-direct {p0}, LZE;-><init>()V

    const-string v0, "version"

    .line 2
    invoke-static {v0, p1}, LZE;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3
    iput-object p1, p0, LpE;->c:LDE;

    return-void
.end method

.method public static a(LcI;)LpE;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2
    :cond_0
    new-instance v0, LpE;

    iget-object p0, p0, LcI;->c:LqI;

    invoke-static {p0}, LDE;->a(LqI;)LDE;

    move-result-object p0

    invoke-direct {v0, p0}, LpE;-><init>(LDE;)V

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    iget-object v0, p0, LpE;->c:LDE;

    invoke-virtual {v0}, LZE;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x1f

    return v0
.end method

.method public a(LbF;)V
    .locals 2

    .line 3
    iget-object v0, p1, LbF;->a:Ljava/lang/StringBuilder;

    const-string v1, "<ProtocolVersion:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    iget-object v0, p1, LbF;->a:Ljava/lang/StringBuilder;

    const-string v1, " version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    iget-object v0, p0, LpE;->c:LDE;

    invoke-virtual {p1, v0}, LbF;->a(LSE;)LbF;

    const/16 v0, 0x3e

    .line 6
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
    instance-of v0, p1, LpE;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_1
    check-cast p1, LpE;

    .line 3
    iget-object v0, p0, LpE;->c:LDE;

    iget-object p1, p1, LpE;->c:LDE;

    invoke-static {v0, p1}, LZE;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
