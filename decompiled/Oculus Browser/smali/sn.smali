.class public final Lsn;
.super LNn;
.source "PG"


# instance fields
.field public final synthetic b:Lrn;


# direct methods
.method public constructor <init>(Lrn;LLn;)V
    .locals 0

    iput-object p1, p0, Lsn;->b:Lrn;

    invoke-direct {p0, p2}, LNn;-><init>(LLn;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, Lsn;->b:Lrn;

    .line 1
    iget-object v1, v0, Lrn;->a:LMn;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, LMn;->a(Lcom/google/android/gms/common/ConnectionResult;)V

    iget-object v1, v0, Lrn;->a:LMn;

    iget-object v1, v1, LMn;->n:LZn;

    iget-boolean v0, v0, Lrn;->b:Z

    const/4 v2, 0x1

    invoke-interface {v1, v2, v0}, LZn;->a(IZ)V

    return-void
.end method
