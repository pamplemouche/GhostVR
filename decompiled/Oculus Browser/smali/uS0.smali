.class public final LuS0;
.super LFF;
.source "PG"

# interfaces
.implements LFS0;


# direct methods
.method public synthetic constructor <init>(LtS0;)V
    .locals 0

    .line 1
    sget-object p1, LES0;->D:LES0;

    .line 2
    invoke-direct {p0, p1}, LFF;-><init>(LTF;)V

    return-void
.end method


# virtual methods
.method public a(LDS0;)LuS0;
    .locals 2

    .line 1
    invoke-virtual {p0}, LFF;->g()V

    .line 2
    iget-object v0, p0, LFF;->x:LTF;

    check-cast v0, LES0;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 3
    iget p1, p1, LDS0;->w:I

    .line 4
    iput p1, v0, LES0;->A:I

    return-object p0

    .line 5
    :cond_0
    throw v1

    .line 6
    :cond_1
    throw v1
.end method
