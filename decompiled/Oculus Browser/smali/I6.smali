.class public LI6;
.super LX6;
.source "PG"


# instance fields
.field public final synthetic d:LJ6;


# direct methods
.method public constructor <init>(LJ6;)V
    .locals 0

    .line 1
    iput-object p1, p0, LI6;->d:LJ6;

    invoke-direct {p0}, LX6;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)I
    .locals 1

    .line 2
    iget-object v0, p0, LI6;->d:LJ6;

    invoke-virtual {v0, p1}, Ld7;->a(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public a(II)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, LI6;->d:LJ6;

    iget-object v0, v0, Ld7;->x:[Ljava/lang/Object;

    shl-int/lit8 p1, p1, 0x1

    add-int/2addr p1, p2

    aget-object p1, v0, p1

    return-object p1
.end method

.method public a(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 4
    iget-object v0, p0, LI6;->d:LJ6;

    shl-int/lit8 p1, p1, 0x1

    add-int/lit8 p1, p1, 0x1

    .line 5
    iget-object v0, v0, Ld7;->x:[Ljava/lang/Object;

    aget-object v1, v0, p1

    .line 6
    aput-object p2, v0, p1

    return-object v1
.end method

.method public a()V
    .locals 1

    .line 8
    iget-object v0, p0, LI6;->d:LJ6;

    invoke-virtual {v0}, Ld7;->clear()V

    return-void
.end method

.method public a(I)V
    .locals 1

    .line 7
    iget-object v0, p0, LI6;->d:LJ6;

    invoke-virtual {v0, p1}, Ld7;->d(I)Ljava/lang/Object;

    return-void
.end method

.method public a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 3
    iget-object v0, p0, LI6;->d:LJ6;

    invoke-virtual {v0, p1, p2}, Ld7;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public b(Ljava/lang/Object;)I
    .locals 1

    .line 1
    iget-object v0, p0, LI6;->d:LJ6;

    invoke-virtual {v0, p1}, Ld7;->b(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public b()Ljava/util/Map;
    .locals 1

    .line 2
    iget-object v0, p0, LI6;->d:LJ6;

    return-object v0
.end method

.method public c()I
    .locals 1

    .line 1
    iget-object v0, p0, LI6;->d:LJ6;

    iget v0, v0, Ld7;->y:I

    return v0
.end method
