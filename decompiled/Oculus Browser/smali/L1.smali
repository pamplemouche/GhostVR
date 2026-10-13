.class public LL1;
.super LF1;
.source "PG"


# instance fields
.field public w:LM1;


# direct methods
.method public constructor <init>(LM1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, LF1;-><init>()V

    .line 2
    iput-object p1, p0, LL1;->w:LM1;

    return-void
.end method


# virtual methods
.method public b(LE1;)V
    .locals 2

    .line 1
    iget-object v0, p0, LL1;->w:LM1;

    iget v1, v0, LM1;->g0:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, LM1;->g0:I

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-boolean v1, v0, LM1;->h0:Z

    .line 3
    invoke-virtual {v0}, LE1;->a()V

    .line 4
    :cond_0
    invoke-virtual {p1, p0}, LE1;->b(LD1;)LE1;

    return-void
.end method

.method public c(LE1;)V
    .locals 1

    .line 1
    iget-object p1, p0, LL1;->w:LM1;

    iget-boolean v0, p1, LM1;->h0:Z

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, LE1;->d()V

    .line 3
    iget-object p1, p0, LL1;->w:LM1;

    const/4 v0, 0x1

    iput-boolean v0, p1, LM1;->h0:Z

    :cond_0
    return-void
.end method
