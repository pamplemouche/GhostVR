.class public LZ40;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;


# instance fields
.field public final synthetic w:Landroid/view/View;

.field public final synthetic x:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, LZ40;->x:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;

    iput-object p2, p0, LZ40;->w:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalFocusChanged(Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, LZ40;->w:Landroid/view/View;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, LZ40;->x:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->a(I)V

    :cond_0
    return-void
.end method
