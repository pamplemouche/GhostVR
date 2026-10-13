.class public final synthetic LkC0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lorg/chromium/base/Callback;


# instance fields
.field public final a:Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LkC0;->a:Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, LkC0;->a:Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;

    check-cast p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, v0, Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;->F0:LyC0;

    iget-object v0, v0, Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;->J0:Ljava/lang/Runnable;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    new-instance v1, LoC0;

    invoke-direct {v1, v0}, LoC0;-><init>(Ljava/lang/Runnable;)V

    .line 3
    invoke-virtual {p1, v1}, LyC0;->a(LxC0;)V

    :cond_0
    return-void

    :cond_1
    const/4 p1, 0x0

    throw p1
.end method
