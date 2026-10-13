.class public Lorg/chromium/chrome/browser/ApplicationLifetime;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static a:LWT;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, LWT;

    invoke-direct {v0}, LWT;-><init>()V

    sput-object v0, Lorg/chromium/chrome/browser/ApplicationLifetime;->a:LWT;

    return-void
.end method

.method public static terminate(Z)V
    .locals 2

    .line 1
    sget-object v0, Lorg/chromium/chrome/browser/ApplicationLifetime;->a:LWT;

    invoke-virtual {v0}, LWT;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LnY;

    .line 2
    invoke-interface {v1, p0}, LnY;->onTerminate(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method
