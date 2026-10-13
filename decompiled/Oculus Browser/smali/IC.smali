.class public LIC;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:LKC;

.field public final b:LCE;

.field public final c:LkE;

.field public final d:LuE;

.field public final e:LyE;

.field public final f:LiE;

.field public final g:LgE;


# direct methods
.method public constructor <init>(LAE;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-object v0, p1, LAE;->d:LzE;

    .line 3
    new-instance v1, LKC;

    .line 4
    iget-object v2, v0, LzE;->e:LPE;

    .line 5
    iget-object v0, v0, LzE;->f:LwE;

    .line 6
    invoke-direct {v1, v2, v0}, LKC;-><init>(LPE;LwE;)V

    iput-object v1, p0, LIC;->a:LKC;

    .line 7
    invoke-virtual {p1}, LAE;->e()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 8
    iget-object v0, p1, LAE;->e:LCE;

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 9
    :goto_0
    iput-object v0, p0, LIC;->b:LCE;

    .line 10
    iget-object v0, p1, LAE;->f:LkE;

    .line 11
    iput-object v0, p0, LIC;->c:LkE;

    .line 12
    iget-object v0, p1, LAE;->g:LuE;

    .line 13
    iput-object v0, p0, LIC;->d:LuE;

    .line 14
    invoke-virtual {p1}, LAE;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 15
    iget-object v1, p1, LAE;->h:LyE;

    .line 16
    :cond_1
    iput-object v1, p0, LIC;->e:LyE;

    .line 17
    invoke-virtual {p1}, LAE;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 18
    iget-object v0, p1, LAE;->i:LfE;

    .line 19
    :cond_2
    iget-object v0, p1, LAE;->j:LiE;

    .line 20
    iput-object v0, p0, LIC;->f:LiE;

    .line 21
    iget-object p1, p1, LAE;->k:LgE;

    .line 22
    iput-object p1, p0, LIC;->g:LgE;

    return-void
.end method
