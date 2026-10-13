.class public Ldd0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field public final synthetic w:Lorg/chromium/chrome/browser/tab/Tab;

.field public final synthetic x:Landroid/view/View;

.field public final synthetic y:Lid0;


# direct methods
.method public constructor <init>(Lid0;Lorg/chromium/chrome/browser/tab/Tab;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ldd0;->y:Lid0;

    iput-object p2, p0, Ldd0;->w:Lorg/chromium/chrome/browser/tab/Tab;

    iput-object p3, p0, Ldd0;->x:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    sub-int/2addr p5, p3

    sub-int/2addr p9, p7

    if-ge p5, p9, :cond_1

    .line 1
    iget-object p1, p0, Ldd0;->y:Lid0;

    .line 2
    iget-object p1, p1, Lid0;->c:Lhd0;

    .line 3
    iget-object p2, p0, Ldd0;->w:Lorg/chromium/chrome/browser/tab/Tab;

    check-cast p1, LYc0;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 4
    invoke-static {p2, p1, p1}, LgH0;->a(Lorg/chromium/chrome/browser/tab/Tab;IZ)V

    .line 5
    iget-object p1, p0, Ldd0;->x:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 6
    throw p1

    :cond_1
    :goto_0
    return-void
.end method
