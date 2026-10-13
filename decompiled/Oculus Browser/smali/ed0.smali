.class public Led0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field public final synthetic w:Landroid/view/View;

.field public final synthetic x:Lid0;


# direct methods
.method public constructor <init>(Lid0;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Led0;->x:Lid0;

    iput-object p2, p0, Led0;->w:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 1
    iget-object p1, p0, Led0;->x:Lid0;

    .line 2
    iget-object p1, p1, Lid0;->b:Landroid/os/Handler;

    const/4 p2, 0x1

    .line 3
    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    sub-int/2addr p5, p3

    sub-int/2addr p9, p7

    if-gt p5, p9, :cond_0

    return-void

    .line 4
    :cond_0
    iget-object p1, p0, Led0;->x:Lid0;

    .line 5
    iget-object p1, p1, Lid0;->c:Lhd0;

    .line 6
    check-cast p1, LYc0;

    .line 7
    iget-object p3, p1, LYc0;->a:Lbd0;

    invoke-virtual {p3}, Lkd0;->isOverlayVideoMode()Z

    move-result p3

    const/4 p4, 0x0

    if-nez p3, :cond_2

    iget-object p3, p1, LYc0;->a:Lbd0;

    invoke-virtual {p3}, Lbd0;->b()Z

    iget-object p1, p1, LYc0;->a:Lbd0;

    if-eqz p1, :cond_1

    .line 8
    invoke-static {}, Lorg/chromium/chrome/browser/vr/VrModuleProvider;->a()LJO0;

    move-result-object p1

    invoke-virtual {p1}, LJO0;->a()Z

    move-result p1

    if-nez p1, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    throw p1

    :cond_2
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_4

    .line 9
    iget-object p1, p0, Led0;->x:Lid0;

    .line 10
    iget-object p3, p1, Lid0;->i:Lmf1;

    if-nez p3, :cond_3

    const p3, 0x7f13034e

    .line 11
    iget-object p5, p1, Lid0;->a:Landroid/view/Window;

    .line 12
    invoke-virtual {p5}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object p5

    .line 13
    invoke-static {p5, p3, p2}, Lmf1;->a(Landroid/content/Context;II)Lmf1;

    move-result-object p2

    iput-object p2, p1, Lid0;->i:Lmf1;

    const/16 p3, 0x31

    .line 14
    iget-object p2, p2, Lmf1;->a:Landroid/widget/Toast;

    invoke-virtual {p2, p3, p4, p4}, Landroid/widget/Toast;->setGravity(III)V

    .line 15
    :cond_3
    iget-object p1, p1, Lid0;->i:Lmf1;

    .line 16
    iget-object p1, p1, Lmf1;->a:Landroid/widget/Toast;

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 17
    :cond_4
    iget-object p1, p0, Led0;->w:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method
