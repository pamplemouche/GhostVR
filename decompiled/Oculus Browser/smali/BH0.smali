.class public final synthetic LBH0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final w:Lorg/chromium/chrome/browser/tab/TabWebContentsDelegateAndroid;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/tab/TabWebContentsDelegateAndroid;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LBH0;->w:Lorg/chromium/chrome/browser/tab/TabWebContentsDelegateAndroid;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, LBH0;->w:Lorg/chromium/chrome/browser/tab/TabWebContentsDelegateAndroid;

    .line 1
    iget-object v1, v0, Lorg/chromium/chrome/browser/tab/TabWebContentsDelegateAndroid;->b:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/tab/Tab;->m()LVT;

    move-result-object v1

    .line 2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LpH0;

    iget-object v3, v0, Lorg/chromium/chrome/browser/tab/TabWebContentsDelegateAndroid;->b:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-interface {v2, v3}, LpH0;->onCloseContents(Lorg/chromium/chrome/browser/tab/Tab;)V

    goto :goto_0

    :cond_0
    return-void
.end method
