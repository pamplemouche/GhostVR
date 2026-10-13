.class public final synthetic Lav0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lorg/chromium/chrome/browser/favicon/FaviconHelper$FaviconImageCallback;


# instance fields
.field public final w:Lyv0;

.field public final x:LDa0;


# direct methods
.method public constructor <init>(Lyv0;LDa0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lav0;->w:Lyv0;

    iput-object p2, p0, Lav0;->x:LDa0;

    return-void
.end method


# virtual methods
.method public onFaviconAvailable(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 4

    iget-object p2, p0, Lav0;->w:Lyv0;

    iget-object v0, p0, Lav0;->x:LDa0;

    .line 1
    iget-object v1, p2, Lyv0;->M:Lc91;

    if-eqz v1, :cond_0

    if-nez p1, :cond_0

    check-cast v1, Lp91;

    invoke-virtual {v1}, Lp91;->e()V

    .line 2
    :cond_0
    iget-object p2, p2, Lyv0;->o0:LXw0;

    if-eqz p2, :cond_1

    if-eqz p1, :cond_1

    .line 3
    iget-object v1, p2, LXw0;->G:Landroid/view/ViewGroup;

    const v2, 0x7f0b01ef

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lorg/chromium/chrome/browser/payments/ui/PaymentRequestHeader;

    const v3, 0x7f0b020b

    .line 4
    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 5
    iget-object p2, p2, LXw0;->H:Lorg/chromium/chrome/browser/payments/ui/PaymentRequestUiErrorView;

    .line 6
    invoke-virtual {p2, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lorg/chromium/chrome/browser/payments/ui/PaymentRequestHeader;

    .line 7
    invoke-virtual {p2, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 8
    :cond_1
    invoke-virtual {v0}, LDa0;->a()V

    return-void
.end method
