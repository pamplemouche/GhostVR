.class public LuL0;
.super LzQ0;
.source "PG"


# instance fields
.field public final synthetic w:LvL0;


# direct methods
.method public constructor <init>(LvL0;)V
    .locals 0

    .line 1
    iput-object p1, p0, LuL0;->w:LvL0;

    invoke-direct {p0}, LzQ0;-><init>()V

    return-void
.end method


# virtual methods
.method public b(I)V
    .locals 1

    if-eqz p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object p1, p0, LuL0;->w:LvL0;

    .line 2
    iget-object p1, p1, LvL0;->f:Lorg/chromium/base/Callback;

    const/4 v0, 0x0

    .line 3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/chromium/base/Callback;->onResult(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, LuL0;->w:LvL0;

    .line 5
    iget-object v0, p1, LvL0;->c:LtQ0;

    .line 6
    iget-object v0, v0, LtQ0;->w:Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;

    .line 7
    iget-object p1, p1, LvL0;->g:LuQ0;

    .line 8
    iget-object v0, v0, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->x:LWT;

    invoke-virtual {v0, p1}, LWT;->b(Ljava/lang/Object;)Z

    return-void
.end method

.method public c(I)V
    .locals 1

    .line 1
    iget-object v0, p0, LuL0;->w:LvL0;

    .line 2
    iget-object v0, v0, LvL0;->f:Lorg/chromium/base/Callback;

    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/chromium/base/Callback;->onResult(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, LuL0;->w:LvL0;

    .line 5
    iget-object v0, p1, LvL0;->c:LtQ0;

    .line 6
    iget-object v0, v0, LtQ0;->w:Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;

    .line 7
    iget-object p1, p1, LvL0;->g:LuQ0;

    .line 8
    iget-object v0, v0, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->x:LWT;

    invoke-virtual {v0, p1}, LWT;->b(Ljava/lang/Object;)Z

    return-void
.end method
