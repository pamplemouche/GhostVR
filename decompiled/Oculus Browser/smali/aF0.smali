.class public final synthetic LaF0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final w:LjF0;


# direct methods
.method public constructor <init>(LjF0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LaF0;->w:LjF0;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, LaF0;->w:LjF0;

    .line 1
    invoke-virtual {v0}, LjF0;->O()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 2
    iput-boolean v1, v0, LjF0;->I0:Z

    const/4 v1, 0x0

    .line 3
    iput-boolean v1, v0, LjF0;->K0:Z

    const-string v2, "Signin_Signin_WithDefaultSyncSettings"

    .line 4
    invoke-static {v2}, LhV;->a(Ljava/lang/String;)V

    .line 5
    check-cast p1, Landroid/widget/TextView;

    .line 6
    invoke-static {}, LmU0;->b()LmU0;

    move-result-object v2

    .line 7
    new-instance v3, LiF0;

    invoke-direct {v3, v0, v2, p1}, LiF0;-><init>(LjF0;LmU0;Landroid/widget/TextView;)V

    sget-object p1, LkW;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 8
    invoke-virtual {v3, p1}, LkW;->executeOnExecutor(Ljava/util/concurrent/Executor;)LkW;

    .line 9
    invoke-virtual {v0, v1}, LjF0;->h(Z)V

    :goto_0
    return-void
.end method
