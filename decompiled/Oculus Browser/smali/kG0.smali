.class public LkG0;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static a:LkG0;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()LkG0;
    .locals 1

    .line 1
    sget-object v0, LkG0;->a:LkG0;

    if-nez v0, :cond_1

    .line 2
    invoke-static {}, Lorg/chromium/chrome/browser/AppHooks;->get()Lorg/chromium/chrome/browser/AppHooks;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, LkG0;

    invoke-direct {v0}, LkG0;-><init>()V

    .line 4
    sput-object v0, LkG0;->a:LkG0;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 5
    throw v0

    .line 6
    :cond_1
    :goto_0
    sget-object v0, LkG0;->a:LkG0;

    return-object v0
.end method
