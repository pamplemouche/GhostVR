.class public LWQ0;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;LTQ0;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0e00ad

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, LWQ0;->a:Landroid/view/View;

    const v0, 0x7f0b0228

    .line 3
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 4
    iget-object v0, p3, LTQ0;->p:Ljava/lang/CharSequence;

    .line 5
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object p2, p0, LWQ0;->a:Landroid/view/View;

    const v0, 0x7f0b020c

    .line 7
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lorg/chromium/chrome/browser/widget/prefeditor/ExpandableGridView;

    .line 8
    new-instance v0, LVQ0;

    .line 9
    iget-object v1, p3, LTQ0;->b:Ljava/util/List;

    .line 10
    iget-object p3, p3, LTQ0;->c:Ljava/util/List;

    .line 11
    invoke-direct {v0, p1, v1, p3}, LVQ0;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/util/List;)V

    .line 12
    invoke-virtual {p2, v0}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method
