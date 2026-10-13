.class public LWh;
.super LT7;
.source "PG"


# instance fields
.field public a:Z

.field public final synthetic b:I

.field public final synthetic c:LXh;


# direct methods
.method public constructor <init>(LXh;I)V
    .locals 0

    .line 1
    iput-object p1, p0, LWh;->c:LXh;

    iput p2, p0, LWh;->b:I

    invoke-direct {p0}, LT7;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, LWh;->a:Z

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x1

    .line 1
    iput-boolean p1, p0, LWh;->a:Z

    return-void
.end method

.method public b(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-boolean p1, p0, LWh;->a:Z

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, LWh;->c:LXh;

    iget-object p1, p1, LXh;->a:Landroid/support/v7/widget/Toolbar;

    iget v0, p0, LWh;->b:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public c(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, LWh;->c:LXh;

    iget-object p1, p1, LXh;->a:Landroid/support/v7/widget/Toolbar;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method
