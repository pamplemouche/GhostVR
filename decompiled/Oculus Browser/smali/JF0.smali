.class public final synthetic LJF0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lorg/chromium/base/Callback;


# instance fields
.field public final a:Lorg/chromium/ui/base/WindowAndroid;


# direct methods
.method public constructor <init>(Lorg/chromium/ui/base/WindowAndroid;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LJF0;->a:Lorg/chromium/ui/base/WindowAndroid;

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, LJF0;->a:Lorg/chromium/ui/base/WindowAndroid;

    check-cast p1, Landroid/content/Intent;

    if-eqz p1, :cond_0

    .line 1
    invoke-static {v0, p1}, Lorg/chromium/chrome/browser/signin/SigninUtils;->a(Lorg/chromium/ui/base/WindowAndroid;Landroid/content/Intent;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Landroid/content/Intent;

    const-string v1, "android.settings.SYNC_SETTINGS"

    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-static {v0, p1}, Lorg/chromium/chrome/browser/signin/SigninUtils;->a(Lorg/chromium/ui/base/WindowAndroid;Landroid/content/Intent;)Z

    :goto_0
    return-void
.end method
