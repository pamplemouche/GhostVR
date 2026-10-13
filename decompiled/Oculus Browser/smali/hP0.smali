.class public LhP0;
.super LzP0;
.source "PG"


# direct methods
.method public constructor <init>(LY10;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, LzP0;-><init>(LY10;)V

    return-void
.end method

.method public static a(LY10;)LhP0;
    .locals 1

    if-eqz p0, :cond_0

    .line 1
    new-instance v0, LhP0;

    invoke-direct {v0, p0}, LhP0;-><init>(LY10;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method


# virtual methods
.method public d()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final h()LdP0;
    .locals 1

    .line 1
    iget-object v0, p0, LzP0;->a:LY10;

    invoke-virtual {v0}, LY10;->a()LdP0;

    move-result-object v0

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, LhP0;->h()LdP0;

    move-result-object v0

    iget-object v0, v0, LdP0;->c:Ljava/lang/String;

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, LhP0;->h()LdP0;

    move-result-object v0

    iget-object v0, v0, LdP0;->a:Ljava/lang/String;

    return-object v0
.end method

.method public k()I
    .locals 1

    .line 1
    invoke-virtual {p0}, LhP0;->h()LdP0;

    move-result-object v0

    iget v0, v0, LdP0;->g:I

    return v0
.end method
