.class public Lu3;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field public final synthetic w:Lv3;


# direct methods
.method public constructor <init>(Lv3;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lu3;->w:Lv3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 1
    iget-object p2, p0, Lu3;->w:Lv3;

    check-cast p1, Landroid/widget/ListView;

    if-eqz p2, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 2
    throw p1
.end method
