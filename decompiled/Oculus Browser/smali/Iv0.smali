.class public LIv0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic w:LMv0;

.field public final synthetic x:Lju0;


# direct methods
.method public constructor <init>(LNv0;LMv0;Lju0;)V
    .locals 0

    .line 1
    iput-object p2, p0, LIv0;->w:LMv0;

    iput-object p3, p0, LIv0;->x:Lju0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, LIv0;->w:LMv0;

    iget-object v1, p0, LIv0;->x:Lju0;

    check-cast v0, Lyv0;

    .line 2
    iget-object v2, v0, Lyv0;->M:Lc91;

    if-nez v2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v1}, Lju0;->k()V

    .line 4
    iget-object v2, v0, Lyv0;->J:LBu0;

    invoke-virtual {v2, v1}, LBu0;->a(Lju0;)V

    .line 5
    iget-object v2, v0, Lyv0;->h0:LZw0;

    if-eqz v2, :cond_1

    .line 6
    invoke-virtual {v2, v1}, LZw0;->b(LCQ0;)V

    .line 7
    iget-object v2, v0, Lyv0;->o0:LXw0;

    const/4 v3, 0x1

    iget-object v4, v0, Lyv0;->h0:LZw0;

    invoke-virtual {v2, v3, v4}, LXw0;->a(ILZw0;)V

    .line 8
    :cond_1
    iget-object v2, v0, Lyv0;->i0:Ltw0;

    if-eqz v2, :cond_2

    .line 9
    invoke-virtual {v2, v1}, Ltw0;->a(Lju0;)V

    .line 10
    iget-object v1, v0, Lyv0;->o0:LXw0;

    const/4 v2, 0x3

    iget-object v0, v0, Lyv0;->i0:Ltw0;

    invoke-virtual {v1, v2, v0}, LXw0;->a(ILZw0;)V

    :cond_2
    :goto_0
    return-void
.end method
