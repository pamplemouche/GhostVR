.class public Lcom/oculus/browser/CrashTesting;
.super Ljava/lang/Object;
.source "PG"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static throwJNIExceptionForTesting()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/Error;

    const-string v1, "JNI Exception for testing"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method
