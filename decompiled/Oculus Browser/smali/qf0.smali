.class public Lqf0;
.super LSG0;
.source "PG"


# instance fields
.field public final synthetic w:Lorg/chromium/chrome/browser/infobar/InfoBarContainer;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/infobar/InfoBarContainer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lqf0;->w:Lorg/chromium/chrome/browser/infobar/InfoBarContainer;

    invoke-direct {p0}, LSG0;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityAttachmentChanged(Lorg/chromium/chrome/browser/tab/Tab;Z)V
    .locals 0

    if-eqz p2, :cond_0

    .line 1
    iget-object p1, p0, Lqf0;->w:Lorg/chromium/chrome/browser/infobar/InfoBarContainer;

    .line 2
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/infobar/InfoBarContainer;->b()V

    .line 3
    iget-object p1, p0, Lqf0;->w:Lorg/chromium/chrome/browser/infobar/InfoBarContainer;

    invoke-static {p1}, Lorg/chromium/chrome/browser/infobar/InfoBarContainer;->a(Lorg/chromium/chrome/browser/infobar/InfoBarContainer;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lqf0;->w:Lorg/chromium/chrome/browser/infobar/InfoBarContainer;

    .line 5
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/infobar/InfoBarContainer;->a()V

    :goto_0
    return-void
.end method

.method public onContentChanged(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lqf0;->w:Lorg/chromium/chrome/browser/infobar/InfoBarContainer;

    invoke-static {p1}, Lorg/chromium/chrome/browser/infobar/InfoBarContainer;->a(Lorg/chromium/chrome/browser/infobar/InfoBarContainer;)V

    return-void
.end method

.method public onDidFinishNavigation(Lorg/chromium/chrome/browser/tab/Tab;Lorg/chromium/content_public/browser/NavigationHandle;)V
    .locals 0

    .line 1
    iget-boolean p1, p2, Lorg/chromium/content_public/browser/NavigationHandle;->e:Z

    if-eqz p1, :cond_0

    .line 2
    iget-boolean p1, p2, Lorg/chromium/content_public/browser/NavigationHandle;->a:Z

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lqf0;->w:Lorg/chromium/chrome/browser/infobar/InfoBarContainer;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lorg/chromium/chrome/browser/infobar/InfoBarContainer;->b(Z)V

    :cond_0
    return-void
.end method
