.class Landroid/support/v7/app/bm;
.super Landroid/support/v4/view/cs;


# instance fields
.field final synthetic a:Landroid/support/v7/app/bk;


# direct methods
.method constructor <init>(Landroid/support/v7/app/bk;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/app/bm;->a:Landroid/support/v7/app/bk;

    invoke-direct {p0}, Landroid/support/v4/view/cs;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Landroid/support/v7/app/bm;->a:Landroid/support/v7/app/bk;

    const/4 v0, 0x0

    iput-object v0, p1, Landroid/support/v7/app/bk;->n:Landroid/support/v7/view/l;

    iget-object p1, p1, Landroid/support/v7/app/bk;->c:Landroid/support/v7/widget/ActionBarContainer;

    invoke-virtual {p1}, Landroid/support/v7/widget/ActionBarContainer;->requestLayout()V

    return-void
.end method
