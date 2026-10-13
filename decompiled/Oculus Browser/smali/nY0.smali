.class public LnY0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LbY0;


# instance fields
.field public final a:Lorg/chromium/content/browser/input/SelectPopup;

.field public final b:Lgc1;

.field public c:Z


# direct methods
.method public constructor <init>(Lorg/chromium/content/browser/input/SelectPopup;Landroid/content/Context;Landroid/view/View;Ljava/util/List;[IZLorg/chromium/content_public/browser/WebContents;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, LnY0;->a:Lorg/chromium/content/browser/input/SelectPopup;

    .line 3
    new-instance p1, Lgc1;

    invoke-direct {p1, p2, p3}, Lgc1;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object p1, p0, LnY0;->b:Lgc1;

    .line 4
    new-instance p3, LkY0;

    invoke-direct {p3, p0}, LkY0;-><init>(LnY0;)V

    .line 5
    iget-object p1, p1, Lgc1;->w:Lkc1;

    invoke-interface {p1, p3}, Lkc1;->a(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 6
    array-length p1, p5

    if-lez p1, :cond_0

    const/4 p1, 0x0

    .line 7
    aget p1, p5, p1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    .line 8
    :goto_0
    iget-object p3, p0, LnY0;->b:Lgc1;

    .line 9
    iget-object p3, p3, Lgc1;->w:Lkc1;

    invoke-interface {p3, p1}, Lkc1;->a(I)V

    .line 10
    iget-object p1, p0, LnY0;->b:Lgc1;

    new-instance p3, Lcc1;

    const/4 p5, 0x0

    invoke-direct {p3, p2, p4, p5}, Lcc1;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/util/Set;)V

    .line 11
    iget-object p1, p1, Lgc1;->w:Lkc1;

    invoke-interface {p1, p3}, Lkc1;->a(Landroid/widget/ListAdapter;)V

    .line 12
    iget-object p1, p0, LnY0;->b:Lgc1;

    .line 13
    iget-object p1, p1, Lgc1;->w:Lkc1;

    invoke-interface {p1, p6}, Lkc1;->a(Z)V

    .line 14
    iget-object p1, p0, LnY0;->b:Lgc1;

    new-instance p2, LlY0;

    invoke-direct {p2, p0}, LlY0;-><init>(LnY0;)V

    .line 15
    iget-object p1, p1, Lgc1;->w:Lkc1;

    invoke-interface {p1, p2}, Lkc1;->a(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 16
    invoke-static {p7}, Lorg/chromium/content/browser/GestureListenerManagerImpl;->a(Lorg/chromium/content_public/browser/WebContents;)Lorg/chromium/content/browser/GestureListenerManagerImpl;

    move-result-object p1

    .line 17
    new-instance p2, LmY0;

    invoke-direct {p2, p0}, LmY0;-><init>(LnY0;)V

    invoke-interface {p1, p2}, LH01;->a(LI01;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, LnY0;->b:Lgc1;

    .line 2
    iget-object v0, v0, Lgc1;->w:Lkc1;

    invoke-interface {v0}, Lkc1;->d()V

    return-void
.end method

.method public a(Z)V
    .locals 2

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 3
    iget-object p1, p0, LnY0;->b:Lgc1;

    .line 4
    iget-object p1, p1, Lgc1;->w:Lkc1;

    invoke-interface {p1}, Lkc1;->dismiss()V

    const/4 p1, 0x0

    .line 5
    iget-boolean v1, p0, LnY0;->c:Z

    if-eqz v1, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    iget-object v1, p0, LnY0;->a:Lorg/chromium/content/browser/input/SelectPopup;

    invoke-virtual {v1, p1}, Lorg/chromium/content/browser/input/SelectPopup;->a([I)V

    .line 7
    iput-boolean v0, p0, LnY0;->c:Z

    goto :goto_0

    .line 8
    :cond_1
    iput-boolean v0, p0, LnY0;->c:Z

    .line 9
    iget-object p1, p0, LnY0;->b:Lgc1;

    .line 10
    iget-object p1, p1, Lgc1;->w:Lkc1;

    invoke-interface {p1}, Lkc1;->dismiss()V

    :goto_0
    return-void
.end method
