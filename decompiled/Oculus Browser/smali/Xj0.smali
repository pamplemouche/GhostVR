.class public LXj0;
.super LIj0;
.source "PG"


# instance fields
.field public final h:Lhk0;


# direct methods
.method public constructor <init>(Lrb;Lrj0;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, LIj0;-><init>(Lrb;Lrj0;)V

    .line 2
    new-instance p1, Lhk0;

    invoke-direct {p1, p0}, Lhk0;-><init>(LIj0;)V

    iput-object p1, p0, LXj0;->h:Lhk0;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lej0;
    .locals 2

    .line 1
    iget-object v0, p0, LXj0;->h:Lhk0;

    .line 2
    invoke-virtual {v0}, LGj0;->g()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 3
    :cond_0
    iget-object v0, p0, LIj0;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    return-object v1

    .line 4
    :cond_1
    iget-object p1, p0, LXj0;->h:Lhk0;

    .line 5
    iget-object p1, p1, Lhk0;->h:Ldk0;

    return-object p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "RmtMRP"

    const-string v0, "Remote playback does not support sending messages"

    .line 7
    invoke-static {p2, v0, p1}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0

    .line 6
    iget-object p1, p0, LIj0;->b:Lrj0;

    const-string p2, "Remote playback doesn\'t support joining routes"

    invoke-interface {p1, p2, p5}, Lrj0;->a(Ljava/lang/String;I)V

    return-void
.end method

.method public b()LGj0;
    .locals 1

    .line 1
    iget-object v0, p0, LXj0;->h:Lhk0;

    return-object v0
.end method

.method public c(Ljava/lang/String;)Lvj0;
    .locals 0

    .line 1
    invoke-static {p1}, Lek0;->a(Ljava/lang/String;)Lek0;

    move-result-object p1

    return-object p1
.end method
