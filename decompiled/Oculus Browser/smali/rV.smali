.class public LrV;
.super LsV;
.source "PG"


# instance fields
.field public final h:LL6;

.field public i:I


# direct methods
.method public synthetic constructor <init>(Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;ZZZLnV;)V
    .locals 8

    const-string p7, "0"

    .line 1
    invoke-static {p3, p7}, LZi;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v7}, LsV;-><init>(Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;ZZZLnV;)V

    .line 2
    new-instance p1, LL6;

    invoke-direct {p1}, LL6;-><init>()V

    iput-object p1, p0, LrV;->h:LL6;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public a(Landroid/content/Context;Landroid/os/Bundle;)LLV;
    .locals 8

    .line 1
    new-instance v2, Landroid/content/ComponentName;

    iget-object v0, p0, LsV;->b:Ljava/lang/String;

    iget-object v1, p0, LsV;->c:Ljava/lang/String;

    invoke-direct {v2, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget v0, p0, LrV;->i:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    .line 3
    iget v0, p0, LrV;->i:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, LrV;->i:I

    .line 4
    iget-object v0, p0, LsV;->g:LoV;

    iget-boolean v3, p0, LsV;->d:Z

    iget-boolean v4, p0, LsV;->e:Z

    .line 5
    check-cast v0, LpV;

    if-eqz v0, :cond_0

    .line 6
    new-instance v7, LLV;

    move-object v0, v7

    move-object v1, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v6}, LLV;-><init>(Landroid/content/Context;Landroid/content/ComponentName;ZZLandroid/os/Bundle;Ljava/lang/String;)V

    .line 7
    iget-object p1, p0, LrV;->h:LL6;

    invoke-virtual {p1, v7}, LL6;->add(Ljava/lang/Object;)Z

    return-object v7

    :cond_0
    const/4 p1, 0x0

    .line 8
    throw p1
.end method

.method public a(LLV;)V
    .locals 1

    .line 9
    iget-object v0, p0, LrV;->h:LL6;

    invoke-virtual {v0, p1}, LL6;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Ljava/lang/Runnable;)V
    .locals 0

    return-void
.end method
