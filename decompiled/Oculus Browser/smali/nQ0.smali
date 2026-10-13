.class public LnQ0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field public w:I

.field public final synthetic x:Landroid/view/Window;

.field public final synthetic y:Lrc1;

.field public final synthetic z:Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;Landroid/view/Window;Lrc1;)V
    .locals 0

    .line 1
    iput-object p1, p0, LnQ0;->z:Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;

    iput-object p2, p0, LnQ0;->x:Landroid/view/Window;

    iput-object p3, p0, LnQ0;->y:Lrc1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 1
    iget-object p1, p0, LnQ0;->z:Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;

    .line 2
    iget p6, p1, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->F:I

    .line 3
    iget p7, p1, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->G:I

    sub-int/2addr p4, p2

    .line 4
    iput p4, p1, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->F:I

    sub-int/2addr p5, p3

    .line 5
    iput p5, p1, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->G:I

    const/4 p1, 0x0

    if-ne p6, p4, :cond_0

    if-eq p7, p5, :cond_2

    .line 6
    :cond_0
    iget-object p2, p0, LnQ0;->z:Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;

    .line 7
    iget p3, p2, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->J:I

    const/4 p4, 0x2

    if-ne p3, p4, :cond_1

    .line 8
    invoke-virtual {p2}, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->o()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 9
    iget-object p2, p0, LnQ0;->z:Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;

    const/4 p3, 0x3

    .line 10
    invoke-virtual {p2, p3, p1, p1}, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->a(IZI)V

    .line 11
    :cond_1
    iget-object p2, p0, LnQ0;->z:Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;

    const/high16 p3, -0x40800000    # -1.0f

    .line 12
    iput p3, p2, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->H:F

    .line 13
    :cond_2
    iget-object p2, p0, LnQ0;->z:Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;

    .line 14
    iget p2, p2, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->G:I

    .line 15
    iget-object p2, p0, LnQ0;->x:Landroid/view/Window;

    invoke-virtual {p2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p2

    iget-object p3, p0, LnQ0;->z:Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;

    .line 16
    iget-object p3, p3, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->y:Landroid/graphics/Rect;

    .line 17
    invoke-virtual {p2, p3}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 18
    iget-object p2, p0, LnQ0;->z:Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;

    .line 19
    iget-boolean p2, p2, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->U:Z

    if-eqz p2, :cond_3

    .line 20
    iget-object p2, p0, LnQ0;->x:Landroid/view/Window;

    invoke-virtual {p2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p2

    .line 21
    iget-object p3, p0, LnQ0;->z:Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;

    .line 22
    iget-object p3, p3, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->y:Landroid/graphics/Rect;

    .line 23
    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result p3

    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 24
    iget-object p3, p0, LnQ0;->z:Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;

    .line 25
    iget p3, p3, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->G:I

    sub-int p2, p3, p2

    goto :goto_0

    :cond_3
    const/4 p2, 0x0

    .line 26
    :goto_0
    iget p3, p0, LnQ0;->w:I

    if-eq p2, p3, :cond_4

    .line 27
    iget-object p3, p0, LnQ0;->z:Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;

    new-instance p4, LmQ0;

    invoke-direct {p4, p0, p2}, LmQ0;-><init>(LnQ0;I)V

    invoke-virtual {p3, p4}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    .line 28
    :cond_4
    iget-object p3, p0, LnQ0;->z:Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;

    .line 29
    iget p3, p3, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->G:I

    if-ne p7, p3, :cond_5

    .line 30
    iget p3, p0, LnQ0;->w:I

    if-eq p3, p2, :cond_7

    .line 31
    :cond_5
    iget-object p3, p0, LnQ0;->z:Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;

    .line 32
    iget-object p4, p3, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->D:LyQ0;

    .line 33
    iget-boolean p4, p4, LyQ0;->z:Z

    if-eqz p4, :cond_6

    .line 34
    iget-object p4, p0, LnQ0;->y:Lrc1;

    if-eqz p4, :cond_6

    .line 35
    invoke-virtual {p4, p3}, Lrc1;->a(Landroid/view/View;)Z

    goto :goto_1

    .line 36
    :cond_6
    iget-object p3, p0, LnQ0;->z:Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;

    .line 37
    invoke-virtual {p3}, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->e()V

    .line 38
    iget-object p3, p0, LnQ0;->z:Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;

    .line 39
    iget p4, p3, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->J:I

    .line 40
    invoke-virtual {p3, p4, p1, p1}, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->a(IZI)V

    .line 41
    :cond_7
    :goto_1
    iput p2, p0, LnQ0;->w:I

    return-void
.end method
