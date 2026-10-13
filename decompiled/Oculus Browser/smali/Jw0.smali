.class public final synthetic LJw0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lorg/chromium/base/Callback;


# instance fields
.field public final a:LXw0;


# direct methods
.method public constructor <init>(LXw0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LJw0;->a:LXw0;

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, LJw0;->a:LXw0;

    check-cast p1, Landroid/view/View;

    .line 1
    iget-object p1, v0, LXw0;->y:LRw0;

    check-cast p1, Lyv0;

    .line 2
    iget-object v0, p1, Lyv0;->D:Lorg/chromium/content_public/browser/WebContents;

    invoke-static {v0}, Lorg/chromium/chrome/browser/ChromeActivity;->a(Lorg/chromium/content_public/browser/WebContents;)Lorg/chromium/chrome/browser/ChromeActivity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p1, Lyv0;->K:LHu0;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, LHu0;->a(I)V

    const/4 v0, 0x1

    const-string v1, "Unable to find Chrome activity."

    .line 4
    invoke-virtual {p1, v1, v0}, Lyv0;->a(Ljava/lang/String;I)V

    goto :goto_0

    .line 5
    :cond_0
    const-class p1, Lorg/chromium/chrome/browser/preferences/MainPreferences;

    const/4 v1, 0x0

    .line 6
    invoke-static {v0, p1, v1}, Lorg/chromium/chrome/browser/preferences/PreferencesLauncher;->a(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)V

    :goto_0
    return-void
.end method
