.class Landroid/support/v7/app/m;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Landroid/support/v7/app/AlertController;

.field final synthetic b:Landroid/support/v7/app/j;


# direct methods
.method constructor <init>(Landroid/support/v7/app/j;Landroid/support/v7/app/AlertController;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/app/m;->b:Landroid/support/v7/app/j;

    iput-object p2, p0, Landroid/support/v7/app/m;->a:Landroid/support/v7/app/AlertController;

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

    iget-object p1, p0, Landroid/support/v7/app/m;->b:Landroid/support/v7/app/j;

    iget-object p1, p1, Landroid/support/v7/app/j;->u:Landroid/content/DialogInterface$OnClickListener;

    iget-object p2, p0, Landroid/support/v7/app/m;->a:Landroid/support/v7/app/AlertController;

    iget-object p2, p2, Landroid/support/v7/app/AlertController;->a:Landroid/support/v7/app/av;

    invoke-interface {p1, p2, p3}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    iget-object p1, p0, Landroid/support/v7/app/m;->b:Landroid/support/v7/app/j;

    iget-boolean p1, p1, Landroid/support/v7/app/j;->E:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Landroid/support/v7/app/m;->a:Landroid/support/v7/app/AlertController;

    iget-object p1, p1, Landroid/support/v7/app/AlertController;->a:Landroid/support/v7/app/av;

    invoke-virtual {p1}, Landroid/support/v7/app/av;->dismiss()V

    :cond_0
    return-void
.end method
