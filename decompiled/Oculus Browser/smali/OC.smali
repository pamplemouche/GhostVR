.class public LOC;
.super LSE;
.source "PG"


# static fields
.field public static final f:[B


# instance fields
.field public a:LtC;

.field public final b:LWC;

.field public c:LwE;

.field public final d:Ljava/util/Map;

.field public final e:LZB;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    .line 1
    sput-object v0, LOC;->f:[B

    return-void
.end method

.method public constructor <init>(LZB;LWC;LTB;LJE;)V
    .locals 1

    .line 1
    invoke-direct {p0}, LSE;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, LOC;->d:Ljava/util/Map;

    .line 3
    iput-object p1, p0, LOC;->e:LZB;

    .line 4
    iput-object p2, p0, LOC;->b:LWC;

    .line 5
    new-instance p1, LQC;

    invoke-direct {p1, p3}, LQC;-><init>(LTB;)V

    iput-object p1, p0, LOC;->a:LtC;

    if-nez p4, :cond_0

    .line 6
    invoke-virtual {p0}, LOC;->a()LwE;

    move-result-object p1

    iput-object p1, p0, LOC;->c:LwE;

    goto :goto_1

    .line 7
    :cond_0
    iget-object p1, p4, LJE;->d:LwE;

    .line 8
    iput-object p1, p0, LOC;->c:LwE;

    if-nez p1, :cond_1

    .line 9
    invoke-virtual {p0}, LOC;->a()LwE;

    move-result-object p1

    iput-object p1, p0, LOC;->c:LwE;

    .line 10
    :cond_1
    iget-object p1, p0, LOC;->a:LtC;

    .line 11
    iget-object p2, p4, LJE;->c:Ljava/util/List;

    .line 12
    check-cast p1, LQC;

    invoke-virtual {p1, p2}, LQC;->a(Ljava/util/Collection;)Ljava/util/Collection;

    .line 13
    iget-object p1, p4, LJE;->e:Ljava/util/List;

    .line 14
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, LsE;

    .line 15
    iget-object p3, p0, LOC;->d:Ljava/util/Map;

    .line 16
    iget-object p4, p2, LsE;->c:LmE;

    .line 17
    iget p2, p2, LsE;->d:I

    .line 18
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p3, p4, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public a()LwE;
    .locals 3

    .line 1
    iget-object v0, p0, LOC;->a:LtC;

    check-cast v0, LQC;

    .line 2
    iget-object v0, v0, LQC;->w:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->size()I

    move-result v0

    .line 3
    new-instance v1, LPE;

    iget-object v2, p0, LOC;->a:LtC;

    .line 4
    check-cast v2, LQC;

    .line 5
    iget-object v2, v2, LQC;->y:LPE;

    .line 6
    iget-object v2, v2, LPE;->w:[B

    .line 7
    invoke-direct {v1, v2}, LPE;-><init>([B)V

    .line 8
    new-instance v2, LwE;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {v2, v0, v1}, LwE;-><init>(Ljava/lang/Integer;LPE;)V

    return-object v2
.end method

.method public a(LbF;)V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 9
    iget-object v1, p0, LOC;->c:LwE;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, LOC;->a:LtC;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 10
    iget-object p1, p1, LbF;->b:LdF;

    .line 11
    iget-object p1, p1, LdF;->a:Ljava/util/Formatter;

    const-string v1, "Last known digest: %s, Requested regs: %s"

    invoke-virtual {p1, v1, v0}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    return-void
.end method

.method public b()Z
    .locals 2

    .line 1
    iget-object v0, p0, LOC;->c:LwE;

    invoke-virtual {p0}, LOC;->a()LwE;

    move-result-object v1

    invoke-static {v0, v1}, LcF;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
