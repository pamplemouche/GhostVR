.class public Lcom/oculus/browser/TabModelManager$1;
.super LPH0;
.source "PG"


# instance fields
.field public final synthetic val$singleTabModelSelector:LaI0;


# direct methods
.method public constructor <init>(Landroid/content/Context;LeI0;Lorg/chromium/ui/base/WindowAndroid;LJh0;ZLaI0;)V
    .locals 0

    .line 1
    iput-object p6, p0, Lcom/oculus/browser/TabModelManager$1;->val$singleTabModelSelector:LaI0;

    invoke-direct {p0, p1, p2, p3, p5}, LPH0;-><init>(Landroid/content/Context;LeI0;Lorg/chromium/ui/base/WindowAndroid;Z)V

    return-void
.end method


# virtual methods
.method public createTabWithWebContents(Lorg/chromium/chrome/browser/tab/Tab;Lorg/chromium/content_public/browser/WebContents;ILjava/lang/String;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/oculus/browser/TabModelManager$1;->val$singleTabModelSelector:LaI0;

    invoke-virtual {v0}, LrI0;->a()Lorg/chromium/chrome/browser/tabmodel/TabModel;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, LdI0;->getTabAt(I)Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    if-eqz v0, :cond_1

    if-ne v0, p1, :cond_1

    const-string v2, "about:blank#blocked"

    .line 2
    invoke-virtual {v2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance p1, Lorg/chromium/content_public/browser/LoadUrlParams;

    .line 4
    invoke-direct {p1, p4, v1}, Lorg/chromium/content_public/browser/LoadUrlParams;-><init>(Ljava/lang/String;I)V

    .line 5
    invoke-virtual {v0, p1}, Lorg/chromium/chrome/browser/tab/Tab;->a(Lorg/chromium/content_public/browser/LoadUrlParams;)I

    .line 6
    invoke-interface {p2}, Lorg/chromium/content_public/browser/WebContents;->destroy()V

    const/4 p1, 0x1

    return p1

    .line 7
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2, p3, p4}, LPH0;->createTabWithWebContents(Lorg/chromium/chrome/browser/tab/Tab;Lorg/chromium/content_public/browser/WebContents;ILjava/lang/String;)Z

    move-result p1

    return p1
.end method
