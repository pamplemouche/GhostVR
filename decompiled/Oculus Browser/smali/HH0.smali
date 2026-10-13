.class public LHH0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LDd1;


# instance fields
.field public final synthetic w:LIH0;


# direct methods
.method public constructor <init>(LIH0;)V
    .locals 0

    .line 1
    iput-object p1, p0, LHH0;->w:LIH0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lle1;I)V
    .locals 1

    .line 1
    iget-object p1, p0, LHH0;->w:LIH0;

    iget-object v0, p1, LIH0;->y:LJH0;

    .line 2
    iget-object v0, v0, Lorg/chromium/chrome/browser/tab/TabWebContentsDelegateAndroid;->b:Lorg/chromium/chrome/browser/tab/Tab;

    .line 3
    iget-object v0, v0, Lorg/chromium/chrome/browser/tab/Tab;->i:LWT;

    invoke-virtual {v0, p1}, LWT;->b(Ljava/lang/Object;)Z

    .line 4
    iget-object p1, p0, LHH0;->w:LIH0;

    iget-object p1, p1, LIH0;->y:LJH0;

    .line 5
    iget-object p1, p1, Lorg/chromium/chrome/browser/tab/TabWebContentsDelegateAndroid;->b:Lorg/chromium/chrome/browser/tab/Tab;

    .line 6
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->r()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x1

    if-eq p2, p1, :cond_1

    const/4 p1, 0x7

    if-eq p2, p1, :cond_2

    const/16 p1, 0x8

    if-eq p2, p1, :cond_2

    .line 7
    iget-object p1, p0, LHH0;->w:LIH0;

    iget-object p1, p1, LIH0;->y:LJH0;

    .line 8
    iget-object p1, p1, Lorg/chromium/chrome/browser/tab/TabWebContentsDelegateAndroid;->b:Lorg/chromium/chrome/browser/tab/Tab;

    .line 9
    iget-object p1, p1, Lorg/chromium/chrome/browser/tab/Tab;->g:Lorg/chromium/content_public/browser/WebContents;

    .line 10
    invoke-interface {p1}, Lorg/chromium/content_public/browser/WebContents;->g()Lorg/chromium/content_public/browser/NavigationController;

    move-result-object p1

    invoke-interface {p1}, Lorg/chromium/content_public/browser/NavigationController;->k()V

    goto :goto_0

    .line 11
    :cond_1
    iget-object p1, p0, LHH0;->w:LIH0;

    iget-object p1, p1, LIH0;->y:LJH0;

    .line 12
    iget-object p1, p1, Lorg/chromium/chrome/browser/tab/TabWebContentsDelegateAndroid;->b:Lorg/chromium/chrome/browser/tab/Tab;

    .line 13
    iget-object p1, p1, Lorg/chromium/chrome/browser/tab/Tab;->g:Lorg/chromium/content_public/browser/WebContents;

    .line 14
    invoke-interface {p1}, Lorg/chromium/content_public/browser/WebContents;->g()Lorg/chromium/content_public/browser/NavigationController;

    move-result-object p1

    invoke-interface {p1}, Lorg/chromium/content_public/browser/NavigationController;->m()V

    :cond_2
    :goto_0
    return-void
.end method

.method public b(Lle1;I)V
    .locals 1

    const/4 v0, 0x1

    if-nez p2, :cond_0

    .line 1
    iget-object p2, p0, LHH0;->w:LIH0;

    .line 2
    iget-object p2, p2, LIH0;->w:LBd1;

    .line 3
    invoke-virtual {p2, p1, v0}, LBd1;->a(Lle1;I)V

    goto :goto_0

    :cond_0
    if-ne p2, v0, :cond_1

    .line 4
    iget-object p2, p0, LHH0;->w:LIH0;

    .line 5
    iget-object p2, p2, LIH0;->w:LBd1;

    const/4 v0, 0x2

    .line 6
    invoke-virtual {p2, p1, v0}, LBd1;->a(Lle1;I)V

    :cond_1
    :goto_0
    return-void
.end method
