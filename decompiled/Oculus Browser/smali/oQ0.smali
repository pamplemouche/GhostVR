.class public LoQ0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field public final synthetic w:Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;)V
    .locals 0

    .line 1
    iput-object p1, p0, LoQ0;->w:Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    sub-int/2addr p5, p3

    sub-int/2addr p9, p7

    if-ne p5, p9, :cond_0

    sub-int/2addr p4, p2

    sub-int/2addr p8, p6

    if-ne p4, p8, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object p1, p0, LoQ0;->w:Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;

    .line 2
    iget-object p2, p1, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->D:LyQ0;

    .line 3
    iget-boolean p2, p2, LyQ0;->z:Z

    if-nez p2, :cond_3

    .line 4
    iget-object p1, p1, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->M:Lbd0;

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    .line 5
    invoke-virtual {p1}, Lkd0;->getPersistentFullscreenMode()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, LoQ0;->w:Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;

    .line 6
    iget-boolean p3, p1, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->U:Z

    if-eqz p3, :cond_1

    .line 7
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->h()I

    move-result p3

    .line 8
    invoke-virtual {p1, p3, p2, p2}, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->a(IZI)V

    goto :goto_0

    .line 9
    :cond_1
    iget-object p1, p0, LoQ0;->w:Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->m()Z

    move-result p1

    if-eqz p1, :cond_2

    return-void

    .line 10
    :cond_2
    iget-object p1, p0, LoQ0;->w:Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;

    .line 11
    iget p3, p1, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->J:I

    .line 12
    invoke-virtual {p1, p3, p2, p2}, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->a(IZI)V

    :cond_3
    :goto_0
    return-void
.end method
