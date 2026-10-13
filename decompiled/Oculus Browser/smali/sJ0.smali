.class public LsJ0;
.super LUg;
.source "PG"


# instance fields
.field public final synthetic a:Lorg/chromium/chrome/browser/tasks/tab_management/TabListRecyclerView;


# direct methods
.method public synthetic constructor <init>(Lorg/chromium/chrome/browser/tasks/tab_management/TabListRecyclerView;LrJ0;)V
    .locals 0

    .line 1
    iput-object p1, p0, LsJ0;->a:Lorg/chromium/chrome/browser/tasks/tab_management/TabListRecyclerView;

    invoke-direct {p0}, LUg;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->computeVerticalScrollOffset()I

    move-result p2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 2
    iget-object p1, p0, LsJ0;->a:Lorg/chromium/chrome/browser/tasks/tab_management/TabListRecyclerView;

    invoke-virtual {p1, v0}, Lorg/chromium/chrome/browser/tasks/tab_management/TabListRecyclerView;->e(Z)V

    return-void

    :cond_0
    if-eqz p3, :cond_3

    .line 3
    iget p1, p1, Landroid/support/v7/widget/RecyclerView;->m0:I

    const/4 p3, 0x2

    if-ne p1, p3, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    iget-object p1, p0, LsJ0;->a:Lorg/chromium/chrome/browser/tasks/tab_management/TabListRecyclerView;

    if-lez p2, :cond_2

    const/4 v0, 0x1

    :cond_2
    invoke-virtual {p1, v0}, Lorg/chromium/chrome/browser/tasks/tab_management/TabListRecyclerView;->e(Z)V

    :cond_3
    :goto_0
    return-void
.end method
