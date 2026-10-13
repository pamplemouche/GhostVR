.class public LH8;
.super Landroid/widget/ArrayAdapter;
.source "PG"


# instance fields
.field public final synthetic w:Landroid/support/v7/app/AlertController$RecycleListView;

.field public final synthetic x:LK8;


# direct methods
.method public constructor <init>(LK8;Landroid/content/Context;II[Ljava/lang/CharSequence;Landroid/support/v7/app/AlertController$RecycleListView;)V
    .locals 0

    .line 1
    iput-object p1, p0, LH8;->x:LK8;

    iput-object p6, p0, LH8;->w:Landroid/support/v7/app/AlertController$RecycleListView;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 2
    iget-object p3, p0, LH8;->x:LK8;

    iget-object p3, p3, LK8;->w:[Z

    if-eqz p3, :cond_0

    .line 3
    aget-boolean p3, p3, p1

    if-eqz p3, :cond_0

    .line 4
    iget-object p3, p0, LH8;->w:Landroid/support/v7/app/AlertController$RecycleListView;

    const/4 v0, 0x1

    invoke-virtual {p3, p1, v0}, Landroid/widget/ListView;->setItemChecked(IZ)V

    :cond_0
    return-object p2
.end method
