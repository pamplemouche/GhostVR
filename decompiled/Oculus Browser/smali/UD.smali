.class public final LUD;
.super LZE;
.source "PG"


# instance fields
.field public final c:LlE;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, LUD;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LUD;-><init>(LlE;)V

    return-void
.end method

.method public constructor <init>(LlE;)V
    .locals 0

    .line 1
    invoke-direct {p0}, LZE;-><init>()V

    .line 2
    iput-object p1, p0, LUD;->c:LlE;

    return-void
.end method

.method public static a([B)LUD;
    .locals 1

    .line 3
    :try_start_0
    new-instance v0, LIH;

    invoke-direct {v0}, LIH;-><init>()V

    invoke-static {v0, p0}, LZG;->a(LZG;[B)LZG;

    .line 4
    new-instance p0, LUD;

    iget-object v0, v0, LIH;->c:LYH;

    invoke-static {v0}, LlE;->a(LYH;)LlE;

    move-result-object v0

    invoke-direct {p0, v0}, LUD;-><init>(LlE;)V
    :try_end_0
    .catch LYG; {:try_start_0 .. :try_end_0} :catch_1
    .catch LXE; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 5
    new-instance v0, LYE;

    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, LYE;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_1
    move-exception p0

    .line 6
    new-instance v0, LYE;

    invoke-direct {v0, p0}, LYE;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    iget-object v0, p0, LUD;->c:LlE;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, LZE;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x1f

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public a(LbF;)V
    .locals 2

    .line 7
    iget-object v0, p1, LbF;->a:Ljava/lang/StringBuilder;

    const-string v1, "<AckHandleP:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    iget-object v0, p0, LUD;->c:LlE;

    if-eqz v0, :cond_0

    .line 9
    iget-object v0, p1, LbF;->a:Ljava/lang/StringBuilder;

    const-string v1, " invalidation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    iget-object v0, p0, LUD;->c:LlE;

    invoke-virtual {p1, v0}, LbF;->a(LSE;)LbF;

    :cond_0
    const/16 v0, 0x3e

    .line 11
    iget-object p1, p1, LbF;->a:Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void
.end method

.method public c()[B
    .locals 2

    .line 1
    new-instance v0, LIH;

    invoke-direct {v0}, LIH;-><init>()V

    .line 2
    iget-object v1, p0, LUD;->c:LlE;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, LlE;->e()LYH;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-object v1, v0, LIH;->c:LYH;

    .line 3
    invoke-static {v0}, LZG;->a(LZG;)[B

    move-result-object v0

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 1
    :cond_0
    instance-of v0, p1, LUD;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_1
    check-cast p1, LUD;

    .line 3
    iget-object v0, p0, LUD;->c:LlE;

    iget-object p1, p1, LUD;->c:LlE;

    invoke-static {v0, p1}, LZE;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
