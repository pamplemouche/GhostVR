.class public LK6;
.super LX6;
.source "PG"


# instance fields
.field public final synthetic d:LL6;


# direct methods
.method public constructor <init>(LL6;)V
    .locals 0

    .line 1
    iput-object p1, p0, LK6;->d:LL6;

    invoke-direct {p0}, LX6;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)I
    .locals 1

    .line 2
    iget-object v0, p0, LK6;->d:LL6;

    invoke-virtual {v0, p1}, LL6;->indexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public a(II)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p2, p0, LK6;->d:LL6;

    iget-object p2, p2, LL6;->x:[Ljava/lang/Object;

    aget-object p1, p2, p1

    return-object p1
.end method

.method public a(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 4
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "not a map"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a()V
    .locals 1

    .line 6
    iget-object v0, p0, LK6;->d:LL6;

    invoke-virtual {v0}, LL6;->clear()V

    return-void
.end method

.method public a(I)V
    .locals 1

    .line 5
    iget-object v0, p0, LK6;->d:LL6;

    invoke-virtual {v0, p1}, LL6;->c(I)Ljava/lang/Object;

    return-void
.end method

.method public a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 3
    iget-object p2, p0, LK6;->d:LL6;

    invoke-virtual {p2, p1}, LL6;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public b(Ljava/lang/Object;)I
    .locals 1

    .line 1
    iget-object v0, p0, LK6;->d:LL6;

    invoke-virtual {v0, p1}, LL6;->indexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public b()Ljava/util/Map;
    .locals 2

    .line 2
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "not a map"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public c()I
    .locals 1

    .line 1
    iget-object v0, p0, LK6;->d:LL6;

    iget v0, v0, LL6;->y:I

    return v0
.end method
