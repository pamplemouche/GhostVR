.class public LxW0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LK01;
.implements LxU;


# instance fields
.field public final w:Lorg/chromium/ui/base/EventForwarder;

.field public x:Z


# direct methods
.method public synthetic constructor <init>(Lorg/chromium/content_public/browser/WebContents;LuW0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p2, 0x1

    .line 2
    iput-boolean p2, p0, LxW0;->x:Z

    .line 3
    invoke-interface {p1}, Lorg/chromium/content_public/browser/WebContents;->K()Lorg/chromium/ui/base/EventForwarder;

    move-result-object p2

    iput-object p2, p0, LxW0;->w:Lorg/chromium/ui/base/EventForwarder;

    .line 4
    invoke-static {p1}, Lorg/chromium/content/browser/input/ImeAdapterImpl;->a(Lorg/chromium/content_public/browser/WebContents;)Lorg/chromium/content/browser/input/ImeAdapterImpl;

    move-result-object p1

    .line 5
    iget-object p1, p1, Lorg/chromium/content/browser/input/ImeAdapterImpl;->E:Ljava/util/List;

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static a(Landroid/view/MotionEvent;I)F
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result p0

    .line 2
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const v0, 0x3e4ccccd    # 0.2f

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    neg-float p0, p0

    return p0
.end method


# virtual methods
.method public a(Landroid/view/KeyEvent;)V
    .locals 0

    return-void
.end method

.method public b(ZZ)V
    .locals 0

    xor-int/lit8 p1, p1, 0x1

    .line 1
    iput-boolean p1, p0, LxW0;->x:Z

    return-void
.end method

.method public c()V
    .locals 0

    return-void
.end method

.method public destroy()V
    .locals 0

    return-void
.end method
