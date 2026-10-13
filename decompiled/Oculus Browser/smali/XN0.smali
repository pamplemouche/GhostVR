.class public LXN0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LDd1;


# instance fields
.field public final synthetic w:LYN0;


# direct methods
.method public constructor <init>(LYN0;)V
    .locals 0

    .line 1
    iput-object p1, p0, LXN0;->w:LYN0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lle1;I)V
    .locals 0

    .line 1
    iget-object p1, p0, LXN0;->w:LYN0;

    .line 2
    iget-object p1, p1, LYN0;->e:Lorg/chromium/base/Callback;

    const/4 p2, 0x0

    .line 3
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/chromium/base/Callback;->onResult(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, LXN0;->w:LYN0;

    .line 5
    iget-object p1, p1, LYN0;->b:LBd1;

    .line 6
    invoke-virtual {p1}, LBd1;->a()V

    return-void
.end method

.method public b(Lle1;I)V
    .locals 2

    .line 1
    invoke-static {}, LjO0;->b()LjO0;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    :goto_0
    if-eqz p2, :cond_1

    .line 2
    iget-object v1, p0, LXN0;->w:LYN0;

    .line 3
    iget-boolean v1, v1, LYN0;->d:Z

    xor-int/2addr v0, v1

    .line 4
    invoke-virtual {p1, v0}, LjO0;->a(Z)V

    .line 5
    :cond_1
    iget-object p1, p0, LXN0;->w:LYN0;

    .line 6
    iget-object p1, p1, LYN0;->e:Lorg/chromium/base/Callback;

    .line 7
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/chromium/base/Callback;->onResult(Ljava/lang/Object;)V

    .line 8
    iget-object p1, p0, LXN0;->w:LYN0;

    .line 9
    iget-object p1, p1, LYN0;->b:LBd1;

    invoke-virtual {p1}, LBd1;->a()V

    return-void
.end method
