.class public LKq0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic w:Lorg/chromium/chrome/browser/omnibox/status/StatusView;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/omnibox/status/StatusView;)V
    .locals 0

    .line 1
    iput-object p1, p0, LKq0;->w:Lorg/chromium/chrome/browser/omnibox/status/StatusView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 3

    .line 1
    iget-object v0, p0, LKq0;->w:Lorg/chromium/chrome/browser/omnibox/status/StatusView;

    .line 2
    iget v1, v0, Lorg/chromium/chrome/browser/omnibox/status/StatusView;->K:I

    if-nez v1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 3
    :cond_0
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, LKq0;->w:Lorg/chromium/chrome/browser/omnibox/status/StatusView;

    .line 5
    iget v2, v2, Lorg/chromium/chrome/browser/omnibox/status/StatusView;->K:I

    .line 6
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 7
    invoke-static {v0, p1, v1}, Lmf1;->a(Landroid/content/Context;Landroid/view/View;Ljava/lang/CharSequence;)Z

    move-result p1

    return p1
.end method
