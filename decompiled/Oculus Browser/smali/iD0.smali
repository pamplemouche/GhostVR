.class public LiD0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lorg/chromium/base/Callback;


# instance fields
.field public final synthetic a:Lorg/chromium/chrome/browser/searchwidget/SearchActivity;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/searchwidget/SearchActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, LiD0;->a:Lorg/chromium/chrome/browser/searchwidget/SearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    .line 2
    iget-object v0, p0, LiD0;->a:Lorg/chromium/chrome/browser/searchwidget/SearchActivity;

    invoke-virtual {v0}, LBg0;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_2

    .line 3
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    iget-object p1, p0, LiD0;->a:Lorg/chromium/chrome/browser/searchwidget/SearchActivity;

    invoke-static {p1}, Lorg/chromium/chrome/browser/searchwidget/SearchActivity;->a(Lorg/chromium/chrome/browser/searchwidget/SearchActivity;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, LhD0;

    invoke-direct {v0, p0}, LhD0;-><init>(LiD0;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "searchwidget"

    const-string v1, "User failed to select a default search engine."

    .line 5
    invoke-static {v0, v1, p1}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 6
    iget-object p1, p0, LiD0;->a:Lorg/chromium/chrome/browser/searchwidget/SearchActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :goto_1
    return-void
.end method
