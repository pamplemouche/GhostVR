.class public LKk0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LQk0;


# instance fields
.field public final synthetic a:LLk0;


# direct methods
.method public constructor <init>(LLk0;)V
    .locals 0

    .line 1
    iput-object p1, p0, LKk0;->a:LLk0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/chromium/content_public/browser/WebContents;JFF)V
    .locals 0

    return-void
.end method

.method public a(Lorg/chromium/content_public/browser/WebContents;JIJJ)V
    .locals 0

    return-void
.end method

.method public a(Lorg/chromium/content_public/browser/WebContents;JJ)V
    .locals 0

    return-void
.end method

.method public a(Lorg/chromium/content_public/browser/WebContents;JJJ)V
    .locals 0

    return-void
.end method

.method public a(Lorg/chromium/content_public/browser/WebContents;JJJJ)V
    .locals 0

    return-void
.end method

.method public a(Lorg/chromium/content_public/browser/WebContents;JJJJJJJJ)V
    .locals 0

    return-void
.end method

.method public a(Lorg/chromium/content_public/browser/WebContents;JZ)V
    .locals 0

    return-void
.end method

.method public b(Lorg/chromium/content_public/browser/WebContents;JJJ)V
    .locals 0

    .line 1
    iget-object p2, p0, LKk0;->a:LLk0;

    .line 2
    iget-object p2, p2, LLk0;->a:Lorg/chromium/chrome/browser/ChromeActivity;

    .line 3
    invoke-virtual {p2}, Lorg/chromium/chrome/browser/ChromeActivity;->k0()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object p2

    if-eqz p2, :cond_1

    iget-object p2, p0, LKk0;->a:LLk0;

    .line 4
    iget-object p2, p2, LLk0;->a:Lorg/chromium/chrome/browser/ChromeActivity;

    .line 5
    invoke-virtual {p2}, Lorg/chromium/chrome/browser/ChromeActivity;->k0()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object p2

    .line 6
    iget-object p2, p2, Lorg/chromium/chrome/browser/tab/Tab;->g:Lorg/chromium/content_public/browser/WebContents;

    if-eqz p2, :cond_1

    .line 7
    iget-object p2, p0, LKk0;->a:LLk0;

    .line 8
    iget-object p2, p2, LLk0;->a:Lorg/chromium/chrome/browser/ChromeActivity;

    .line 9
    invoke-virtual {p2}, Lorg/chromium/chrome/browser/ChromeActivity;->k0()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object p2

    .line 10
    iget-object p2, p2, Lorg/chromium/chrome/browser/tab/Tab;->g:Lorg/chromium/content_public/browser/WebContents;

    .line 11
    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 12
    iget-object p1, p0, LKk0;->a:LLk0;

    const/4 p2, 0x2

    .line 13
    iget p3, p1, LLk0;->b:I

    if-ge p2, p3, :cond_0

    goto :goto_0

    .line 14
    :cond_0
    iput p2, p1, LLk0;->b:I

    :cond_1
    :goto_0
    return-void
.end method

.method public c(Lorg/chromium/content_public/browser/WebContents;JJJ)V
    .locals 0

    return-void
.end method
