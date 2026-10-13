.class public Lorg/chromium/base/MemoryPressureListener;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:LWT;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, LWT;

    invoke-direct {v0}, LWT;-><init>()V

    sput-object v0, Lorg/chromium/base/MemoryPressureListener;->a:LWT;

    return-void
.end method

.method public static addNativeCallback()V
    .locals 2

    .line 1
    new-instance v0, LOT;

    invoke-direct {v0}, LOT;-><init>()V

    .line 2
    new-instance v1, LMT;

    invoke-direct {v1, v0}, LMT;-><init>(LNT;)V

    .line 3
    sget-object v0, Lorg/chromium/base/MemoryPressureListener;->a:LWT;

    invoke-virtual {v0, v1}, LWT;->a(Ljava/lang/Object;)Z

    return-void
.end method
