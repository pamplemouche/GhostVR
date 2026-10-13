.class public LGV0;
.super Landroid/os/Handler;
.source "PG"

# interfaces
.implements LJ61;


# instance fields
.field public final w:LQ01;


# direct methods
.method public constructor <init>(Landroid/os/Looper;LQ01;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2
    iput-object p2, p0, LGV0;->w:LQ01;

    return-void
.end method


# virtual methods
.method public a(LH61;)Z
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1
    :try_start_0
    invoke-virtual {p1}, LH61;->a()LR61;

    move-result-object p1

    invoke-virtual {p1}, LR61;->b()LH61;

    move-result-object p1

    .line 2
    invoke-static {p1}, LXX;->a(LH61;)LXX;

    move-result-object p1

    .line 3
    iget-object v2, p1, LXX;->c:[Lx71;

    array-length v2, v2

    new-array v3, v2, [Lorg/chromium/content/browser/AppWebMessagePort;

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_0

    .line 4
    new-instance v5, Lorg/chromium/content/browser/AppWebMessagePort;

    iget-object v6, p1, LXX;->c:[Lx71;

    aget-object v6, v6, v4

    .line 5
    invoke-direct {v5, v6}, Lorg/chromium/content/browser/AppWebMessagePort;-><init>(Lx71;)V

    .line 6
    aput-object v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 7
    :cond_0
    new-instance v2, LFV0;

    const/4 v4, 0x0

    invoke-direct {v2, v4}, LFV0;-><init>(LEV0;)V

    .line 8
    iget-object p1, p1, LXX;->b:LKX;

    iget-object p1, p1, LKX;->b:LS71;

    .line 9
    invoke-static {p1}, LR71;->a(LS71;)[B

    move-result-object p1

    iput-object p1, v2, LFV0;->a:[B

    .line 10
    iput-object v3, v2, LFV0;->b:[Lorg/chromium/content/browser/AppWebMessagePort;

    .line 11
    invoke-virtual {p0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Lo61; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception p1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v0

    const-string p1, "AppWebMessagePort"

    const-string v2, "Error deserializing message"

    .line 12
    invoke-static {p1, v2, v1}, LLT;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v0
.end method

.method public close()V
    .locals 0

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, LFV0;

    .line 3
    iget-object v0, p1, LFV0;->a:[B

    .line 4
    invoke-static {v0}, LJ/N;->MWL_OG7s([B)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "AppWebMessagePort"

    const-string v1, "Undecodable message received, dropping message"

    .line 5
    invoke-static {v0, v1, p1}, LLT;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 6
    :cond_0
    iget-object v1, p0, LGV0;->w:LQ01;

    iget-object p1, p1, LFV0;->b:[Lorg/chromium/content/browser/AppWebMessagePort;

    check-cast v1, Lk20;

    .line 7
    iget-object p1, v1, Lk20;->a:Ln20;

    .line 8
    iget-object p1, p1, Ln20;->b:LIi;

    const/4 v1, 0x0

    .line 9
    check-cast p1, LKi;

    .line 10
    invoke-virtual {p1, v0, v1}, LKi;->a(Ljava/lang/String;Landroid/os/Bundle;)Z

    return-void

    .line 11
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "undefined message"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
