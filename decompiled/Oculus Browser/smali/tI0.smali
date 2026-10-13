.class public LtI0;
.super LUH0;
.source "PG"


# instance fields
.field public final synthetic a:LwI0;


# direct methods
.method public constructor <init>(LwI0;)V
    .locals 0

    .line 1
    iput-object p1, p0, LtI0;->a:LwI0;

    invoke-direct {p0}, LUH0;-><init>()V

    return-void
.end method


# virtual methods
.method public onNewTabCreated(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 3

    .line 1
    iget-object v0, p0, LtI0;->a:LwI0;

    invoke-virtual {v0}, LrI0;->a()Lorg/chromium/chrome/browser/tabmodel/TabModel;

    move-result-object v0

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->getId()I

    move-result v1

    invoke-static {v0, v1}, LFI0;->a(LdI0;I)Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, LtI0;->a:LwI0;

    .line 3
    iget-object v0, v0, LwI0;->m:Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;

    .line 4
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->getId()I

    move-result v1

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;->a(ILjava/lang/String;)V

    .line 5
    :cond_0
    iget-object v0, p1, Lorg/chromium/chrome/browser/tab/Tab;->t:Lorg/chromium/content_public/browser/LoadUrlParams;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 6
    iget-object v0, p0, LtI0;->a:LwI0;

    .line 7
    iget-object v0, v0, LwI0;->i:LYI0;

    .line 8
    invoke-virtual {v0, p1}, LYI0;->a(Lorg/chromium/chrome/browser/tab/Tab;)V

    .line 9
    invoke-virtual {v0}, LYI0;->d()V

    :cond_2
    return-void
.end method
