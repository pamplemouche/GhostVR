.class public abstract LcS0;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static a:LXR0;

.field public static b:LNR0;


# direct methods
.method public static a(I)LLR0;
    .locals 1

    .line 8
    sget-object v0, LcS0;->b:LNR0;

    invoke-interface {v0, p0}, LNR0;->a(I)LLR0;

    move-result-object p0

    return-object p0
.end method

.method public static a()LXR0;
    .locals 3

    .line 1
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    .line 2
    sget-object v0, LcS0;->a:LXR0;

    if-nez v0, :cond_1

    .line 3
    new-instance v0, LjS0;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_0

    .line 4
    new-instance v1, LnS0;

    invoke-direct {v1}, LnS0;-><init>()V

    goto :goto_0

    .line 5
    :cond_0
    new-instance v1, LgS0;

    invoke-direct {v1}, LgS0;-><init>()V

    .line 6
    :goto_0
    new-instance v2, LZR0;

    invoke-direct {v2}, LZR0;-><init>()V

    invoke-direct {v0, v1, v2}, LjS0;-><init>(LaS0;LaS0;)V

    sput-object v0, LcS0;->a:LXR0;

    .line 7
    :cond_1
    sget-object v0, LcS0;->a:LXR0;

    return-object v0
.end method
