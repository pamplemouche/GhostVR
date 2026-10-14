.class Landroid/support/v7/widget/bh;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Landroid/support/v7/widget/AppCompatSpinner;

.field final synthetic b:Landroid/support/v7/widget/bg;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/bg;Landroid/support/v7/widget/AppCompatSpinner;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/widget/bh;->b:Landroid/support/v7/widget/bg;

    iput-object p2, p0, Landroid/support/v7/widget/bh;->a:Landroid/support/v7/widget/AppCompatSpinner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object p1, p0, Landroid/support/v7/widget/bh;->b:Landroid/support/v7/widget/bg;

    iget-object p1, p1, Landroid/support/v7/widget/bg;->b:Landroid/support/v7/widget/AppCompatSpinner;

    invoke-virtual {p1, p3}, Landroid/support/v7/widget/AppCompatSpinner;->setSelection(I)V

    iget-object p1, p0, Landroid/support/v7/widget/bh;->b:Landroid/support/v7/widget/bg;

    iget-object p1, p1, Landroid/support/v7/widget/bg;->b:Landroid/support/v7/widget/AppCompatSpinner;

    invoke-virtual {p1}, Landroid/support/v7/widget/AppCompatSpinner;->getOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroid/support/v7/widget/bh;->b:Landroid/support/v7/widget/bg;

    iget-object p1, p1, Landroid/support/v7/widget/bg;->b:Landroid/support/v7/widget/AppCompatSpinner;

    iget-object p4, p0, Landroid/support/v7/widget/bh;->b:Landroid/support/v7/widget/bg;

    iget-object p4, p4, Landroid/support/v7/widget/bg;->a:Landroid/widget/ListAdapter;

    invoke-interface {p4, p3}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide p4

    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/support/v7/widget/AppCompatSpinner;->performItemClick(Landroid/view/View;IJ)Z

    :cond_0
    iget-object p1, p0, Landroid/support/v7/widget/bh;->b:Landroid/support/v7/widget/bg;

    invoke-virtual {p1}, Landroid/support/v7/widget/bg;->e()V

    return-void
.end method
