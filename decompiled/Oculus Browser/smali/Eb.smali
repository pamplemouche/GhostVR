.class public final LEb;
.super Landroid/os/Handler;
.source "PG"


# instance fields
.field public final a:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(LBb;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, LEb;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9

    .line 1
    iget-object v0, p0, LEb;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LBb;

    if-eqz v0, :cond_13

    .line 2
    iget v1, p1, Landroid/os/Message;->what:I

    .line 3
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 4
    iget v3, p1, Landroid/os/Message;->arg2:I

    .line 5
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 6
    invoke-virtual {p1}, Landroid/os/Message;->peekData()Landroid/os/Bundle;

    move-result-object p1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v1, :cond_10

    if-eq v1, v7, :cond_3

    const/4 v8, 0x2

    if-eq v1, v8, :cond_b

    const/4 v3, 0x3

    if-eq v1, v3, :cond_8

    const/4 v3, 0x4

    if-eq v1, v3, :cond_4

    const/4 p1, 0x5

    if-eq v1, p1, :cond_0

    goto/16 :goto_5

    :cond_0
    if-eqz v4, :cond_1

    .line 7
    instance-of p1, v4, Landroid/os/Bundle;

    if-eqz p1, :cond_13

    .line 8
    :cond_1
    check-cast v4, Landroid/os/Bundle;

    .line 9
    iget p1, v0, LBb;->B:I

    if-eqz p1, :cond_13

    .line 10
    iget-object p1, v0, LBb;->E:LFb;

    if-eqz v4, :cond_2

    .line 11
    new-instance v1, LZa;

    invoke-direct {v1, v4, v5}, LZa;-><init>(Landroid/os/Bundle;Ljava/util/List;)V

    goto :goto_0

    :cond_2
    move-object v1, v5

    .line 12
    :goto_0
    iget-object v2, p1, LFb;->n:LBb;

    if-ne v2, v0, :cond_3

    .line 13
    invoke-virtual {p1, v1}, LYa;->a(LZa;)V

    :cond_3
    :goto_1
    const/4 v6, 0x1

    goto/16 :goto_5

    :cond_4
    if-eqz v4, :cond_5

    .line 14
    instance-of v1, v4, Landroid/os/Bundle;

    if-eqz v1, :cond_13

    :cond_5
    if-nez p1, :cond_6

    goto :goto_2

    :cond_6
    const-string v1, "error"

    .line 15
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 16
    :goto_2
    check-cast v4, Landroid/os/Bundle;

    .line 17
    iget-object p1, v0, LBb;->D:Landroid/util/SparseArray;

    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Leb;

    if-nez p1, :cond_7

    goto/16 :goto_5

    .line 18
    :cond_7
    iget-object p1, v0, LBb;->D:Landroid/util/SparseArray;

    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 19
    throw v5

    :cond_8
    if-eqz v4, :cond_9

    .line 20
    instance-of p1, v4, Landroid/os/Bundle;

    if-eqz p1, :cond_13

    .line 21
    :cond_9
    check-cast v4, Landroid/os/Bundle;

    .line 22
    iget-object p1, v0, LBb;->D:Landroid/util/SparseArray;

    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Leb;

    if-nez p1, :cond_a

    goto/16 :goto_5

    .line 23
    :cond_a
    iget-object p1, v0, LBb;->D:Landroid/util/SparseArray;

    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 24
    throw v5

    :cond_b
    if-eqz v4, :cond_c

    .line 25
    instance-of p1, v4, Landroid/os/Bundle;

    if-eqz p1, :cond_13

    .line 26
    :cond_c
    check-cast v4, Landroid/os/Bundle;

    .line 27
    iget p1, v0, LBb;->B:I

    if-nez p1, :cond_13

    iget p1, v0, LBb;->C:I

    if-ne v2, p1, :cond_13

    if-lt v3, v7, :cond_13

    .line 28
    iput v6, v0, LBb;->C:I

    .line 29
    iput v3, v0, LBb;->B:I

    .line 30
    iget-object p1, v0, LBb;->E:LFb;

    if-eqz v4, :cond_d

    .line 31
    new-instance v1, LZa;

    invoke-direct {v1, v4, v5}, LZa;-><init>(Landroid/os/Bundle;Ljava/util/List;)V

    goto :goto_3

    :cond_d
    move-object v1, v5

    .line 32
    :goto_3
    iget-object v2, p1, LFb;->n:LBb;

    if-ne v2, v0, :cond_e

    .line 33
    invoke-virtual {p1, v1}, LYa;->a(LZa;)V

    .line 34
    :cond_e
    iget-object p1, v0, LBb;->E:LFb;

    .line 35
    iget-object v1, p1, LFb;->n:LBb;

    if-ne v1, v0, :cond_3

    .line 36
    iput-boolean v7, p1, LFb;->o:Z

    .line 37
    iget-object v0, p1, LFb;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_4
    if-ge v6, v0, :cond_f

    .line 38
    iget-object v1, p1, LFb;->k:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LCb;

    iget-object v2, p1, LFb;->n:LBb;

    invoke-virtual {v1, v2}, LCb;->a(LBb;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 39
    :cond_f
    iget-object v0, p1, LYa;->e:LTa;

    if-eqz v0, :cond_3

    .line 40
    iget-object p1, p1, LFb;->n:LBb;

    invoke-virtual {p1, v0}, LBb;->a(LTa;)V

    goto/16 :goto_1

    .line 41
    :cond_10
    iget p1, v0, LBb;->C:I

    if-ne v2, p1, :cond_11

    .line 42
    iput v6, v0, LBb;->C:I

    .line 43
    iget-object p1, v0, LBb;->E:LFb;

    .line 44
    iget-object v1, p1, LFb;->n:LBb;

    if-ne v1, v0, :cond_11

    .line 45
    invoke-virtual {p1}, LFb;->d()V

    .line 46
    :cond_11
    iget-object p1, v0, LBb;->D:Landroid/util/SparseArray;

    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Leb;

    if-nez p1, :cond_12

    goto/16 :goto_1

    .line 47
    :cond_12
    iget-object p1, v0, LBb;->D:Landroid/util/SparseArray;

    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 48
    throw v5

    :cond_13
    :goto_5
    return-void
.end method
