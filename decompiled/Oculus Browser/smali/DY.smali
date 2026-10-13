.class public LDY;
.super LzQ0;
.source "PG"


# instance fields
.field public w:I

.field public x:I

.field public final synthetic y:Lorg/chromium/chrome/browser/ChromeActivity;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lorg/chromium/chrome/browser/ChromeActivity;

    return-void
.end method

.method public constructor <init>(Lorg/chromium/chrome/browser/ChromeActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, LDY;->y:Lorg/chromium/chrome/browser/ChromeActivity;

    invoke-direct {p0}, LzQ0;-><init>()V

    const/4 p1, -0x1

    .line 2
    iput p1, p0, LDY;->w:I

    .line 3
    iput p1, p0, LDY;->x:I

    return-void
.end method


# virtual methods
.method public a(FF)V
    .locals 1

    .line 12
    iget-object p1, p0, LDY;->y:Lorg/chromium/chrome/browser/ChromeActivity;

    .line 13
    iget-object p1, p1, Lorg/chromium/chrome/browser/ChromeActivity;->C0:LZF0;

    .line 14
    iget-object p2, p1, LZF0;->z:LVF0;

    invoke-virtual {p2}, LVF0;->b()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_1

    .line 15
    :cond_0
    iget-object p2, p1, LZF0;->z:LVF0;

    .line 16
    :goto_0
    invoke-virtual {p2}, LVF0;->b()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 17
    invoke-virtual {p2, v0}, LVF0;->a(Z)LUF0;

    goto :goto_0

    .line 18
    :cond_1
    invoke-virtual {p1}, LZF0;->a()V

    :goto_1
    return-void
.end method

.method public a(I)V
    .locals 1

    .line 1
    iget-object p1, p0, LDY;->y:Lorg/chromium/chrome/browser/ChromeActivity;

    .line 2
    iget-object p1, p1, Lorg/chromium/chrome/browser/ChromeActivity;->E0:LtQ0;

    .line 3
    iget-object p1, p1, LtQ0;->w:Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;

    .line 4
    iget-object p1, p1, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->N:LsQ0;

    if-eqz p1, :cond_0

    .line 5
    invoke-interface {p1}, LsQ0;->c()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 6
    :cond_0
    iget-object p1, p0, LDY;->y:Lorg/chromium/chrome/browser/ChromeActivity;

    .line 7
    iget-object v0, p1, Lorg/chromium/chrome/browser/ChromeActivity;->H0:Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;

    .line 8
    invoke-virtual {p1, v0}, Lorg/chromium/chrome/browser/ChromeActivity;->a(Landroid/view/View;)V

    .line 9
    iget-object p1, p0, LDY;->y:Lorg/chromium/chrome/browser/ChromeActivity;

    invoke-virtual {p1}, LBg0;->o()LBd1;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 10
    iget-object p1, p0, LDY;->y:Lorg/chromium/chrome/browser/ChromeActivity;

    invoke-virtual {p1}, LBg0;->o()LBd1;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, LBd1;->b(I)I

    move-result p1

    iput p1, p0, LDY;->w:I

    .line 11
    iget-object p1, p0, LDY;->y:Lorg/chromium/chrome/browser/ChromeActivity;

    invoke-virtual {p1}, LBg0;->o()LBd1;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, LBd1;->b(I)I

    move-result p1

    iput p1, p0, LDY;->x:I

    :cond_1
    return-void
.end method

.method public c(I)V
    .locals 3

    .line 1
    iget p1, p0, LDY;->w:I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    iget p1, p0, LDY;->x:I

    if-ne p1, v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p1, p0, LDY;->y:Lorg/chromium/chrome/browser/ChromeActivity;

    .line 3
    iget-object v1, p1, Lorg/chromium/chrome/browser/ChromeActivity;->H0:Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;

    .line 4
    invoke-virtual {p1, v1}, Lorg/chromium/chrome/browser/ChromeActivity;->b(Landroid/view/View;)V

    .line 5
    iget-object p1, p0, LDY;->y:Lorg/chromium/chrome/browser/ChromeActivity;

    invoke-virtual {p1}, LBg0;->o()LBd1;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 6
    iget-object p1, p0, LDY;->y:Lorg/chromium/chrome/browser/ChromeActivity;

    invoke-virtual {p1}, LBg0;->o()LBd1;

    move-result-object p1

    const/4 v1, 0x0

    iget v2, p0, LDY;->w:I

    .line 7
    iget-object p1, p1, LBd1;->i:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Laf1;

    invoke-virtual {p1, v2}, Laf1;->a(I)V

    .line 8
    iget-object p1, p0, LDY;->y:Lorg/chromium/chrome/browser/ChromeActivity;

    invoke-virtual {p1}, LBg0;->o()LBd1;

    move-result-object p1

    const/4 v1, 0x1

    iget v2, p0, LDY;->x:I

    .line 9
    iget-object p1, p1, LBd1;->i:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Laf1;

    invoke-virtual {p1, v2}, Laf1;->a(I)V

    .line 10
    :cond_1
    iput v0, p0, LDY;->w:I

    .line 11
    iput v0, p0, LDY;->x:I

    return-void
.end method
