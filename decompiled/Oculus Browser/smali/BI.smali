.class public final LBI;
.super LFF;
.source "PG"

# interfaces
.implements LEI;


# direct methods
.method public synthetic constructor <init>(LrI;)V
    .locals 0

    .line 1
    sget-object p1, LDI;->F:LDI;

    .line 2
    invoke-direct {p0, p1}, LFF;-><init>(LTF;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)LBI;
    .locals 2

    .line 1
    invoke-virtual {p0}, LFF;->g()V

    .line 2
    iget-object v0, p0, LFF;->x:LTF;

    check-cast v0, LDI;

    if-eqz p1, :cond_0

    .line 3
    iget v1, v0, LDI;->z:I

    or-int/lit8 v1, v1, 0x1

    iput v1, v0, LDI;->z:I

    .line 4
    iput-object p1, v0, LDI;->C:Ljava/lang/String;

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 5
    throw p1
.end method

.method public b(Ljava/lang/String;)LBI;
    .locals 2

    .line 1
    invoke-virtual {p0}, LFF;->g()V

    .line 2
    iget-object v0, p0, LFF;->x:LTF;

    check-cast v0, LDI;

    if-eqz p1, :cond_0

    .line 3
    iget v1, v0, LDI;->z:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, LDI;->z:I

    .line 4
    iput-object p1, v0, LDI;->D:Ljava/lang/String;

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 5
    throw p1
.end method
