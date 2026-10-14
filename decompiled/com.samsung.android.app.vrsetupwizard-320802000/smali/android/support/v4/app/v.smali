.class public abstract Landroid/support/v4/app/v;
.super Landroid/support/v4/app/t;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/support/v4/app/t;"
    }
.end annotation


# instance fields
.field private final a:Landroid/app/Activity;

.field final b:Landroid/content/Context;

.field final c:I

.field final d:Landroid/support/v4/app/z;

.field private final e:Landroid/os/Handler;

.field private f:Landroid/support/v4/k/w;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/k/w<",
            "Ljava/lang/String;",
            "Landroid/support/v4/app/bj;",
            ">;"
        }
    .end annotation
.end field

.field private g:Z

.field private h:Landroid/support/v4/app/bl;

.field private i:Z

.field private j:Z


# direct methods
.method constructor <init>(Landroid/app/Activity;Landroid/content/Context;Landroid/os/Handler;I)V
    .locals 1

    invoke-direct {p0}, Landroid/support/v4/app/t;-><init>()V

    new-instance v0, Landroid/support/v4/app/z;

    invoke-direct {v0}, Landroid/support/v4/app/z;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/v;->d:Landroid/support/v4/app/z;

    iput-object p1, p0, Landroid/support/v4/app/v;->a:Landroid/app/Activity;

    iput-object p2, p0, Landroid/support/v4/app/v;->b:Landroid/content/Context;

    iput-object p3, p0, Landroid/support/v4/app/v;->e:Landroid/os/Handler;

    iput p4, p0, Landroid/support/v4/app/v;->c:I

    return-void
.end method

.method constructor <init>(Landroid/support/v4/app/p;)V
    .locals 2

    iget-object v0, p1, Landroid/support/v4/app/p;->c:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-direct {p0, p1, p1, v0, v1}, Landroid/support/v4/app/v;-><init>(Landroid/app/Activity;Landroid/content/Context;Landroid/os/Handler;I)V

    return-void
.end method


# virtual methods
.method a(Ljava/lang/String;ZZ)Landroid/support/v4/app/bl;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/v;->f:Landroid/support/v4/k/w;

    if-nez v0, :cond_0

    new-instance v0, Landroid/support/v4/k/w;

    invoke-direct {v0}, Landroid/support/v4/k/w;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/v;->f:Landroid/support/v4/k/w;

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/v;->f:Landroid/support/v4/k/w;

    invoke-virtual {v0, p1}, Landroid/support/v4/k/w;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/bl;

    if-nez v0, :cond_1

    if-eqz p3, :cond_1

    new-instance v0, Landroid/support/v4/app/bl;

    invoke-direct {v0, p1, p0, p2}, Landroid/support/v4/app/bl;-><init>(Ljava/lang/String;Landroid/support/v4/app/v;Z)V

    iget-object p2, p0, Landroid/support/v4/app/v;->f:Landroid/support/v4/k/w;

    invoke-virtual {p2, p1, v0}, Landroid/support/v4/k/w;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    if-eqz v0, :cond_2

    iget-boolean p1, v0, Landroid/support/v4/app/bl;->e:Z

    if-nez p1, :cond_2

    invoke-virtual {v0}, Landroid/support/v4/app/bl;->b()V

    :cond_2
    :goto_0
    return-object v0
.end method

