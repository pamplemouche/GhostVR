.class public final synthetic LZP0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field public final w:Lorg/chromium/chrome/browser/widget/ChromeTextInputLayout;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/widget/ChromeTextInputLayout;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LZP0;->w:Lorg/chromium/chrome/browser/widget/ChromeTextInputLayout;

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 4

    iget-object p1, p0, LZP0;->w:Lorg/chromium/chrome/browser/widget/ChromeTextInputLayout;

    .line 1
    iget-object v0, p1, Lorg/chromium/chrome/browser/widget/ChromeTextInputLayout;->A:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LeQ0;

    .line 2
    check-cast v1, LbR0;

    .line 3
    iget-object v1, v1, LbR0;->a:LeR0;

    if-eqz p2, :cond_1

    .line 4
    iput-boolean v2, v1, LeR0;->E:Z

    goto :goto_0

    .line 5
    :cond_1
    iget-boolean v3, v1, LeR0;->E:Z

    if-eqz v3, :cond_0

    .line 6
    iget-object v3, v1, LeR0;->w:LTQ0;

    invoke-virtual {v3}, LTQ0;->d()Z

    move-result v3

    xor-int/2addr v2, v3

    invoke-virtual {v1, v2}, LeR0;->a(Z)V

    goto :goto_0

    .line 7
    :cond_2
    invoke-virtual {p1, v2}, Lorg/chromium/chrome/browser/widget/ChromeTextInputLayout;->a(Z)V

    return-void
.end method
