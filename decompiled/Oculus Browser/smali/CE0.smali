.class public LCE0;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:LH2;


# direct methods
.method public constructor <init>(LH2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, LCE0;->a:LH2;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 6
    iget-object v0, p0, LCE0;->a:LH2;

    const-string v1, "ConfirmSyncTimeoutDialog"

    invoke-virtual {v0, v1}, LH2;->a(Ljava/lang/String;)Lz2;

    move-result-object v0

    check-cast v0, Ls2;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {v0, v1}, Ls2;->g(Z)V

    .line 8
    :goto_0
    iget-object v0, p0, LCE0;->a:LH2;

    const-string v2, "ConfirmSyncProgressDialog"

    invoke-virtual {v0, v2}, LH2;->a(Ljava/lang/String;)Lz2;

    move-result-object v0

    check-cast v0, Ls2;

    if-nez v0, :cond_1

    goto :goto_1

    .line 9
    :cond_1
    invoke-virtual {v0, v1}, Ls2;->g(Z)V

    :goto_1
    return-void
.end method

.method public final a(Ls2;Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, LCE0;->a:LH2;

    check-cast v0, LY2;

    if-eqz v0, :cond_0

    .line 2
    new-instance v1, Lq2;

    invoke-direct {v1, v0}, Lq2;-><init>(LY2;)V

    const/4 v0, 0x0

    const/4 v2, 0x1

    .line 3
    invoke-virtual {v1, v0, p1, p2, v2}, Lq2;->a(ILz2;Ljava/lang/String;I)V

    .line 4
    invoke-virtual {v1}, Ld3;->b()I

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 5
    throw p1
.end method
