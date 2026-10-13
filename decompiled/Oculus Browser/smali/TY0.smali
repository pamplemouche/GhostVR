.class public LTY0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic w:Landroid/view/View;

.field public final synthetic x:LUY0;

.field public final synthetic y:I

.field public final synthetic z:LWY0;


# direct methods
.method public constructor <init>(LWY0;Landroid/view/View;LUY0;I)V
    .locals 0

    .line 1
    iput-object p1, p0, LTY0;->z:LWY0;

    iput-object p2, p0, LTY0;->w:Landroid/view/View;

    iput-object p3, p0, LTY0;->x:LUY0;

    iput p4, p0, LTY0;->y:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 1
    iget-object v0, p0, LTY0;->z:LWY0;

    iget-object v1, p0, LTY0;->w:Landroid/view/View;

    iget-object v2, p0, LTY0;->x:LUY0;

    iget v3, p0, LTY0;->y:I

    .line 2
    iget-object v4, v0, LWY0;->a:LL01;

    iget-object v5, v0, LWY0;->c:LYY0;

    check-cast v4, LYX0;

    invoke-virtual {v4, v5}, LYX0;->a(Landroid/view/View;)Z

    move-result v4

    const-string v5, "InputMethod.RegisterProxyView"

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v8, 0x0

    if-eqz v4, :cond_1

    .line 3
    iget-object v0, v0, LWY0;->b:LZX0;

    if-eqz v0, :cond_0

    .line 4
    invoke-static {v5, v7, v6}, LfV;->a(Ljava/lang/String;II)V

    goto :goto_0

    .line 5
    :cond_0
    throw v8

    :cond_1
    const/4 v4, 0x1

    if-lez v3, :cond_3

    sub-int/2addr v3, v4

    .line 6
    invoke-virtual {v1}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v4

    if-nez v4, :cond_2

    goto :goto_0

    .line 7
    :cond_2
    new-instance v5, LTY0;

    invoke-direct {v5, v0, v1, v2, v3}, LTY0;-><init>(LWY0;Landroid/view/View;LUY0;I)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_3
    if-eqz v2, :cond_6

    .line 8
    invoke-static {}, LXX0;->a()V

    .line 9
    iget-boolean v1, v2, LUY0;->a:Z

    if-eqz v1, :cond_4

    goto :goto_0

    :cond_4
    new-array v1, v7, [Ljava/lang/Object;

    const-string v2, "cr_Ime"

    const-string v3, "onRegisterProxyViewFailure"

    .line 10
    invoke-static {v2, v3, v1}, LLT;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    iget-object v0, v0, LWY0;->b:LZX0;

    if-eqz v0, :cond_5

    .line 12
    invoke-static {v5, v4, v6}, LfV;->a(Ljava/lang/String;II)V

    :goto_0
    return-void

    .line 13
    :cond_5
    throw v8

    .line 14
    :cond_6
    throw v8
.end method
