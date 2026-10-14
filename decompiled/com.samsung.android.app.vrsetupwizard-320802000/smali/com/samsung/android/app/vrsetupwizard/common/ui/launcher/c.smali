.class Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/c;
.super Landroid/database/DataSetObserver;


# instance fields
.field final synthetic a:Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/c;->a:Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 3

    invoke-super {p0}, Landroid/database/DataSetObserver;->onChanged()V

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/c;->a:Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;->a(Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/c;->a:Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;->b(Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/c;->a:Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;

    invoke-virtual {v1}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;->getChildCount()I

    move-result v1

    if-ne v0, v1, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/c;->a:Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;

    invoke-static {v1}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;->e(Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;->a(Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;I)I

    move-result v1

    if-ge v1, v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/c;->a:Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;->j(Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;)I

    move-result v1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/c;->a:Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;

    const/4 v1, -0x1

    :goto_0
    invoke-static {v0, v1}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;->b(Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;I)I

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/c;->a:Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;->k(Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;)V

    return-void
.end method
