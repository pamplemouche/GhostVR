.class public final LLI;
.super LFF;
.source "PG"

# interfaces
.implements LOI;


# direct methods
.method public synthetic constructor <init>(LrI;)V
    .locals 0

    .line 1
    sget-object p1, LNI;->D:LNI;

    .line 2
    invoke-direct {p0, p1}, LFF;-><init>(LTF;)V

    return-void
.end method


# virtual methods
.method public a(LBI;)LLI;
    .locals 1

    .line 1
    invoke-virtual {p0}, LFF;->g()V

    .line 2
    iget-object v0, p0, LFF;->x:LTF;

    check-cast v0, LNI;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p1}, LFF;->e()LTF;

    move-result-object p1

    iput-object p1, v0, LNI;->B:Ljava/lang/Object;

    const/4 p1, 0x3

    .line 4
    iput p1, v0, LNI;->A:I

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 5
    throw p1
.end method
