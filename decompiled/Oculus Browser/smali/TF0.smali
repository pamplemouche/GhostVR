.class public LTF0;
.super LzQ0;
.source "PG"


# instance fields
.field public final synthetic w:Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;

.field public final synthetic x:Lorg/chromium/chrome/browser/snackbar/BottomContainer;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/snackbar/BottomContainer;Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;)V
    .locals 0

    .line 1
    iput-object p1, p0, LTF0;->x:Lorg/chromium/chrome/browser/snackbar/BottomContainer;

    iput-object p2, p0, LTF0;->w:Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;

    invoke-direct {p0}, LzQ0;-><init>()V

    return-void
.end method


# virtual methods
.method public a(FF)V
    .locals 3

    .line 1
    iget-object p2, p0, LTF0;->w:Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;

    invoke-virtual {p2}, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->j()F

    move-result p2

    cmpl-float p2, p1, p2

    if-lez p2, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p2, p0, LTF0;->x:Lorg/chromium/chrome/browser/snackbar/BottomContainer;

    iget-object v0, p0, LTF0;->w:Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;

    .line 3
    iget v1, v0, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->G:I

    int-to-float v1, v1

    mul-float v1, v1, p1

    neg-float v1, v1

    .line 4
    iput v1, p2, Lorg/chromium/chrome/browser/snackbar/BottomContainer;->y:F

    const/4 v2, 0x0

    cmpl-float p1, p1, v2

    if-lez p1, :cond_1

    .line 5
    iget p1, v0, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->B:I

    int-to-float p1, p1

    add-float/2addr v1, p1

    .line 6
    iput v1, p2, Lorg/chromium/chrome/browser/snackbar/BottomContainer;->y:F

    .line 7
    :cond_1
    iget-object p1, p0, LTF0;->x:Lorg/chromium/chrome/browser/snackbar/BottomContainer;

    .line 8
    iget p2, p1, Lorg/chromium/chrome/browser/snackbar/BottomContainer;->x:F

    .line 9
    invoke-virtual {p1, p2}, Lorg/chromium/chrome/browser/snackbar/BottomContainer;->setTranslationY(F)V

    const/4 p1, 0x0

    throw p1
.end method
