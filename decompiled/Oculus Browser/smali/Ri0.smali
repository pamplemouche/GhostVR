.class public LRi0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lorg/chromium/base/Callback;


# instance fields
.field public final synthetic a:Lorg/chromium/chrome/browser/tab/Tab;

.field public final synthetic b:LpH0;

.field public final synthetic c:LpI0;

.field public final synthetic d:LxI0;

.field public final synthetic e:Lorg/chromium/content_public/browser/WebContents;

.field public final synthetic f:Lg11;


# direct methods
.method public constructor <init>(LWi0;Lorg/chromium/chrome/browser/tab/Tab;LpH0;LpI0;LxI0;Lorg/chromium/content_public/browser/WebContents;Lg11;)V
    .locals 0

    .line 1
    iput-object p2, p0, LRi0;->a:Lorg/chromium/chrome/browser/tab/Tab;

    iput-object p3, p0, LRi0;->b:LpH0;

    iput-object p4, p0, LRi0;->c:LpI0;

    iput-object p5, p0, LRi0;->d:LxI0;

    iput-object p6, p0, LRi0;->e:Lorg/chromium/content_public/browser/WebContents;

    iput-object p7, p0, LRi0;->f:Lg11;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Lorg/chromium/chrome/browser/ChromeActivity;

    .line 2
    iget-object p1, p0, LRi0;->a:Lorg/chromium/chrome/browser/tab/Tab;

    iget-object v0, p0, LRi0;->b:LpH0;

    .line 3
    iget-object p1, p1, Lorg/chromium/chrome/browser/tab/Tab;->i:LWT;

    invoke-virtual {p1, v0}, LWT;->b(Ljava/lang/Object;)Z

    .line 4
    iget-object p1, p0, LRi0;->c:LpI0;

    iget-object v0, p0, LRi0;->d:LxI0;

    check-cast p1, LrI0;

    .line 5
    iget-object p1, p1, LrI0;->d:LWT;

    invoke-virtual {p1, v0}, LWT;->b(Ljava/lang/Object;)Z

    .line 6
    iget-object p1, p0, LRi0;->e:Lorg/chromium/content_public/browser/WebContents;

    iget-object v0, p0, LRi0;->f:Lg11;

    invoke-interface {p1, v0}, Lorg/chromium/content_public/browser/WebContents;->b(Lg11;)V

    return-void
.end method
