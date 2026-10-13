.class public final LUR;
.super LFF;
.source "PG"

# interfaces
.implements LWR;


# direct methods
.method public synthetic constructor <init>(LRR;)V
    .locals 0

    .line 1
    sget-object p1, LVR;->H:LVR;

    .line 2
    invoke-direct {p0, p1}, LFF;-><init>(LTF;)V

    return-void
.end method


# virtual methods
.method public a(LSR;)LUR;
    .locals 2

    .line 1
    invoke-virtual {p0}, LFF;->g()V

    .line 2
    iget-object v0, p0, LFF;->x:LTF;

    check-cast v0, LVR;

    if-eqz p1, :cond_0

    .line 3
    iget v1, v0, LVR;->z:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v0, LVR;->z:I

    .line 4
    iget p1, p1, LSR;->w:I

    .line 5
    iput p1, v0, LVR;->E:I

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 6
    throw p1
.end method

.method public a(LTR;)LUR;
    .locals 2

    .line 7
    invoke-virtual {p0}, LFF;->g()V

    .line 8
    iget-object v0, p0, LFF;->x:LTF;

    check-cast v0, LVR;

    if-eqz p1, :cond_0

    .line 9
    iget v1, v0, LVR;->z:I

    or-int/lit8 v1, v1, 0x20

    iput v1, v0, LVR;->z:I

    .line 10
    iget p1, p1, LTR;->w:I

    .line 11
    iput p1, v0, LVR;->F:I

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 12
    throw p1
.end method
