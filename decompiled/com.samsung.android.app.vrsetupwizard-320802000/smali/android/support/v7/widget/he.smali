.class Landroid/support/v7/widget/he;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v7/widget/hu;


# instance fields
.field final synthetic a:Landroid/support/v7/widget/SeslDatePicker;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/SeslDatePicker;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/widget/he;->a:Landroid/support/v7/widget/SeslDatePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;III)V
    .locals 4

    iget-object p1, p0, Landroid/support/v7/widget/he;->a:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {p1}, Landroid/support/v7/widget/SeslDatePicker;->l(Landroid/support/v7/widget/SeslDatePicker;)Ljava/util/Calendar;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0, p2}, Ljava/util/Calendar;->set(II)V

    iget-object p1, p0, Landroid/support/v7/widget/he;->a:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {p1}, Landroid/support/v7/widget/SeslDatePicker;->l(Landroid/support/v7/widget/SeslDatePicker;)Ljava/util/Calendar;

    move-result-object p1

    const/4 v1, 0x2

    invoke-virtual {p1, v1, p3}, Ljava/util/Calendar;->set(II)V

    iget-object p1, p0, Landroid/support/v7/widget/he;->a:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {p1}, Landroid/support/v7/widget/SeslDatePicker;->l(Landroid/support/v7/widget/SeslDatePicker;)Ljava/util/Calendar;

    move-result-object p1

    const/4 v2, 0x5

    invoke-virtual {p1, v2, p4}, Ljava/util/Calendar;->set(II)V

    iget-object p1, p0, Landroid/support/v7/widget/he;->a:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {p1}, Landroid/support/v7/widget/SeslDatePicker;->m(Landroid/support/v7/widget/SeslDatePicker;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroid/support/v7/widget/he;->a:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {p1, p2}, Landroid/support/v7/widget/SeslDatePicker;->a(Landroid/support/v7/widget/SeslDatePicker;I)I

    iget-object p1, p0, Landroid/support/v7/widget/he;->a:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {p1, p3}, Landroid/support/v7/widget/SeslDatePicker;->b(Landroid/support/v7/widget/SeslDatePicker;I)I

    iget-object p1, p0, Landroid/support/v7/widget/he;->a:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {p1, p4}, Landroid/support/v7/widget/SeslDatePicker;->c(Landroid/support/v7/widget/SeslDatePicker;I)I

    :cond_0
    iget-object p1, p0, Landroid/support/v7/widget/he;->a:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {p1}, Landroid/support/v7/widget/SeslDatePicker;->n(Landroid/support/v7/widget/SeslDatePicker;)I

    move-result p1

    const/4 v3, 0x0

    if-eq p1, v0, :cond_2

    if-eq p1, v1, :cond_1

    iget-object p1, p0, Landroid/support/v7/widget/he;->a:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {p1}, Landroid/support/v7/widget/SeslDatePicker;->o(Landroid/support/v7/widget/SeslDatePicker;)Ljava/util/Calendar;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Calendar;->clear()V

    iget-object p1, p0, Landroid/support/v7/widget/he;->a:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {p1}, Landroid/support/v7/widget/SeslDatePicker;->o(Landroid/support/v7/widget/SeslDatePicker;)Ljava/util/Calendar;

    move-result-object p1

    invoke-virtual {p1, v0, p2}, Ljava/util/Calendar;->set(II)V

    iget-object p1, p0, Landroid/support/v7/widget/he;->a:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {p1}, Landroid/support/v7/widget/SeslDatePicker;->o(Landroid/support/v7/widget/SeslDatePicker;)Ljava/util/Calendar;

    move-result-object p1

    invoke-virtual {p1, v1, p3}, Ljava/util/Calendar;->set(II)V

    iget-object p1, p0, Landroid/support/v7/widget/he;->a:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {p1}, Landroid/support/v7/widget/SeslDatePicker;->o(Landroid/support/v7/widget/SeslDatePicker;)Ljava/util/Calendar;

    move-result-object p1

    invoke-virtual {p1, v2, p4}, Ljava/util/Calendar;->set(II)V

    iget-object p1, p0, Landroid/support/v7/widget/he;->a:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {p1}, Landroid/support/v7/widget/SeslDatePicker;->p(Landroid/support/v7/widget/SeslDatePicker;)Ljava/util/Calendar;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Calendar;->clear()V

    iget-object p1, p0, Landroid/support/v7/widget/he;->a:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {p1}, Landroid/support/v7/widget/SeslDatePicker;->p(Landroid/support/v7/widget/SeslDatePicker;)Ljava/util/Calendar;

    move-result-object p1

    invoke-virtual {p1, v0, p2}, Ljava/util/Calendar;->set(II)V

    iget-object p1, p0, Landroid/support/v7/widget/he;->a:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {p1}, Landroid/support/v7/widget/SeslDatePicker;->p(Landroid/support/v7/widget/SeslDatePicker;)Ljava/util/Calendar;

    move-result-object p1

    invoke-virtual {p1, v1, p3}, Ljava/util/Calendar;->set(II)V

    iget-object p1, p0, Landroid/support/v7/widget/he;->a:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {p1}, Landroid/support/v7/widget/SeslDatePicker;->p(Landroid/support/v7/widget/SeslDatePicker;)Ljava/util/Calendar;

    move-result-object p1

    invoke-virtual {p1, v2, p4}, Ljava/util/Calendar;->set(II)V

    iget-object p1, p0, Landroid/support/v7/widget/he;->a:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {p1}, Landroid/support/v7/widget/SeslDatePicker;->m(Landroid/support/v7/widget/SeslDatePicker;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Landroid/support/v7/widget/he;->a:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {p1, p2}, Landroid/support/v7/widget/SeslDatePicker;->d(Landroid/support/v7/widget/SeslDatePicker;I)I

    iget-object p1, p0, Landroid/support/v7/widget/he;->a:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {p1, p3}, Landroid/support/v7/widget/SeslDatePicker;->e(Landroid/support/v7/widget/SeslDatePicker;I)I

    iget-object p1, p0, Landroid/support/v7/widget/he;->a:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {p1, p4}, Landroid/support/v7/widget/SeslDatePicker;->f(Landroid/support/v7/widget/SeslDatePicker;I)I

    iget-object p1, p0, Landroid/support/v7/widget/he;->a:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {p1, v3}, Landroid/support/v7/widget/SeslDatePicker;->g(Landroid/support/v7/widget/SeslDatePicker;I)I

    iget-object p1, p0, Landroid/support/v7/widget/he;->a:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {p1, p2}, Landroid/support/v7/widget/SeslDatePicker;->h(Landroid/support/v7/widget/SeslDatePicker;I)I

    iget-object p1, p0, Landroid/support/v7/widget/he;->a:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {p1, p3}, Landroid/support/v7/widget/SeslDatePicker;->i(Landroid/support/v7/widget/SeslDatePicker;I)I

    iget-object p1, p0, Landroid/support/v7/widget/he;->a:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {p1, p4}, Landroid/support/v7/widget/SeslDatePicker;->j(Landroid/support/v7/widget/SeslDatePicker;I)I

    iget-object p1, p0, Landroid/support/v7/widget/he;->a:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {p1, v3}, Landroid/support/v7/widget/SeslDatePicker;->k(Landroid/support/v7/widget/SeslDatePicker;I)I

    iget-object p1, p0, Landroid/support/v7/widget/he;->a:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {p1, v3}, Landroid/support/v7/widget/SeslDatePicker;->b(Landroid/support/v7/widget/SeslDatePicker;Z)Z

    goto/16 :goto_0

    :cond_1
    iget-object p1, p0, Landroid/support/v7/widget/he;->a:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {p1}, Landroid/support/v7/widget/SeslDatePicker;->p(Landroid/support/v7/widget/SeslDatePicker;)Ljava/util/Calendar;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Calendar;->clear()V

    iget-object p1, p0, Landroid/support/v7/widget/he;->a:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {p1}, Landroid/support/v7/widget/SeslDatePicker;->p(Landroid/support/v7/widget/SeslDatePicker;)Ljava/util/Calendar;

    move-result-object p1

    invoke-virtual {p1, v0, p2}, Ljava/util/Calendar;->set(II)V

    iget-object p1, p0, Landroid/support/v7/widget/he;->a:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {p1}, Landroid/support/v7/widget/SeslDatePicker;->p(Landroid/support/v7/widget/SeslDatePicker;)Ljava/util/Calendar;

    move-result-object p1

    invoke-virtual {p1, v1, p3}, Ljava/util/Calendar;->set(II)V

    iget-object p1, p0, Landroid/support/v7/widget/he;->a:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {p1}, Landroid/support/v7/widget/SeslDatePicker;->p(Landroid/support/v7/widget/SeslDatePicker;)Ljava/util/Calendar;

    move-result-object p1

    invoke-virtual {p1, v2, p4}, Ljava/util/Calendar;->set(II)V

    iget-object p1, p0, Landroid/support/v7/widget/he;->a:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {p1}, Landroid/support/v7/widget/SeslDatePicker;->m(Landroid/support/v7/widget/SeslDatePicker;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Landroid/support/v7/widget/he;->a:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {p1, p2}, Landroid/support/v7/widget/SeslDatePicker;->h(Landroid/support/v7/widget/SeslDatePicker;I)I

    iget-object p1, p0, Landroid/support/v7/widget/he;->a:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {p1, p3}, Landroid/support/v7/widget/SeslDatePicker;->i(Landroid/support/v7/widget/SeslDatePicker;I)I

    iget-object p1, p0, Landroid/support/v7/widget/he;->a:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {p1, p4}, Landroid/support/v7/widget/SeslDatePicker;->j(Landroid/support/v7/widget/SeslDatePicker;I)I

    iget-object p1, p0, Landroid/support/v7/widget/he;->a:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {p1, v3}, Landroid/support/v7/widget/SeslDatePicker;->k(Landroid/support/v7/widget/SeslDatePicker;I)I

    goto :goto_0

    :cond_2
    iget-object p1, p0, Landroid/support/v7/widget/he;->a:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {p1}, Landroid/support/v7/widget/SeslDatePicker;->o(Landroid/support/v7/widget/SeslDatePicker;)Ljava/util/Calendar;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Calendar;->clear()V

    iget-object p1, p0, Landroid/support/v7/widget/he;->a:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {p1}, Landroid/support/v7/widget/SeslDatePicker;->o(Landroid/support/v7/widget/SeslDatePicker;)Ljava/util/Calendar;

    move-result-object p1

    invoke-virtual {p1, v0, p2}, Ljava/util/Calendar;->set(II)V

    iget-object p1, p0, Landroid/support/v7/widget/he;->a:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {p1}, Landroid/support/v7/widget/SeslDatePicker;->o(Landroid/support/v7/widget/SeslDatePicker;)Ljava/util/Calendar;

    move-result-object p1

    invoke-virtual {p1, v1, p3}, Ljava/util/Calendar;->set(II)V

    iget-object p1, p0, Landroid/support/v7/widget/he;->a:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {p1}, Landroid/support/v7/widget/SeslDatePicker;->o(Landroid/support/v7/widget/SeslDatePicker;)Ljava/util/Calendar;

    move-result-object p1

    invoke-virtual {p1, v2, p4}, Ljava/util/Calendar;->set(II)V

    iget-object p1, p0, Landroid/support/v7/widget/he;->a:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {p1}, Landroid/support/v7/widget/SeslDatePicker;->m(Landroid/support/v7/widget/SeslDatePicker;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Landroid/support/v7/widget/he;->a:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {p1, p2}, Landroid/support/v7/widget/SeslDatePicker;->d(Landroid/support/v7/widget/SeslDatePicker;I)I

    iget-object p1, p0, Landroid/support/v7/widget/he;->a:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {p1, p3}, Landroid/support/v7/widget/SeslDatePicker;->e(Landroid/support/v7/widget/SeslDatePicker;I)I

    iget-object p1, p0, Landroid/support/v7/widget/he;->a:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {p1, p4}, Landroid/support/v7/widget/SeslDatePicker;->f(Landroid/support/v7/widget/SeslDatePicker;I)I

    iget-object p1, p0, Landroid/support/v7/widget/he;->a:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {p1, v3}, Landroid/support/v7/widget/SeslDatePicker;->g(Landroid/support/v7/widget/SeslDatePicker;I)I

    :cond_3
    :goto_0
    iget-object p1, p0, Landroid/support/v7/widget/he;->a:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {p1}, Landroid/support/v7/widget/SeslDatePicker;->o(Landroid/support/v7/widget/SeslDatePicker;)Ljava/util/Calendar;

    move-result-object p2

    iget-object p3, p0, Landroid/support/v7/widget/he;->a:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {p3}, Landroid/support/v7/widget/SeslDatePicker;->p(Landroid/support/v7/widget/SeslDatePicker;)Ljava/util/Calendar;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result p2

    xor-int/2addr p2, v0

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/SeslDatePicker;->a(Z)V

    iget-object p1, p0, Landroid/support/v7/widget/he;->a:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {p1, v3}, Landroid/support/v7/widget/SeslDatePicker;->c(Landroid/support/v7/widget/SeslDatePicker;Z)V

    iget-object p1, p0, Landroid/support/v7/widget/he;->a:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {p1}, Landroid/support/v7/widget/SeslDatePicker;->q(Landroid/support/v7/widget/SeslDatePicker;)V

    return-void
.end method
