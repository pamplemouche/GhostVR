.class public LR61;
.super LH61;
.source "PG"


# instance fields
.field public final d:LI61;

.field public e:LH61;


# direct methods
.method public constructor <init>(LH61;)V
    .locals 2

    .line 1
    new-instance v0, LI61;

    invoke-direct {v0, p1}, LI61;-><init>(LH61;)V

    .line 2
    iget-object v1, p1, LH61;->a:Ljava/nio/ByteBuffer;

    .line 3
    iget-object p1, p1, LH61;->b:Ljava/util/List;

    .line 4
    invoke-direct {p0, v1, p1}, LH61;-><init>(Ljava/nio/ByteBuffer;Ljava/util/List;)V

    .line 5
    iput-object v0, p0, LR61;->d:LI61;

    return-void
.end method

.method public constructor <init>(LH61;LI61;)V
    .locals 1

    .line 6
    iget-object v0, p1, LH61;->a:Ljava/nio/ByteBuffer;

    .line 7
    iget-object p1, p1, LH61;->b:Ljava/util/List;

    .line 8
    invoke-direct {p0, v0, p1}, LH61;-><init>(Ljava/nio/ByteBuffer;Ljava/util/List;)V

    .line 9
    iput-object p2, p0, LR61;->d:LI61;

    return-void
.end method


# virtual methods
.method public a()LR61;
    .locals 0

    return-object p0
.end method

.method public b()LH61;
    .locals 3

    .line 1
    iget-object v0, p0, LR61;->e:LH61;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, LH61;->a:Ljava/nio/ByteBuffer;

    .line 3
    iget-object v1, p0, LR61;->d:LI61;

    .line 4
    iget-object v1, v1, LI61;->a:Lk61;

    iget v1, v1, Lk61;->a:I

    .line 5
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 6
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 7
    new-instance v1, LH61;

    .line 8
    iget-object v2, p0, LH61;->b:Ljava/util/List;

    .line 9
    invoke-direct {v1, v0, v2}, LH61;-><init>(Ljava/nio/ByteBuffer;Ljava/util/List;)V

    iput-object v1, p0, LR61;->e:LH61;

    .line 10
    :cond_0
    iget-object v0, p0, LR61;->e:LH61;

    return-object v0
.end method
