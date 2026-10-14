.class Landroid/support/v4/view/bn;
.super Landroid/support/v4/view/bm;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v4/view/bm;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Landroid/support/v4/view/ab;)V
    .locals 0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/support/v4/view/ab;->a()Ljava/lang/Object;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    check-cast p2, Landroid/view/PointerIcon;

    check-cast p2, Landroid/view/PointerIcon;

    invoke-virtual {p1, p2}, Landroid/view/View;->setPointerIcon(Landroid/view/PointerIcon;)V

    return-void
.end method
