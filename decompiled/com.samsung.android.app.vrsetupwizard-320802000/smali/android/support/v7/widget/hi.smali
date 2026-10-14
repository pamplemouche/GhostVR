.class Landroid/support/v7/widget/hi;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v4/view/ce;


# instance fields
.field final synthetic a:Landroid/support/v7/widget/SeslDatePicker;


# direct methods
.method private constructor <init>(Landroid/support/v7/widget/SeslDatePicker;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/widget/hi;->a:Landroid/support/v7/widget/SeslDatePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/widget/SeslDatePicker;Landroid/support/v7/widget/gy;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/v7/widget/hi;-><init>(Landroid/support/v7/widget/SeslDatePicker;)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 7

    iget-object v0, p0, Landroid/support/v7/widget/hi;->a:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v0}, Landroid/support/v7/widget/SeslDatePicker;->k(Landroid/support/v7/widget/SeslDatePicker;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/hi;->a:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v0, v1}, Landroid/support/v7/widget/SeslDatePicker;->a(Landroid/support/v7/widget/SeslDatePicker;Z)Z

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/hi;->a:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v0}, Landroid/support/v7/widget/SeslDatePicker;->F(Landroid/support/v7/widget/SeslDatePicker;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Landroid/support/v7/widget/hi;->a:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {p1, v1}, Landroid/support/v7/widget/SeslDatePicker;->d(Landroid/support/v7/widget/SeslDatePicker;Z)Z

    return-void

    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/hi;->a:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v0, p1}, Landroid/support/v7/widget/SeslDatePicker;->q(Landroid/support/v7/widget/SeslDatePicker;I)I

    iget-object v0, p0, Landroid/support/v7/widget/hi;->a:Landroid/support/v7/widget/SeslDatePicker;

    invoke-virtual {v0}, Landroid/support/v7/widget/SeslDatePicker;->getMinMonth()I

    move-result v0

    add-int/2addr v0, p1

    div-int/lit8 v2, v0, 0xc

    iget-object v3, p0, Landroid/support/v7/widget/hi;->a:Landroid/support/v7/widget/SeslDatePicker;

    invoke-virtual {v3}, Landroid/support/v7/widget/SeslDatePicker;->getMinYear()I

    move-result v3

    add-int/2addr v2, v3

    rem-int/lit8 v0, v0, 0xc

    iget-object v3, p0, Landroid/support/v7/widget/hi;->a:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v3}, Landroid/support/v7/widget/SeslDatePicker;->l(Landroid/support/v7/widget/SeslDatePicker;)Ljava/util/Calendar;

    move-result-object v3

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iget-object v5, p0, Landroid/support/v7/widget/hi;->a:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v5}, Landroid/support/v7/widget/SeslDatePicker;->m(Landroid/support/v7/widget/SeslDatePicker;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v0, p0, Landroid/support/v7/widget/hi;->a:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v0, p1}, Landroid/support/v7/widget/SeslDatePicker;->n(Landroid/support/v7/widget/SeslDatePicker;I)Landroid/support/v7/widget/hm;

    move-result-object v0

    iget v2, v0, Landroid/support/v7/widget/hm;->a:I

    iget v3, v0, Landroid/support/v7/widget/hm;->b:I

    iget-object v5, p0, Landroid/support/v7/widget/hi;->a:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v5}, Landroid/support/v7/widget/SeslDatePicker;->t(Landroid/support/v7/widget/SeslDatePicker;)I

    move-result v5

    iget-object v6, p0, Landroid/support/v7/widget/hi;->a:Landroid/support/v7/widget/SeslDatePicker;

    iget-boolean v0, v0, Landroid/support/v7/widget/hm;->d:Z

    invoke-static {v6, v0}, Landroid/support/v7/widget/SeslDatePicker;->b(Landroid/support/v7/widget/SeslDatePicker;Z)Z

    move v0, v3

    move v3, v5

    :cond_2
    iget-object v5, p0, Landroid/support/v7/widget/hi;->a:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v5}, Landroid/support/v7/widget/SeslDatePicker;->b(Landroid/support/v7/widget/SeslDatePicker;)Ljava/util/Calendar;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->get(I)I

    move-result v5

    if-eq v2, v5, :cond_3

    const/4 v1, 0x1

    :cond_3
    iget-object v5, p0, Landroid/support/v7/widget/hi;->a:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v5}, Landroid/support/v7/widget/SeslDatePicker;->b(Landroid/support/v7/widget/SeslDatePicker;)Ljava/util/Calendar;

    move-result-object v5

    invoke-virtual {v5, v6, v2}, Ljava/util/Calendar;->set(II)V

    iget-object v2, p0, Landroid/support/v7/widget/hi;->a:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v2}, Landroid/support/v7/widget/SeslDatePicker;->b(Landroid/support/v7/widget/SeslDatePicker;)Ljava/util/Calendar;

    move-result-object v2

    const/4 v5, 0x2

    invoke-virtual {v2, v5, v0}, Ljava/util/Calendar;->set(II)V

    iget-object v0, p0, Landroid/support/v7/widget/hi;->a:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v0}, Landroid/support/v7/widget/SeslDatePicker;->b(Landroid/support/v7/widget/SeslDatePicker;)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, v4, v6}, Ljava/util/Calendar;->set(II)V

    iget-object v0, p0, Landroid/support/v7/widget/hi;->a:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v0}, Landroid/support/v7/widget/SeslDatePicker;->b(Landroid/support/v7/widget/SeslDatePicker;)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v0

    if-le v3, v0, :cond_4

    iget-object v0, p0, Landroid/support/v7/widget/hi;->a:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v0}, Landroid/support/v7/widget/SeslDatePicker;->b(Landroid/support/v7/widget/SeslDatePicker;)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v3

    :cond_4
    iget-object v0, p0, Landroid/support/v7/widget/hi;->a:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v0}, Landroid/support/v7/widget/SeslDatePicker;->b(Landroid/support/v7/widget/SeslDatePicker;)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, v4, v3}, Ljava/util/Calendar;->set(II)V

    iget-object v0, p0, Landroid/support/v7/widget/hi;->a:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v0}, Landroid/support/v7/widget/SeslDatePicker;->G(Landroid/support/v7/widget/SeslDatePicker;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/16 v2, 0x3e8

    iput v2, v0, Landroid/os/Message;->what:I

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Landroid/support/v7/widget/hi;->a:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v1}, Landroid/support/v7/widget/SeslDatePicker;->G(Landroid/support/v7/widget/SeslDatePicker;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget-object v0, p0, Landroid/support/v7/widget/hi;->a:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v0}, Landroid/support/v7/widget/SeslDatePicker;->G(Landroid/support/v7/widget/SeslDatePicker;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x3e9

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Landroid/support/v7/widget/hi;->a:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v1}, Landroid/support/v7/widget/SeslDatePicker;->G(Landroid/support/v7/widget/SeslDatePicker;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget-object v0, p0, Landroid/support/v7/widget/hi;->a:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v0}, Landroid/support/v7/widget/SeslDatePicker;->H(Landroid/support/v7/widget/SeslDatePicker;)Landroid/support/v7/widget/hj;

    move-result-object v0

    iget-object v0, v0, Landroid/support/v7/widget/hj;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x10

    if-eqz v1, :cond_5

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/jn;

    invoke-virtual {v1}, Landroid/support/v7/widget/jn;->b()V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v2, :cond_5

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/jn;

    invoke-virtual {v1, v6}, Landroid/support/v7/widget/jn;->setImportantForAccessibility(I)V

    :cond_5
    if-eqz p1, :cond_6

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/jn;

    invoke-virtual {v3}, Landroid/support/v7/widget/jn;->b()V

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v2, :cond_6

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/jn;

    invoke-virtual {v1, v5}, Landroid/support/v7/widget/jn;->setImportantForAccessibility(I)V

    :cond_6
    iget-object v1, p0, Landroid/support/v7/widget/hi;->a:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v1}, Landroid/support/v7/widget/SeslDatePicker;->i(Landroid/support/v7/widget/SeslDatePicker;)I

    move-result v1

    sub-int/2addr v1, v6

    if-eq p1, v1, :cond_7

    add-int/2addr p1, v6

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/jn;

    invoke-virtual {v1}, Landroid/support/v7/widget/jn;->b()V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v2, :cond_7

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/jn;

    invoke-virtual {p1, v5}, Landroid/support/v7/widget/jn;->setImportantForAccessibility(I)V

    :cond_7
    return-void
.end method

.method public a(IFI)V
    .locals 0

    return-void
.end method

.method public b(I)V
    .locals 0

    return-void
.end method
