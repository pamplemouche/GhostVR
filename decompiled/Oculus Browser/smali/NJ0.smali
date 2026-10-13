.class public LNJ0;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:LWT;

.field public b:LpI0;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, LWT;

    invoke-direct {v0}, LWT;-><init>()V

    iput-object v0, p0, LNJ0;->a:LWT;

    return-void
.end method


# virtual methods
.method public a(LMJ0;)V
    .locals 2

    .line 1
    iget-object v0, p0, LNJ0;->a:LWT;

    invoke-virtual {v0, p1}, LWT;->a(Ljava/lang/Object;)Z

    .line 2
    iget-object v0, p0, LNJ0;->b:LpI0;

    if-eqz v0, :cond_0

    .line 3
    check-cast v0, LrI0;

    .line 4
    iget-object v0, v0, LrI0;->b:LhI0;

    .line 5
    invoke-virtual {v0}, LhI0;->a()LgI0;

    move-result-object v0

    .line 6
    invoke-interface {v0}, LdI0;->getCount()I

    move-result v0

    iget-object v1, p0, LNJ0;->b:LpI0;

    .line 7
    check-cast v1, LrI0;

    invoke-virtual {v1}, LrI0;->f()Z

    move-result v1

    .line 8
    invoke-interface {p1, v0, v1}, LMJ0;->a(IZ)V

    :cond_0
    return-void
.end method
