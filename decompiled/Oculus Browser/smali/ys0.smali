.class public Lys0;
.super Landroid/widget/ArrayAdapter;
.source "PG"


# instance fields
.field public final synthetic w:Lzs0;


# direct methods
.method public constructor <init>(Lzs0;Landroid/content/Context;ILjava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lys0;->w:Lzs0;

    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 2
    iget-object p2, p0, Lys0;->w:Lzs0;

    .line 3
    iget p2, p2, Lzs0;->x:I

    mul-int/lit8 p3, p2, 0x2

    .line 4
    invoke-static {p1, p2, p2, p3, p2}, LA7;->a(Landroid/view/View;IIII)V

    return-object p1
.end method
