.class public LRM0;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public a:LQM0;

.field public final b:Ljava/util/List;

.field public final c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LRM0;->b:Ljava/util/List;

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, LRM0;->c:Landroid/content/Context;

    .line 4
    invoke-virtual {p0}, LRM0;->a()LQM0;

    move-result-object v0

    iput-object v0, p0, LRM0;->a:LQM0;

    .line 5
    new-instance v0, LPM0;

    invoke-direct {v0, p0}, LPM0;-><init>(LRM0;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    return-void
.end method


# virtual methods
.method public final a()LQM0;
    .locals 6

    .line 1
    iget-object v0, p0, LRM0;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 2
    iget-object v1, p0, LRM0;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->screenHeightDp:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/16 v4, 0x140

    if-gt v0, v4, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/16 v5, 0x258

    if-lt v0, v5, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :goto_0
    if-gt v1, v4, :cond_2

    const/4 v2, 0x0

    .line 3
    :cond_2
    new-instance v1, LQM0;

    invoke-direct {v1, v0, v2}, LQM0;-><init>(II)V

    return-object v1
.end method

.method public b()V
    .locals 3

    .line 1
    invoke-virtual {p0}, LRM0;->a()LQM0;

    move-result-object v0

    .line 2
    iput-object v0, p0, LRM0;->a:LQM0;

    .line 3
    iget-object v1, p0, LRM0;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LOM0;

    .line 4
    invoke-interface {v2, v0}, LOM0;->a(LQM0;)V

    goto :goto_0

    :cond_0
    return-void
.end method
