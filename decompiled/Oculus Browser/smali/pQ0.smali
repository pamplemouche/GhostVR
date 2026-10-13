.class public LpQ0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lad0;


# instance fields
.field public final synthetic w:Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;)V
    .locals 0

    .line 1
    iput-object p1, p0, LpQ0;->w:Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public a(IIZ)V
    .locals 0

    .line 4
    iget-object p1, p0, LpQ0;->w:Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;

    .line 5
    iget p2, p1, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->J:I

    if-nez p2, :cond_0

    return-void

    .line 6
    :cond_0
    iget p2, p1, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->I:F

    const/4 p3, 0x1

    .line 7
    invoke-virtual {p1, p3}, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->a(I)F

    move-result p1

    cmpl-float p1, p2, p1

    if-lez p1, :cond_1

    return-void

    .line 8
    :cond_1
    iget-object p1, p0, LpQ0;->w:Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;

    .line 9
    iget p2, p1, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->I:F

    .line 10
    invoke-virtual {p1, p2, p3}, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->a(FI)V

    return-void
.end method

.method public a(Z)V
    .locals 2

    .line 1
    iget-object p1, p0, LpQ0;->w:Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;

    .line 2
    iget-boolean v0, p1, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->U:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3
    invoke-virtual {p1, v0, v1, v1}, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->a(IZI)V

    :cond_0
    return-void
.end method

.method public b(I)V
    .locals 0

    return-void
.end method
