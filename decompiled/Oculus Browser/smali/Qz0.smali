.class public LQz0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LuM0;


# instance fields
.field public final synthetic w:LHz0;

.field public final synthetic x:I

.field public final synthetic y:LRz0;


# direct methods
.method public constructor <init>(LRz0;LHz0;I)V
    .locals 0

    .line 1
    iput-object p1, p0, LQz0;->y:LRz0;

    iput-object p2, p0, LQz0;->w:LHz0;

    iput p3, p0, LQz0;->x:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(LvM0;)V
    .locals 5

    .line 1
    iget v0, p1, LvM0;->b:I

    const/4 v1, 0x1

    const v2, 0x7f130393

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-ne v0, v2, :cond_3

    .line 2
    iget p1, p1, LvM0;->c:I

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 3
    :goto_0
    invoke-static {}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->b()Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;

    move-result-object p1

    iget-object v0, p0, LQz0;->w:LHz0;

    .line 4
    iget-object v0, v0, LHz0;->a:Ljava/lang/String;

    xor-int/lit8 v2, v1, 0x1

    if-eqz p1, :cond_2

    .line 5
    invoke-static {p1, v0, v2}, LJ/N;->MT$d45ls(Ljava/lang/Object;Ljava/lang/String;Z)V

    if-eqz v1, :cond_1

    const/4 p1, 0x7

    goto :goto_1

    :cond_1
    const/4 p1, 0x6

    .line 6
    :goto_1
    invoke-static {p1}, LTz0;->a(I)V

    goto :goto_2

    .line 7
    :cond_2
    throw v4

    :cond_3
    const p1, 0x7f130527

    if-ne v0, p1, :cond_5

    .line 8
    invoke-static {}, LTz0;->b()LTz0;

    move-result-object p1

    iget-object v0, p0, LQz0;->w:LHz0;

    .line 9
    iget-object v0, v0, LHz0;->a:Ljava/lang/String;

    .line 10
    iget-object v1, p1, LTz0;->a:Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;

    if-eqz v1, :cond_4

    .line 11
    invoke-static {v1, v0, v3}, LJ/N;->M4p7$HwP(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 12
    invoke-virtual {p1}, LTz0;->a()V

    const/4 p1, 0x3

    .line 13
    invoke-static {p1}, LTz0;->a(I)V

    goto :goto_2

    .line 14
    :cond_4
    throw v4

    :cond_5
    const p1, 0x7f1303c7

    if-ne v0, p1, :cond_6

    .line 15
    invoke-static {}, LTz0;->b()LTz0;

    move-result-object p1

    iget-object v0, p0, LQz0;->w:LHz0;

    .line 16
    iget-object v0, v0, LHz0;->a:Ljava/lang/String;

    const/4 v2, -0x1

    .line 17
    invoke-virtual {p1, v0, v2, v1}, LTz0;->a(Ljava/lang/String;IZ)V

    goto :goto_2

    :cond_6
    const p1, 0x7f1303c5

    if-ne v0, p1, :cond_7

    .line 18
    invoke-static {}, LTz0;->b()LTz0;

    move-result-object p1

    iget-object v0, p0, LQz0;->w:LHz0;

    .line 19
    iget-object v0, v0, LHz0;->a:Ljava/lang/String;

    .line 20
    invoke-virtual {p1, v0, v1, v1}, LTz0;->a(Ljava/lang/String;IZ)V

    goto :goto_2

    :cond_7
    const p1, 0x7f1303c6

    if-ne v0, p1, :cond_8

    .line 21
    invoke-static {}, LTz0;->b()LTz0;

    move-result-object p1

    iget-object v0, p0, LQz0;->w:LHz0;

    .line 22
    iget-object v0, v0, LHz0;->a:Ljava/lang/String;

    .line 23
    iget v2, p0, LQz0;->x:I

    neg-int v2, v2

    .line 24
    invoke-virtual {p1, v0, v2, v1}, LTz0;->a(Ljava/lang/String;IZ)V

    :cond_8
    :goto_2
    return-void
.end method

.method public b()[LvM0;
    .locals 7

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-static {}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->b()Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_6

    .line 3
    invoke-static {v1}, LJ/N;->MhbpPVJE(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    .line 4
    invoke-static {}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->b()Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;

    move-result-object v1

    iget-object v4, p0, LQz0;->w:LHz0;

    .line 5
    iget-object v4, v4, LHz0;->a:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 6
    invoke-static {v1, v4}, LJ/N;->Mb_Japxi(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const v1, 0x7f08010b

    .line 7
    :goto_0
    new-instance v2, LvM0;

    iget-object v4, p0, LQz0;->y:LRz0;

    .line 8
    iget-object v4, v4, LXM0;->y:Landroid/content/Context;

    const v5, 0x7f130393

    .line 9
    iget-object v6, p0, LQz0;->w:LHz0;

    .line 10
    iget-boolean v6, v6, LHz0;->d:Z

    .line 11
    invoke-direct {v2, v4, v5, v1, v6}, LvM0;-><init>(Landroid/content/Context;IIZ)V

    .line 12
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 13
    :cond_1
    throw v2

    .line 14
    :cond_2
    :goto_1
    iget-object v1, p0, LQz0;->y:LRz0;

    invoke-virtual {v1}, LXM0;->a()I

    move-result v1

    .line 15
    new-instance v2, LvM0;

    iget-object v4, p0, LQz0;->y:LRz0;

    .line 16
    iget-object v4, v4, LXM0;->y:Landroid/content/Context;

    const v5, 0x7f130527

    const/4 v6, 0x1

    if-le v1, v6, :cond_3

    const/4 v3, 0x1

    .line 17
    :cond_3
    invoke-direct {v2, v4, v5, v3}, LvM0;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 18
    iget-object v2, p0, LQz0;->y:LRz0;

    .line 19
    iget-object v3, v2, LXM0;->F:LYM0;

    .line 20
    check-cast v3, LLz0;

    .line 21
    iget-boolean v3, v3, LLz0;->c:Z

    xor-int/2addr v3, v6

    if-nez v3, :cond_5

    .line 22
    iget v3, p0, LQz0;->x:I

    if-lez v3, :cond_4

    .line 23
    new-instance v3, LvM0;

    .line 24
    iget-object v2, v2, LXM0;->y:Landroid/content/Context;

    const v4, 0x7f1303c6

    .line 25
    invoke-direct {v3, v2, v4, v6}, LvM0;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 26
    new-instance v2, LvM0;

    iget-object v3, p0, LQz0;->y:LRz0;

    .line 27
    iget-object v3, v3, LXM0;->y:Landroid/content/Context;

    const v4, 0x7f1303c7

    .line 28
    invoke-direct {v2, v3, v4, v6}, LvM0;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 29
    :cond_4
    iget v2, p0, LQz0;->x:I

    sub-int/2addr v1, v6

    if-ge v2, v1, :cond_5

    .line 30
    new-instance v1, LvM0;

    iget-object v2, p0, LQz0;->y:LRz0;

    .line 31
    iget-object v2, v2, LXM0;->y:Landroid/content/Context;

    const v3, 0x7f1303c5

    .line 32
    invoke-direct {v1, v2, v3, v6}, LvM0;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 33
    :cond_5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [LvM0;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LvM0;

    return-object v0

    .line 34
    :cond_6
    throw v2
.end method
