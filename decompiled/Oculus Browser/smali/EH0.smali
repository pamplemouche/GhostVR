.class public LEH0;
.super LSG0;
.source "PG"


# instance fields
.field public final synthetic w:LFH0;


# direct methods
.method public constructor <init>(LFH0;)V
    .locals 0

    .line 1
    iput-object p1, p0, LEH0;->w:LFH0;

    invoke-direct {p0}, LSG0;-><init>()V

    return-void
.end method


# virtual methods
.method public onContentChanged(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 3

    .line 1
    iget-object v0, p0, LEH0;->w:LFH0;

    .line 2
    iget-object v1, v0, LFH0;->w:Lorg/chromium/content_public/browser/WebContents;

    .line 3
    iget-object v2, p1, Lorg/chromium/chrome/browser/tab/Tab;->g:Lorg/chromium/content_public/browser/WebContents;

    if-ne v1, v2, :cond_0

    return-void

    :cond_0
    if-eqz v1, :cond_1

    .line 4
    invoke-virtual {v0, v1}, LFH0;->a(Lorg/chromium/content_public/browser/WebContents;)V

    .line 5
    :cond_1
    iget-object v0, p0, LEH0;->w:LFH0;

    .line 6
    iget-object p1, p1, Lorg/chromium/chrome/browser/tab/Tab;->g:Lorg/chromium/content_public/browser/WebContents;

    .line 7
    iput-object p1, v0, LFH0;->w:Lorg/chromium/content_public/browser/WebContents;

    if-eqz p1, :cond_2

    .line 8
    invoke-virtual {v0, p1}, LFH0;->b(Lorg/chromium/content_public/browser/WebContents;)V

    :cond_2
    return-void
.end method

.method public onDestroyed(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 0

    .line 1
    iget-object p1, p1, Lorg/chromium/chrome/browser/tab/Tab;->i:LWT;

    invoke-virtual {p1, p0}, LWT;->b(Ljava/lang/Object;)Z

    return-void
.end method