.method public a(I)Landroid/view/View;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public a(Landroid/support/v4/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 0

    const/4 p1, -0x1

    if-ne p3, p1, :cond_0

    iget-object p1, p0, Landroid/support/v4/app/v;->b:Landroid/content/Context;

    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Starting activity with a requestCode requires a FragmentActivity host"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method a(Landroid/support/v4/k/w;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/k/w<",
            "Ljava/lang/String;",
            "Landroid/support/v4/app/bj;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/support/v4/k/w;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_0

    invoke-virtual {p1, v0}, Landroid/support/v4/k/w;->c(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/app/bl;

    invoke-virtual {v2, p0}, Landroid/support/v4/app/bl;->a(Landroid/support/v4/app/v;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iput-object p1, p0, Landroid/support/v4/app/v;->f:Landroid/support/v4/k/w;

    return-void
.end method

.method a(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/app/v;->f:Landroid/support/v4/k/w;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/support/v4/k/w;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/bl;

    if-eqz v0, :cond_0

    iget-boolean v1, v0, Landroid/support/v4/app/bl;->f:Z

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/support/v4/app/bl;->h()V

    iget-object v0, p0, Landroid/support/v4/app/v;->f:Landroid/support/v4/k/w;

    invoke-virtual {v0, p1}, Landroid/support/v4/k/w;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method a(Z)V
    .locals 2

    iput-boolean p1, p0, Landroid/support/v4/app/v;->g:Z

    iget-object v0, p0, Landroid/support/v4/app/v;->h:Landroid/support/v4/app/bl;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v1, p0, Landroid/support/v4/app/v;->j:Z

    if-nez v1, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/support/v4/app/v;->j:Z

    if-eqz p1, :cond_2

    invoke-virtual {v0}, Landroid/support/v4/app/bl;->d()V

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Landroid/support/v4/app/bl;->c()V

    :goto_0
    return-void
.end method

.method public a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public a(Landroid/support/v4/app/Fragment;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public b()Landroid/view/LayoutInflater;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/v;->b:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    return-object v0
.end method

.method b(Landroid/support/v4/app/Fragment;)V
    .locals 0

    return-void
.end method

.method b(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mLoadersStarted="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/v;->j:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    iget-object v0, p0, Landroid/support/v4/app/v;->h:Landroid/support/v4/app/bl;

    if-eqz v0, :cond_0

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Loader Manager "

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/v;->h:Landroid/support/v4/app/bl;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, ":"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/v;->h:Landroid/support/v4/app/bl;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "  "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/support/v4/app/bl;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 0

    return-void
.end method

.method public d()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public e()I
    .locals 1

    iget v0, p0, Landroid/support/v4/app/v;->c:I

    return v0
.end method

.method f()Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/v;->a:Landroid/app/Activity;

    return-object v0
.end method

.method g()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/v;->b:Landroid/content/Context;

    return-object v0
.end method

.method h()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/v;->e:Landroid/os/Handler;

    return-object v0
.end method

.method i()Landroid/support/v4/app/z;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/v;->d:Landroid/support/v4/app/z;

    return-object v0
.end method

.method j()Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/v4/app/v;->g:Z

    return v0
.end method

.method k()V
    .locals 4

    iget-boolean v0, p0, Landroid/support/v4/app/v;->j:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/v;->j:Z

    iget-object v1, p0, Landroid/support/v4/app/v;->h:Landroid/support/v4/app/bl;

    if-eqz v1, :cond_1

    :goto_0
    invoke-virtual {v1}, Landroid/support/v4/app/bl;->b()V

    goto :goto_1

    :cond_1
    iget-boolean v1, p0, Landroid/support/v4/app/v;->i:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Landroid/support/v4/app/v;->j:Z

    const/4 v2, 0x0

    const-string v3, "(root)"

    invoke-virtual {p0, v3, v1, v2}, Landroid/support/v4/app/v;->a(Ljava/lang/String;ZZ)Landroid/support/v4/app/bl;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v4/app/v;->h:Landroid/support/v4/app/bl;

    iget-object v1, p0, Landroid/support/v4/app/v;->h:Landroid/support/v4/app/bl;

    if-eqz v1, :cond_2

    iget-boolean v1, v1, Landroid/support/v4/app/bl;->e:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Landroid/support/v4/app/v;->h:Landroid/support/v4/app/bl;

    goto :goto_0

    :cond_2
    :goto_1
    iput-boolean v0, p0, Landroid/support/v4/app/v;->i:Z

    return-void
.end method

.method l()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/v;->h:Landroid/support/v4/app/bl;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/support/v4/app/bl;->h()V

    return-void
.end method

.method m()V
    .locals 4

    iget-object v0, p0, Landroid/support/v4/app/v;->f:Landroid/support/v4/k/w;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/support/v4/k/w;->size()I

    move-result v0

    new-array v1, v0, [Landroid/support/v4/app/bl;

    add-int/lit8 v2, v0, -0x1

    :goto_0
    if-ltz v2, :cond_0

    iget-object v3, p0, Landroid/support/v4/app/v;->f:Landroid/support/v4/k/w;

    invoke-virtual {v3, v2}, Landroid/support/v4/k/w;->c(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v4/app/bl;

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_1

    aget-object v3, v1, v2

    invoke-virtual {v3}, Landroid/support/v4/app/bl;->e()V

    invoke-virtual {v3}, Landroid/support/v4/app/bl;->g()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method n()Landroid/support/v4/k/w;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/support/v4/k/w<",
            "Ljava/lang/String;",
            "Landroid/support/v4/app/bj;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/support/v4/app/v;->f:Landroid/support/v4/k/w;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/support/v4/k/w;->size()I

    move-result v0

    new-array v2, v0, [Landroid/support/v4/app/bl;

    add-int/lit8 v3, v0, -0x1

    :goto_0
    if-ltz v3, :cond_0

    iget-object v4, p0, Landroid/support/v4/app/v;->f:Landroid/support/v4/k/w;

    invoke-virtual {v4, v3}, Landroid/support/v4/k/w;->c(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v4/app/bl;

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/app/v;->j()Z

    move-result v3

    const/4 v4, 0x0

    :goto_1
    if-ge v1, v0, :cond_4

    aget-object v5, v2, v1

    iget-boolean v6, v5, Landroid/support/v4/app/bl;->f:Z

    if-nez v6, :cond_2

    if-eqz v3, :cond_2

    iget-boolean v6, v5, Landroid/support/v4/app/bl;->e:Z

    if-nez v6, :cond_1

    invoke-virtual {v5}, Landroid/support/v4/app/bl;->b()V

    :cond_1
    invoke-virtual {v5}, Landroid/support/v4/app/bl;->d()V

    :cond_2
    iget-boolean v6, v5, Landroid/support/v4/app/bl;->f:Z

    if-eqz v6, :cond_3

    const/4 v4, 0x1

    goto :goto_2

    :cond_3
    invoke-virtual {v5}, Landroid/support/v4/app/bl;->h()V

    iget-object v6, p0, Landroid/support/v4/app/v;->f:Landroid/support/v4/k/w;

    iget-object v5, v5, Landroid/support/v4/app/bl;->d:Ljava/lang/String;

    invoke-virtual {v6, v5}, Landroid/support/v4/k/w;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    move v1, v4

    :cond_5
    if-eqz v1, :cond_6

    iget-object v0, p0, Landroid/support/v4/app/v;->f:Landroid/support/v4/k/w;

    return-object v0

    :cond_6
    const/4 v0, 0x0

    return-object v0
.end method
