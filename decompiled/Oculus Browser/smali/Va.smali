.class public final LVa;
.super Landroid/os/Handler;
.source "PG"


# instance fields
.field public final synthetic a:LYa;


# direct methods
.method public constructor <init>(LYa;)V
    .locals 0

    .line 1
    iput-object p1, p0, LVa;->a:LYa;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 1
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, LVa;->a:LYa;

    .line 3
    iput-boolean v1, p1, LYa;->f:Z

    .line 4
    iget-object v0, p1, LYa;->e:LTa;

    invoke-virtual {p1, v0}, LYa;->a(LTa;)V

    goto :goto_0

    .line 5
    :cond_1
    iget-object p1, p0, LVa;->a:LYa;

    .line 6
    iput-boolean v1, p1, LYa;->h:Z

    .line 7
    iget-object v0, p1, LYa;->d:LUa;

    if-eqz v0, :cond_2

    .line 8
    iget-object v1, p1, LYa;->g:LZa;

    check-cast v0, Llb;

    .line 9
    iget-object v0, v0, Llb;->a:Lnb;

    .line 10
    invoke-virtual {v0, p1}, Lnb;->b(LYa;)I

    move-result p1

    if-ltz p1, :cond_2

    .line 11
    iget-object v2, v0, Lnb;->e:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lob;

    .line 12
    invoke-virtual {v0, p1, v1}, Lnb;->a(Lob;LZa;)V

    :cond_2
    :goto_0
    return-void
.end method
