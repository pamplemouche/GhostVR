.class public final LCE;
.super LZE;
.source "PG"


# static fields
.field public static final e:LCE;


# instance fields
.field public final c:J

.field public final d:LPE;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, LCE;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LCE;-><init>(LPE;)V

    sput-object v0, LCE;->e:LCE;

    return-void
.end method

.method public constructor <init>(LPE;)V
    .locals 2

    .line 1
    invoke-direct {p0}, LZE;-><init>()V

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-object p1, p0, LCE;->d:LPE;

    goto :goto_0

    .line 3
    :cond_0
    sget-object p1, LPE;->y:LPE;

    iput-object p1, p0, LCE;->d:LPE;

    const/4 v0, 0x0

    :goto_0
    int-to-long v0, v0

    .line 4
    iput-wide v0, p0, LCE;->c:J

    return-void
.end method

.method public static a(LpI;)LCE;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 9
    :cond_0
    new-instance v0, LCE;

    iget-object p0, p0, LpI;->c:[B

    invoke-static {p0}, LPE;->a([B)LPE;

    move-result-object p0

    invoke-direct {v0, p0}, LCE;-><init>(LPE;)V

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 2

    .line 6
    iget-wide v0, p0, LCE;->c:J

    invoke-static {v0, v1}, LZE;->a(J)I

    move-result v0

    .line 7
    invoke-virtual {p0}, LCE;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    mul-int/lit8 v0, v0, 0x1f

    .line 8
    iget-object v1, p0, LCE;->d:LPE;

    invoke-virtual {v1}, LPE;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    return v0
.end method

.method public a(LbF;)V
    .locals 2

    .line 1
    iget-object v0, p1, LbF;->a:Ljava/lang/StringBuilder;

    const-string v1, "<TokenControlMessage:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    invoke-virtual {p0}, LCE;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p1, LbF;->a:Ljava/lang/StringBuilder;

    const-string v1, " new_token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    iget-object v0, p0, LCE;->d:LPE;

    invoke-virtual {p1, v0}, LbF;->a(LSE;)LbF;

    :cond_0
    const/16 v0, 0x3e

    .line 5
    iget-object p1, p1, LbF;->a:Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void
.end method

.method public c()Z
    .locals 5

    .line 1
    iget-wide v0, p0, LCE;->c:J

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
    instance-of v1, p1, LCE;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    check-cast p1, LCE;

    .line 3
    iget-wide v3, p0, LCE;->c:J

    iget-wide v5, p1, LCE;->c:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    .line 4
    invoke-virtual {p0}, LCE;->c()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, LCE;->d:LPE;

    iget-object p1, p1, LCE;->d:LPE;

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
