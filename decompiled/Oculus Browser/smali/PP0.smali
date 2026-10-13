.class public LPP0;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static a:LPP0;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()LPP0;
    .locals 1

    .line 1
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->c()V

    .line 2
    sget-object v0, LPP0;->a:LPP0;

    if-nez v0, :cond_1

    .line 3
    invoke-static {}, Lorg/chromium/chrome/browser/AppHooks;->get()Lorg/chromium/chrome/browser/AppHooks;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    new-instance v0, LPP0;

    invoke-direct {v0}, LPP0;-><init>()V

    .line 5
    sput-object v0, LPP0;->a:LPP0;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 6
    throw v0

    .line 7
    :cond_1
    :goto_0
    sget-object v0, LPP0;->a:LPP0;

    return-object v0
.end method
