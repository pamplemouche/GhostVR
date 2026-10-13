.class public final Lkq0;
.super LFF;
.source "PG"

# interfaces
.implements Lnq0;


# direct methods
.method public synthetic constructor <init>(Laq0;)V
    .locals 0

    .line 1
    sget-object p1, Lmq0;->I:Lmq0;

    .line 2
    invoke-direct {p0, p1}, LFF;-><init>(LTF;)V

    return-void
.end method


# virtual methods
.method public a(Llq0;)Lkq0;
    .locals 2

    .line 1
    invoke-virtual {p0}, LFF;->g()V

    .line 2
    iget-object v0, p0, LFF;->x:LTF;

    check-cast v0, Lmq0;

    if-eqz p1, :cond_0

    .line 3
    iget v1, v0, Lmq0;->z:I

    or-int/lit8 v1, v1, 0x1

    iput v1, v0, Lmq0;->z:I

    .line 4
    iget p1, p1, Llq0;->w:I

    .line 5
    iput p1, v0, Lmq0;->A:I

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 6
    throw p1
.end method
