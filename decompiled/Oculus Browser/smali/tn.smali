.class public final Ltn;
.super LNn;
.source "PG"


# instance fields
.field public final synthetic b:Lrn;


# direct methods
.method public constructor <init>(Lrn;LLn;)V
    .locals 0

    iput-object p1, p0, Ltn;->b:Lrn;

    invoke-direct {p0, p2}, LNn;-><init>(LLn;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Ltn;->b:Lrn;

    .line 1
    iget-object v0, v0, Lrn;->a:LMn;

    .line 2
    iget-object v0, v0, LMn;->n:LZn;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, LZn;->a(Landroid/os/Bundle;)V

    return-void
.end method
