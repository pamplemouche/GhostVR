.class Landroid/support/v7/widget/ha;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Landroid/support/v7/widget/SeslDatePicker;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/SeslDatePicker;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/widget/ha;->a:Landroid/support/v7/widget/SeslDatePicker;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x3e8

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p1, v0, :cond_7

    const/16 v0, 0x3e9

    if-eq p1, v0, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object p1, p0, Landroid/support/v7/widget/ha;->a:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {p1}, Landroid/support/v7/widget/SeslDatePicker;->d(Landroid/support/v7/widget/SeslDatePicker;)I

    move-result p1

    const/4 v0, -0x1

    const/4 v3, 0x0

    if-ne p1, v2, :cond_2

    iget-object p1, p0, Landroid/support/v7/widget/ha;->a:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {p1}, Landroid/support/v7/widget/SeslDatePicker;->f(Landroid/support/v7/widget/SeslDatePicker;)Landroid/widget/ImageButton;

    move-result-object p1

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/widget/ImageButton;->setAlpha(F)V

    iget-object p1, p0, Landroid/support/v7/widget/ha;->a:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {p1}, Landroid/support/v7/widget/SeslDatePicker;->g(Landroid/support/v7/widget/SeslDatePicker;)Landroid/widget/ImageButton;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/widget/ImageButton;->setAlpha(F)V

    iget-object p1, p0, Landroid/support/v7/widget/ha;->a:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {p1}, Landroid/support/v7/widget/SeslDatePicker;->f(Landroid/support/v7/widget/SeslDatePicker;)Landroid/widget/ImageButton;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/widget/ImageButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Landroid/support/v7/widget/ha;->a:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {p1}, Landroid/support/v7/widget/SeslDatePicker;->g(Landroid/support/v7/widget/SeslDatePicker;)Landroid/widget/ImageButton;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/widget/ImageButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Landroid/support/v7/widget/ha;->a:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {p1}, Landroid/support/v7/widget/SeslDatePicker;->f(Landroid/support/v7/widget/SeslDatePicker;)Landroid/widget/ImageButton;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    iget-object p1, p0, Landroid/support/v7/widget/ha;->a:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {p1}, Landroid/support/v7/widget/SeslDatePicker;->g(Landroid/support/v7/widget/SeslDatePicker;)Landroid/widget/ImageButton;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    iget-object p1, p0, Landroid/support/v7/widget/ha;->a:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {p1}, Landroid/support/v7/widget/SeslDatePicker;->f(Landroid/support/v7/widget/SeslDatePicker;)Landroid/widget/ImageButton;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/ImageButton;->setFocusable(Z)V

    iget-object p1, p0, Landroid/support/v7/widget/ha;->a:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {p1}, Landroid/support/v7/widget/SeslDatePicker;->g(Landroid/support/v7/widget/SeslDatePicker;)Landroid/widget/ImageButton;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/ImageButton;->setFocusable(Z)V

    invoke-static {}, Landroid/support/v4/widget/az;->a()I

    move-result p1

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/ha;->a:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v0}, Landroid/support/v7/widget/SeslDatePicker;->f(Landroid/support/v7/widget/SeslDatePicker;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v4/view/aw;->d(Landroid/view/View;I)V

    iget-object v0, p0, Landroid/support/v7/widget/ha;->a:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v0}, Landroid/support/v7/widget/SeslDatePicker;->g(Landroid/support/v7/widget/SeslDatePicker;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v4/view/aw;->d(Landroid/view/View;I)V

    :cond_1
    return-void

    :cond_2
    invoke-static {}, Landroid/support/v4/widget/az;->b()I

    move-result p1

    if-eq p1, v0, :cond_3

    iget-object v0, p0, Landroid/support/v7/widget/ha;->a:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v0}, Landroid/support/v7/widget/SeslDatePicker;->f(Landroid/support/v7/widget/SeslDatePicker;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v4/view/aw;->d(Landroid/view/View;I)V

    iget-object v0, p0, Landroid/support/v7/widget/ha;->a:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v0}, Landroid/support/v7/widget/SeslDatePicker;->g(Landroid/support/v7/widget/SeslDatePicker;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v4/view/aw;->d(Landroid/view/View;I)V

    :cond_3
    iget-object p1, p0, Landroid/support/v7/widget/ha;->a:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {p1}, Landroid/support/v7/widget/SeslDatePicker;->h(Landroid/support/v7/widget/SeslDatePicker;)I

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    if-lez p1, :cond_4

    iget-object p1, p0, Landroid/support/v7/widget/ha;->a:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {p1}, Landroid/support/v7/widget/SeslDatePicker;->h(Landroid/support/v7/widget/SeslDatePicker;)I

    move-result p1

    iget-object v4, p0, Landroid/support/v7/widget/ha;->a:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v4}, Landroid/support/v7/widget/SeslDatePicker;->i(Landroid/support/v7/widget/SeslDatePicker;)I

    move-result v4

    sub-int/2addr v4, v2

    if-ge p1, v4, :cond_4

    iget-object p1, p0, Landroid/support/v7/widget/ha;->a:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {p1}, Landroid/support/v7/widget/SeslDatePicker;->f(Landroid/support/v7/widget/SeslDatePicker;)Landroid/widget/ImageButton;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setAlpha(F)V

    iget-object p1, p0, Landroid/support/v7/widget/ha;->a:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {p1}, Landroid/support/v7/widget/SeslDatePicker;->g(Landroid/support/v7/widget/SeslDatePicker;)Landroid/widget/ImageButton;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setAlpha(F)V

    iget-object p1, p0, Landroid/support/v7/widget/ha;->a:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {p1}, Landroid/support/v7/widget/SeslDatePicker;->f(Landroid/support/v7/widget/SeslDatePicker;)Landroid/widget/ImageButton;

    move-result-object p1

    iget-object v0, p0, Landroid/support/v7/widget/ha;->a:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v0}, Landroid/support/v7/widget/SeslDatePicker;->j(Landroid/support/v7/widget/SeslDatePicker;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    iget-object p1, p0, Landroid/support/v7/widget/ha;->a:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {p1}, Landroid/support/v7/widget/SeslDatePicker;->g(Landroid/support/v7/widget/SeslDatePicker;)Landroid/widget/ImageButton;

    move-result-object p1

    iget-object v0, p0, Landroid/support/v7/widget/ha;->a:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v0}, Landroid/support/v7/widget/SeslDatePicker;->j(Landroid/support/v7/widget/SeslDatePicker;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    iget-object p1, p0, Landroid/support/v7/widget/ha;->a:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {p1}, Landroid/support/v7/widget/SeslDatePicker;->f(Landroid/support/v7/widget/SeslDatePicker;)Landroid/widget/ImageButton;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    iget-object p1, p0, Landroid/support/v7/widget/ha;->a:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {p1}, Landroid/support/v7/widget/SeslDatePicker;->g(Landroid/support/v7/widget/SeslDatePicker;)Landroid/widget/ImageButton;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    iget-object p1, p0, Landroid/support/v7/widget/ha;->a:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {p1}, Landroid/support/v7/widget/SeslDatePicker;->f(Landroid/support/v7/widget/SeslDatePicker;)Landroid/widget/ImageButton;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/widget/ImageButton;->setFocusable(Z)V

    iget-object p1, p0, Landroid/support/v7/widget/ha;->a:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {p1}, Landroid/support/v7/widget/SeslDatePicker;->g(Landroid/support/v7/widget/SeslDatePicker;)Landroid/widget/ImageButton;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/widget/ImageButton;->setFocusable(Z)V

    return-void

    :cond_4
    iget-object p1, p0, Landroid/support/v7/widget/ha;->a:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {p1}, Landroid/support/v7/widget/SeslDatePicker;->i(Landroid/support/v7/widget/SeslDatePicker;)I

    move-result p1

    const v4, 0x3ecccccd    # 0.4f

    if-ne p1, v2, :cond_5

    iget-object p1, p0, Landroid/support/v7/widget/ha;->a:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {p1}, Landroid/support/v7/widget/SeslDatePicker;->f(Landroid/support/v7/widget/SeslDatePicker;)Landroid/widget/ImageButton;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/widget/ImageButton;->setAlpha(F)V

    iget-object p1, p0, Landroid/support/v7/widget/ha;->a:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {p1}, Landroid/support/v7/widget/SeslDatePicker;->g(Landroid/support/v7/widget/SeslDatePicker;)Landroid/widget/ImageButton;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/widget/ImageButton;->setAlpha(F)V

    iget-object p1, p0, Landroid/support/v7/widget/ha;->a:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {p1}, Landroid/support/v7/widget/SeslDatePicker;->f(Landroid/support/v7/widget/SeslDatePicker;)Landroid/widget/ImageButton;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/widget/ImageButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Landroid/support/v7/widget/ha;->a:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {p1}, Landroid/support/v7/widget/SeslDatePicker;->g(Landroid/support/v7/widget/SeslDatePicker;)Landroid/widget/ImageButton;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/widget/ImageButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Landroid/support/v7/widget/ha;->a:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {p1}, Landroid/support/v7/widget/SeslDatePicker;->f(Landroid/support/v7/widget/SeslDatePicker;)Landroid/widget/ImageButton;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    iget-object p1, p0, Landroid/support/v7/widget/ha;->a:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {p1}, Landroid/support/v7/widget/SeslDatePicker;->g(Landroid/support/v7/widget/SeslDatePicker;)Landroid/widget/ImageButton;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    iget-object p1, p0, Landroid/support/v7/widget/ha;->a:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {p1}, Landroid/support/v7/widget/SeslDatePicker;->f(Landroid/support/v7/widget/SeslDatePicker;)Landroid/widget/ImageButton;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/ImageButton;->setFocusable(Z)V

    iget-object p1, p0, Landroid/support/v7/widget/ha;->a:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {p1}, Landroid/support/v7/widget/SeslDatePicker;->g(Landroid/support/v7/widget/SeslDatePicker;)Landroid/widget/ImageButton;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/ImageButton;->setFocusable(Z)V

    iget-object p1, p0, Landroid/support/v7/widget/ha;->a:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {p1}, Landroid/support/v7/widget/SeslDatePicker;->a(Landroid/support/v7/widget/SeslDatePicker;)V

    return-void

    :cond_5
    iget-object p1, p0, Landroid/support/v7/widget/ha;->a:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {p1}, Landroid/support/v7/widget/SeslDatePicker;->h(Landroid/support/v7/widget/SeslDatePicker;)I

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p0, Landroid/support/v7/widget/ha;->a:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {p1}, Landroid/support/v7/widget/SeslDatePicker;->f(Landroid/support/v7/widget/SeslDatePicker;)Landroid/widget/ImageButton;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/widget/ImageButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Landroid/support/v7/widget/ha;->a:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {p1}, Landroid/support/v7/widget/SeslDatePicker;->g(Landroid/support/v7/widget/SeslDatePicker;)Landroid/widget/ImageButton;

    move-result-object p1

    iget-object v3, p0, Landroid/support/v7/widget/ha;->a:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v3}, Landroid/support/v7/widget/SeslDatePicker;->j(Landroid/support/v7/widget/SeslDatePicker;)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    iget-object p1, p0, Landroid/support/v7/widget/ha;->a:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {p1}, Landroid/support/v7/widget/SeslDatePicker;->f(Landroid/support/v7/widget/SeslDatePicker;)Landroid/widget/ImageButton;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/widget/ImageButton;->setAlpha(F)V

    iget-object p1, p0, Landroid/support/v7/widget/ha;->a:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {p1}, Landroid/support/v7/widget/SeslDatePicker;->f(Landroid/support/v7/widget/SeslDatePicker;)Landroid/widget/ImageButton;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    iget-object p1, p0, Landroid/support/v7/widget/ha;->a:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {p1}, Landroid/support/v7/widget/SeslDatePicker;->f(Landroid/support/v7/widget/SeslDatePicker;)Landroid/widget/ImageButton;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/ImageButton;->setFocusable(Z)V

    iget-object p1, p0, Landroid/support/v7/widget/ha;->a:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {p1}, Landroid/support/v7/widget/SeslDatePicker;->g(Landroid/support/v7/widget/SeslDatePicker;)Landroid/widget/ImageButton;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setAlpha(F)V

    iget-object p1, p0, Landroid/support/v7/widget/ha;->a:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {p1}, Landroid/support/v7/widget/SeslDatePicker;->g(Landroid/support/v7/widget/SeslDatePicker;)Landroid/widget/ImageButton;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    iget-object p1, p0, Landroid/support/v7/widget/ha;->a:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {p1}, Landroid/support/v7/widget/SeslDatePicker;->g(Landroid/support/v7/widget/SeslDatePicker;)Landroid/widget/ImageButton;

    move-result-object p1

    :goto_0
    invoke-virtual {p1, v2}, Landroid/widget/ImageButton;->setFocusable(Z)V

    iget-object p1, p0, Landroid/support/v7/widget/ha;->a:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {p1}, Landroid/support/v7/widget/SeslDatePicker;->a(Landroid/support/v7/widget/SeslDatePicker;)V

    goto/16 :goto_2

    :cond_6
    iget-object p1, p0, Landroid/support/v7/widget/ha;->a:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {p1}, Landroid/support/v7/widget/SeslDatePicker;->h(Landroid/support/v7/widget/SeslDatePicker;)I

    move-result p1

    iget-object v5, p0, Landroid/support/v7/widget/ha;->a:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v5}, Landroid/support/v7/widget/SeslDatePicker;->i(Landroid/support/v7/widget/SeslDatePicker;)I

    move-result v5

    sub-int/2addr v5, v2

    if-ne p1, v5, :cond_a

    iget-object p1, p0, Landroid/support/v7/widget/ha;->a:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {p1}, Landroid/support/v7/widget/SeslDatePicker;->g(Landroid/support/v7/widget/SeslDatePicker;)Landroid/widget/ImageButton;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/widget/ImageButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Landroid/support/v7/widget/ha;->a:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {p1}, Landroid/support/v7/widget/SeslDatePicker;->f(Landroid/support/v7/widget/SeslDatePicker;)Landroid/widget/ImageButton;

    move-result-object p1

    iget-object v3, p0, Landroid/support/v7/widget/ha;->a:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v3}, Landroid/support/v7/widget/SeslDatePicker;->j(Landroid/support/v7/widget/SeslDatePicker;)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    iget-object p1, p0, Landroid/support/v7/widget/ha;->a:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {p1}, Landroid/support/v7/widget/SeslDatePicker;->g(Landroid/support/v7/widget/SeslDatePicker;)Landroid/widget/ImageButton;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/widget/ImageButton;->setAlpha(F)V

    iget-object p1, p0, Landroid/support/v7/widget/ha;->a:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {p1}, Landroid/support/v7/widget/SeslDatePicker;->g(Landroid/support/v7/widget/SeslDatePicker;)Landroid/widget/ImageButton;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    iget-object p1, p0, Landroid/support/v7/widget/ha;->a:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {p1}, Landroid/support/v7/widget/SeslDatePicker;->g(Landroid/support/v7/widget/SeslDatePicker;)Landroid/widget/ImageButton;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/ImageButton;->setFocusable(Z)V

    iget-object p1, p0, Landroid/support/v7/widget/ha;->a:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {p1}, Landroid/support/v7/widget/SeslDatePicker;->f(Landroid/support/v7/widget/SeslDatePicker;)Landroid/widget/ImageButton;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setAlpha(F)V

    iget-object p1, p0, Landroid/support/v7/widget/ha;->a:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {p1}, Landroid/support/v7/widget/SeslDatePicker;->f(Landroid/support/v7/widget/SeslDatePicker;)Landroid/widget/ImageButton;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    iget-object p1, p0, Landroid/support/v7/widget/ha;->a:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {p1}, Landroid/support/v7/widget/SeslDatePicker;->f(Landroid/support/v7/widget/SeslDatePicker;)Landroid/widget/ImageButton;

    move-result-object p1

    goto :goto_0

    :cond_7
    iget-object p1, p0, Landroid/support/v7/widget/ha;->a:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {p1}, Landroid/support/v7/widget/SeslDatePicker;->b(Landroid/support/v7/widget/SeslDatePicker;)Ljava/util/Calendar;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    move-result p1

    iget-object v0, p0, Landroid/support/v7/widget/ha;->a:Landroid/support/v7/widget/SeslDatePicker;

    invoke-virtual {v0}, Landroid/support/v7/widget/SeslDatePicker;->getMaxYear()I

    move-result v0

    if-gt p1, v0, :cond_a

    iget-object p1, p0, Landroid/support/v7/widget/ha;->a:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {p1}, Landroid/support/v7/widget/SeslDatePicker;->b(Landroid/support/v7/widget/SeslDatePicker;)Ljava/util/Calendar;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    move-result p1

    iget-object v0, p0, Landroid/support/v7/widget/ha;->a:Landroid/support/v7/widget/SeslDatePicker;

    invoke-virtual {v0}, Landroid/support/v7/widget/SeslDatePicker;->getMinYear()I

    move-result v0

    if-ge p1, v0, :cond_8

    goto :goto_2

    :cond_8
    new-instance p1, Landroid/text/SpannableString;

    iget-object v0, p0, Landroid/support/v7/widget/ha;->a:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v0}, Landroid/support/v7/widget/SeslDatePicker;->b(Landroid/support/v7/widget/SeslDatePicker;)Ljava/util/Calendar;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/support/v7/widget/SeslDatePicker;->a(Landroid/support/v7/widget/SeslDatePicker;Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v0, Landroid/text/style/UnderlineSpan;

    invoke-direct {v0}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-virtual {p1}, Landroid/text/SpannableString;->length()I

    move-result v2

    invoke-virtual {p1, v0, v1, v2, v1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    iget-object v0, p0, Landroid/support/v7/widget/ha;->a:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v0}, Landroid/support/v7/widget/SeslDatePicker;->c(Landroid/support/v7/widget/SeslDatePicker;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Landroid/support/v7/widget/ha;->a:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v0}, Landroid/support/v7/widget/SeslDatePicker;->d(Landroid/support/v7/widget/SeslDatePicker;)I

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Landroid/support/v7/widget/ha;->a:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v0}, Landroid/support/v7/widget/SeslDatePicker;->e(Landroid/support/v7/widget/SeslDatePicker;)Landroid/content/Context;

    move-result-object v0

    sget v1, Landroid/support/v7/b/j;->sesl_date_picker_switch_to_wheel_description:I

    goto :goto_1

    :cond_9
    iget-object v0, p0, Landroid/support/v7/widget/ha;->a:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v0}, Landroid/support/v7/widget/SeslDatePicker;->e(Landroid/support/v7/widget/SeslDatePicker;)Landroid/content/Context;

    move-result-object v0

    sget v1, Landroid/support/v7/b/j;->sesl_date_picker_switch_to_calendar_description:I

    :goto_1
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/widget/ha;->a:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v1}, Landroid/support/v7/widget/SeslDatePicker;->c(Landroid/support/v7/widget/SeslDatePicker;)Landroid/widget/TextView;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_a
    :goto_2
    return-void
.end method
