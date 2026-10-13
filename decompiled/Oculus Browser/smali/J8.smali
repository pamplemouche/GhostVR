.class public LJ8;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field public final synthetic w:Landroid/support/v7/app/AlertController$RecycleListView;

.field public final synthetic x:LN8;

.field public final synthetic y:LK8;


# direct methods
.method public constructor <init>(LK8;Landroid/support/v7/app/AlertController$RecycleListView;LN8;)V
    .locals 0

    .line 1
    iput-object p1, p0, LJ8;->y:LK8;

    iput-object p2, p0, LJ8;->w:Landroid/support/v7/app/AlertController$RecycleListView;

    iput-object p3, p0, LJ8;->x:LN8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 1
    iget-object p1, p0, LJ8;->y:LK8;

    iget-object p1, p1, LK8;->w:[Z

    if-eqz p1, :cond_0

    .line 2
    iget-object p2, p0, LJ8;->w:Landroid/support/v7/app/AlertController$RecycleListView;

    invoke-virtual {p2, p3}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result p2

    aput-boolean p2, p1, p3

    .line 3
    :cond_0
    iget-object p1, p0, LJ8;->y:LK8;

    iget-object p1, p1, LK8;->A:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    iget-object p2, p0, LJ8;->x:LN8;

    iget-object p2, p2, LN8;->b:Lm9;

    iget-object p4, p0, LJ8;->w:Landroid/support/v7/app/AlertController$RecycleListView;

    .line 4
    invoke-virtual {p4, p3}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result p4

    .line 5
    invoke-interface {p1, p2, p3, p4}, Landroid/content/DialogInterface$OnMultiChoiceClickListener;->onClick(Landroid/content/DialogInterface;IZ)V

    return-void
.end method
