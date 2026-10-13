.class public LQn0;
.super LKn0;
.source "PG"

# interfaces
.implements LLR0;


# instance fields
.field public b:LkW;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    sget-object v0, LzT;->a:Landroid/content/Context;

    .line 2
    new-instance v1, LPn0;

    invoke-direct {v1, v0}, LPn0;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v1}, LKn0;-><init>(LMn0;)V

    return-void
.end method

.method public static a(Landroid/content/Context;J)Z
    .locals 2

    const-wide/16 v0, 0x0

    .line 6
    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    const v0, 0x11684

    .line 7
    invoke-static {v0, p1, p2, p1, p2}, LOS0;->a(IJJ)LHS0;

    move-result-object p1

    .line 8
    invoke-virtual {p1}, LHS0;->a()LOS0;

    move-result-object p1

    .line 9
    invoke-static {}, LcS0;->a()LXR0;

    move-result-object p2

    check-cast p2, LjS0;

    invoke-virtual {p2, p0, p1}, LjS0;->a(Landroid/content/Context;LOS0;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public a(Landroid/content/Context;LRS0;)Z
    .locals 0

    .line 3
    iget-object p1, p0, LQn0;->b:LkW;

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p1, p2}, LkW;->cancel(Z)Z

    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, LQn0;->b:LkW;

    :cond_0
    return p2
.end method

.method public a(Landroid/content/Context;LRS0;LKR0;)Z
    .locals 0

    .line 1
    new-instance p1, LOn0;

    invoke-direct {p1, p0, p3}, LOn0;-><init>(LQn0;LKR0;)V

    sget-object p2, LkW;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 2
    invoke-virtual {p1, p2}, LkW;->executeOnExecutor(Ljava/util/concurrent/Executor;)LkW;

    move-result-object p1

    iput-object p1, p0, LQn0;->b:LkW;

    const/4 p1, 0x0

    return p1
.end method
