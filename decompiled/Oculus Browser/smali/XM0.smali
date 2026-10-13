.class public abstract LXM0;
.super LBg;
.source "PG"


# instance fields
.field public A:Lsi;

.field public B:Ljava/util/List;

.field public C:Landroid/support/v7/widget/RecyclerView;

.field public final D:I

.field public final E:F

.field public F:LYM0;

.field public G:I

.field public H:LWT;

.field public final y:Landroid/content/Context;

.field public z:Lxi;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, LBg;-><init>()V

    .line 2
    new-instance v0, LWT;

    invoke-direct {v0}, LWT;-><init>()V

    iput-object v0, p0, LXM0;->H:LWT;

    .line 3
    iput-object p1, p0, LXM0;->y:Landroid/content/Context;

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f060070

    .line 5
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    const v1, 0x7f0c0016

    .line 6
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 7
    invoke-static {v0, v1}, Ln4;->c(II)I

    move-result v0

    iput v0, p0, LXM0;->D:I

    const v0, 0x7f070180

    .line 8
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, LXM0;->E:F

    return-void
.end method

.method public static synthetic a(LXM0;Z)V
    .locals 1

    .line 3
    iget-object p0, p0, LXM0;->H:LWT;

    invoke-virtual {p0}, LWT;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LTM0;

    .line 4
    invoke-interface {v0, p1}, LTM0;->a(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    iget-object v0, p0, LXM0;->B:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public a(Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    .line 2
    iput-object p1, p0, LXM0;->C:Landroid/support/v7/widget/RecyclerView;

    return-void
.end method

.method public b(Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    const/4 p1, 0x0

    .line 1
    iput-object p1, p0, LXM0;->C:Landroid/support/v7/widget/RecyclerView;

    return-void
.end method
