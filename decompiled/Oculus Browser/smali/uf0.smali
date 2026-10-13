.class public Luf0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# instance fields
.field public final synthetic w:Lorg/chromium/chrome/browser/infobar/InfoBarContainer;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/infobar/InfoBarContainer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Luf0;->w:Lorg/chromium/chrome/browser/infobar/InfoBarContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Luf0;->w:Lorg/chromium/chrome/browser/infobar/InfoBarContainer;

    .line 2
    iget-object p1, p1, Lorg/chromium/chrome/browser/infobar/InfoBarContainer;->C:Lorg/chromium/chrome/browser/tab/Tab;

    .line 3
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->e()Lorg/chromium/chrome/browser/ChromeActivity;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/ChromeActivity;->p0()Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Luf0;->w:Lorg/chromium/chrome/browser/infobar/InfoBarContainer;

    .line 4
    iget-object v0, p1, Lorg/chromium/chrome/browser/infobar/InfoBarContainer;->J:LuQ0;

    if-nez v0, :cond_0

    .line 5
    new-instance v0, Ltf0;

    invoke-direct {v0, p0}, Ltf0;-><init>(Luf0;)V

    .line 6
    iput-object v0, p1, Lorg/chromium/chrome/browser/infobar/InfoBarContainer;->J:LuQ0;

    .line 7
    iget-object p1, p0, Luf0;->w:Lorg/chromium/chrome/browser/infobar/InfoBarContainer;

    .line 8
    iget-object p1, p1, Lorg/chromium/chrome/browser/infobar/InfoBarContainer;->C:Lorg/chromium/chrome/browser/tab/Tab;

    .line 9
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->e()Lorg/chromium/chrome/browser/ChromeActivity;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/ChromeActivity;->p0()Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;

    move-result-object p1

    iget-object v0, p0, Luf0;->w:Lorg/chromium/chrome/browser/infobar/InfoBarContainer;

    .line 10
    iget-object v0, v0, Lorg/chromium/chrome/browser/infobar/InfoBarContainer;->J:LuQ0;

    .line 11
    iget-object p1, p1, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->x:LWT;

    invoke-virtual {p1, v0}, LWT;->a(Ljava/lang/Object;)Z

    .line 12
    :cond_0
    iget-object p1, p0, Luf0;->w:Lorg/chromium/chrome/browser/infobar/InfoBarContainer;

    .line 13
    iget-object p1, p1, Lorg/chromium/chrome/browser/infobar/InfoBarContainer;->z:LWT;

    .line 14
    invoke-virtual {p1}, LWT;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lwf0;

    .line 15
    iget-object v1, p0, Luf0;->w:Lorg/chromium/chrome/browser/infobar/InfoBarContainer;

    .line 16
    iget-object v1, v1, Lorg/chromium/chrome/browser/infobar/InfoBarContainer;->y:Ljava/util/ArrayList;

    .line 17
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-interface {v0, v1}, Lwf0;->a(Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    return-void
.end method
