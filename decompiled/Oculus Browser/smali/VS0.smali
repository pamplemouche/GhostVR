.class public abstract LVS0;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Lorg/chromium/components/crash/CrashKeys;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lorg/chromium/components/crash/CrashKeys;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/chromium/components/crash/CrashKeys;-><init>(LUS0;)V

    sput-object v0, LVS0;->a:Lorg/chromium/components/crash/CrashKeys;

    return-void
.end method
