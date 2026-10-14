.class Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v4/view/ce;


# instance fields
.field final synthetic a:Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/a;->a:Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/a;->a:Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;->a(Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/aa;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/a;->a:Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;->b(Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;)I

    move-result v0

    if-gtz v0, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/a;->a:Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;->c(Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/a;->a:Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;->c(Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/a;->a:Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;->c(Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/a;->a:Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;->d(Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/a;->a:Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;->d(Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/a;->a:Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;->d(Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/a;->a:Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;->e(Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;->a(Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;I)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/a;->a:Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;

    invoke-static {v1, p1}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;->a(Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;I)I

    move-result v1

    if-ne v0, v1, :cond_3

    return-void

    :cond_3
    const v2, 0x7f06016b

    if-ltz v0, :cond_4

    iget-object v3, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/a;->a:Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;

    invoke-virtual {v3, v0}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v3, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/a;->a:Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;

    invoke-virtual {v3}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/a;->a:Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;

    invoke-static {v4}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;->f(Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/a;->a:Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;

    invoke-static {v4}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;->g(Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v2}, Lcom/samsung/android/app/vrsetupwizard/common/c/o;->c(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v3, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/a;->a:Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;

    invoke-static {v3}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;->c(Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;)Landroid/animation/Animator;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/a;->a:Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;->c(Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/a;->a:Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/a;->a:Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;

    invoke-virtual {v1}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/a;->a:Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;

    invoke-static {v3}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;->h(Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/a;->a:Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;

    invoke-static {v3}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;->g(Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/samsung/android/app/vrsetupwizard/common/c/o;->c(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/a;->a:Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;

    invoke-static {v1}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;->d(Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/a;->a:Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;->d(Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    :cond_5
    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/a;->a:Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;

    invoke-static {v0, p1}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;->b(Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;I)I

    :cond_6
    :goto_0
    return-void
.end method

.method public a(IFI)V
    .locals 0

    return-void
.end method

.method public b(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/a;->a:Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;

    invoke-static {v0, p1}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;->c(Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;I)V

    return-void
.end method
