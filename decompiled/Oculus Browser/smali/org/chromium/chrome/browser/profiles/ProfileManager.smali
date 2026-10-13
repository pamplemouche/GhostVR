.class public Lorg/chromium/chrome/browser/profiles/ProfileManager;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static a:LWT;

.field public static b:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, LWT;

    invoke-direct {v0}, LWT;-><init>()V

    sput-object v0, Lorg/chromium/chrome/browser/profiles/ProfileManager;->a:LWT;

    return-void
.end method

.method public static onProfileAdded(Lorg/chromium/chrome/browser/profiles/Profile;)V
    .locals 2

    const/4 v0, 0x1

    .line 1
    sput-boolean v0, Lorg/chromium/chrome/browser/profiles/ProfileManager;->b:Z

    .line 2
    sget-object v0, Lorg/chromium/chrome/browser/profiles/ProfileManager;->a:LWT;

    invoke-virtual {v0}, LWT;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LTC0;

    .line 3
    invoke-interface {v1, p0}, LTC0;->a(Lorg/chromium/chrome/browser/profiles/Profile;)V

    goto :goto_0

    :cond_0
    return-void
.end method
