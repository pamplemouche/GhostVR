.class public final synthetic LtF0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final w:Lorg/chromium/chrome/browser/signin/SigninManager;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/signin/SigninManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LtF0;->w:Lorg/chromium/chrome/browser/signin/SigninManager;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, LtF0;->w:Lorg/chromium/chrome/browser/signin/SigninManager;

    .line 1
    iget-object v1, v0, Lorg/chromium/chrome/browser/signin/SigninManager;->l:LzF0;

    iget-object v1, v1, LzF0;->a:LyF0;

    const/4 v2, 0x0

    .line 2
    iput-object v2, v0, Lorg/chromium/chrome/browser/signin/SigninManager;->l:LzF0;

    if-eqz v1, :cond_0

    .line 3
    invoke-interface {v1}, LyF0;->a()V

    .line 4
    :cond_0
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/signin/SigninManager;->h()V

    .line 5
    iget-object v0, v0, Lorg/chromium/chrome/browser/signin/SigninManager;->f:LWT;

    invoke-virtual {v0}, LWT;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LxF0;

    .line 6
    invoke-interface {v1}, LxF0;->h()V

    goto :goto_0

    :cond_1
    return-void
.end method
