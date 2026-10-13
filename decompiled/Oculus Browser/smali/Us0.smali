.class public LUs0;
.super Landroid/widget/ScrollView;
.source "PG"


# instance fields
.field public final synthetic w:Landroid/view/View;


# direct methods
.method public constructor <init>(LWs0;Landroid/content/Context;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p3, p0, LUs0;->w:Landroid/view/View;

    invoke-direct {p0, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onMeasure(II)V
    .locals 1

    .line 1
    iget-object p2, p0, LUs0;->w:Landroid/view/View;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    const/high16 v0, -0x80000000

    .line 2
    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 3
    invoke-super {p0, p1, p2}, Landroid/widget/ScrollView;->onMeasure(II)V

    return-void
.end method
