.class public LAZ0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/widget/NumberPicker$OnValueChangeListener;


# instance fields
.field public final synthetic a:LCZ0;


# direct methods
.method public constructor <init>(LCZ0;)V
    .locals 0

    .line 1
    iput-object p1, p0, LAZ0;->a:LCZ0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChange(Landroid/widget/NumberPicker;II)V
    .locals 4

    .line 1
    iget-object v0, p0, LAZ0;->a:LCZ0;

    invoke-virtual {v0}, LCZ0;->d()I

    move-result v0

    .line 2
    iget-object v1, p0, LAZ0;->a:LCZ0;

    invoke-virtual {v1}, LCZ0;->c()I

    move-result v1

    .line 3
    iget-object v2, p0, LAZ0;->a:LCZ0;

    .line 4
    iget-object v3, v2, LCZ0;->w:Landroid/widget/NumberPicker;

    if-ne p1, v3, :cond_2

    .line 5
    invoke-virtual {p1}, Landroid/widget/NumberPicker;->getMaxValue()I

    move-result v1

    if-ne p2, v1, :cond_0

    invoke-virtual {p1}, Landroid/widget/NumberPicker;->getMinValue()I

    move-result v1

    if-ne p3, v1, :cond_0

    add-int/lit8 p3, v0, 0x1

    .line 6
    iget-object p1, p0, LAZ0;->a:LCZ0;

    invoke-virtual {p1, p3}, LCZ0;->b(I)I

    move-result p1

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p1}, Landroid/widget/NumberPicker;->getMinValue()I

    move-result v1

    if-ne p2, v1, :cond_1

    invoke-virtual {p1}, Landroid/widget/NumberPicker;->getMaxValue()I

    move-result p1

    if-ne p3, p1, :cond_1

    add-int/lit8 p3, v0, -0x1

    .line 8
    iget-object p1, p0, LAZ0;->a:LCZ0;

    invoke-virtual {p1, p3}, LCZ0;->a(I)I

    move-result p1

    goto :goto_0

    :cond_1
    move p1, p3

    move p3, v0

    goto :goto_0

    .line 9
    :cond_2
    iget-object p2, v2, LCZ0;->x:Landroid/widget/NumberPicker;

    if-ne p1, p2, :cond_4

    move p1, v1

    .line 10
    :goto_0
    iget-object p2, p0, LAZ0;->a:LCZ0;

    invoke-virtual {p2, p3, p1}, LCZ0;->a(II)V

    .line 11
    iget-object p1, p0, LAZ0;->a:LCZ0;

    invoke-virtual {p1}, LCZ0;->e()V

    .line 12
    iget-object p1, p0, LAZ0;->a:LCZ0;

    const/4 p2, 0x4

    .line 13
    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->sendAccessibilityEvent(I)V

    .line 14
    iget-object p2, p1, LCZ0;->y:LBZ0;

    if-eqz p2, :cond_3

    .line 15
    invoke-virtual {p1}, LCZ0;->d()I

    move-result p3

    invoke-virtual {p1}, LCZ0;->c()I

    move-result p1

    check-cast p2, LEZ0;

    .line 16
    iget-object p2, p2, LEZ0;->w:LCZ0;

    .line 17
    invoke-virtual {p2, p3, p1}, LCZ0;->a(II)V

    .line 18
    invoke-virtual {p2}, LCZ0;->e()V

    const/4 p1, 0x0

    .line 19
    iput-object p1, p2, LCZ0;->y:LBZ0;

    :cond_3
    return-void

    .line 20
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method
