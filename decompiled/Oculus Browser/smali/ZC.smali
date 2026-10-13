.class public LZC;
.super LQE;
.source "PG"


# direct methods
.method public constructor <init>(Ljava/util/Random;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, LQE;-><init>(Ljava/util/Random;II)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Random;IILVD;)V
    .locals 1

    .line 2
    iget v0, p4, LVD;->d:I

    .line 3
    iget-boolean p4, p4, LVD;->e:Z

    .line 4
    invoke-direct {p0, p1, p2, p3}, LQE;-><init>(Ljava/util/Random;II)V

    .line 5
    iput v0, p0, LQE;->c:I

    .line 6
    iput-boolean p4, p0, LQE;->d:Z

    return-void
.end method
