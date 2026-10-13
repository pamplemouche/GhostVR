.class public Ll20;
.super Lg11;
.source "PG"


# instance fields
.field public a:Z

.field public final synthetic b:Lorg/chromium/content_public/browser/WebContents;

.field public final synthetic c:Ln20;


# direct methods
.method public constructor <init>(Ln20;Lorg/chromium/content_public/browser/WebContents;Lorg/chromium/content_public/browser/WebContents;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ll20;->c:Ln20;

    iput-object p3, p0, Ll20;->b:Lorg/chromium/content_public/browser/WebContents;

    invoke-direct {p0, p2}, Lg11;-><init>(Lorg/chromium/content_public/browser/WebContents;)V

    return-void
.end method


# virtual methods
.method public didFinishNavigation(Lorg/chromium/content_public/browser/NavigationHandle;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Ll20;->a:Z

    if-eqz v0, :cond_0

    .line 2
    iget-boolean v0, p1, Lorg/chromium/content_public/browser/NavigationHandle;->e:Z

    if-eqz v0, :cond_0

    .line 3
    iget-boolean v0, p1, Lorg/chromium/content_public/browser/NavigationHandle;->a:Z

    if-eqz v0, :cond_0

    .line 4
    iget-boolean p1, p1, Lorg/chromium/content_public/browser/NavigationHandle;->b:Z

    if-nez p1, :cond_0

    .line 5
    iget-object p1, p0, Ll20;->c:Ln20;

    .line 6
    iget-object p1, p1, Ln20;->d:[Lorg/chromium/content_public/browser/MessagePort;

    if-eqz p1, :cond_0

    .line 7
    iget-object p1, p0, Ll20;->b:Lorg/chromium/content_public/browser/WebContents;

    invoke-interface {p1, p0}, Lorg/chromium/content_public/browser/WebContents;->b(Lg11;)V

    .line 8
    iget-object p1, p0, Ll20;->c:Ln20;

    .line 9
    invoke-virtual {p1}, Ln20;->a()V

    return-void

    :cond_0
    const/4 p1, 0x1

    .line 10
    iput-boolean p1, p0, Ll20;->a:Z

    return-void
.end method

.method public documentLoadedInFrame(JZ)V
    .locals 0

    if-eqz p3, :cond_1

    .line 1
    iget-object p1, p0, Ll20;->c:Ln20;

    .line 2
    iget-object p2, p1, Ln20;->d:[Lorg/chromium/content_public/browser/MessagePort;

    if-eqz p2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object p2, p0, Ll20;->b:Lorg/chromium/content_public/browser/WebContents;

    .line 4
    invoke-virtual {p1, p2}, Ln20;->a(Lorg/chromium/content_public/browser/WebContents;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public renderProcessGone(Z)V
    .locals 0

    .line 1
    iget-object p1, p0, Ll20;->c:Ln20;

    .line 2
    invoke-virtual {p1}, Ln20;->a()V

    return-void
.end method
