.class public final LZI;
.super LJF;
.source "PG"

# interfaces
.implements LcJ;


# direct methods
.method public synthetic constructor <init>(LrI;)V
    .locals 0

    .line 1
    sget-object p1, LbJ;->F:LbJ;

    .line 2
    invoke-direct {p0, p1}, LJF;-><init>(LLF;)V

    return-void
.end method


# virtual methods
.method public a(LaJ;)LZI;
    .locals 2

    .line 1
    invoke-virtual {p0}, LJF;->g()V

    .line 2
    iget-object v0, p0, LFF;->x:LTF;

    check-cast v0, LbJ;

    if-eqz p1, :cond_0

    .line 3
    iget v1, v0, LbJ;->A:I

    or-int/lit8 v1, v1, 0x1

    iput v1, v0, LbJ;->A:I

    .line 4
    iget p1, p1, LaJ;->w:I

    .line 5
    iput p1, v0, LbJ;->B:I

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 6
    throw p1
.end method

.method public a(Ljava/lang/String;)LZI;
    .locals 2

    .line 7
    invoke-virtual {p0}, LJF;->g()V

    .line 8
    iget-object v0, p0, LFF;->x:LTF;

    check-cast v0, LbJ;

    if-eqz p1, :cond_0

    .line 9
    iget v1, v0, LbJ;->A:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, LbJ;->A:I

    .line 10
    iput-object p1, v0, LbJ;->C:Ljava/lang/String;

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 11
    throw p1
.end method

.method public b(Ljava/lang/String;)LZI;
    .locals 2

    .line 1
    invoke-virtual {p0}, LJF;->g()V

    .line 2
    iget-object v0, p0, LFF;->x:LTF;

    check-cast v0, LbJ;

    if-eqz p1, :cond_0

    .line 3
    iget v1, v0, LbJ;->A:I

    or-int/lit8 v1, v1, 0x4

    iput v1, v0, LbJ;->A:I

    .line 4
    iput-object p1, v0, LbJ;->D:Ljava/lang/String;

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 5
    throw p1
.end method
