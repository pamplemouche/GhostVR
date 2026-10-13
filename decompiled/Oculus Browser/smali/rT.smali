.class public abstract LrT;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static a:Lorg/chromium/base/BuildInfo;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lorg/chromium/base/BuildInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/chromium/base/BuildInfo;-><init>(LqT;)V

    sput-object v0, LrT;->a:Lorg/chromium/base/BuildInfo;

    return-void
.end method
