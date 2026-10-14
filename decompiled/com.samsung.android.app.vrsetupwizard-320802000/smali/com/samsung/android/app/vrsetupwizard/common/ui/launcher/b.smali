.class Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/k;


# instance fields
.field final synthetic a:Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/b;->a:Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/b;->a:Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;->i(Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;)Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/b;->a:Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;->i(Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;)Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v0

    if-gtz v0, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/b;->a:Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;->c(Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/b;->a:Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;->c(Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/b;->a:Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;->c(Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/b;->a:Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;->d(Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/b;->a:Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;->d(Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/b;->a:Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;->d(Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/b;->a:Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;->e(Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;)I

    move-result v0

    if-ne v0, p1, :cond_3

    return-void

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/b;->a:Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;->e(Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;)I

    move-result v0

    const v1, 0x7f06016b

    const/4 v2, 0x0

    if-ltz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/b;->a:Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;->e(Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_4

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v3, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/b;->a:Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;

    invoke-virtual {v3}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/b;->a:Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;

    invoke-static {v4}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;->f(Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/b;->a:Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;

    invoke-virtual {v4}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v3, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/b;->a:Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;

    invoke-static {v3}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;->c(Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;)Landroid/animation/Animator;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/b;->a:Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;->c(Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/b;->a:Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v2, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/b;->a:Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;

    invoke-virtual {v2}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/b;->a:Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;

    invoke-static {v3}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;->h(Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/b;->a:Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;

    invoke-virtual {v3}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/b;->a:Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;

    invoke-static {v1}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;->d(Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/b;->a:Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;->d(Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    :cond_5
    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/b;->a:Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;

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
    .locals 0

    return-void
.end method
