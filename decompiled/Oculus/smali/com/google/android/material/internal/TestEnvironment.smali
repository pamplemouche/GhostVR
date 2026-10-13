.class public abstract Lcom/google/android/material/internal/TestEnvironment;
.super Ljava/lang/Object;
.source "TestEnvironment.java"


# static fields
.field private static volatile sIsTest:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const/4 v0, 0x0

    sput v0, Lcom/google/android/material/internal/TestEnvironment;->sIsTest:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static hasClass(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 56
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    const/4 v0, 0x1

    .line 59
    :goto_0
    return v0

    .line 58
    :catch_0
    move-exception v0

    .line 59
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isCamTest()Z
    .locals 1

    .prologue
    .line 51
    const-string v0, "com.facebook.cam.CamInstrumentationTestRunner"

    invoke-static {v0}, Lcom/google/android/material/internal/TestEnvironment;->hasClass(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isE2eTest()Z
    .locals 1

    .prologue
    .line 42
    const-string v0, "io.selendroid.client.SelendroidDriver"

    invoke-static {v0}, Lcom/google/android/material/internal/TestEnvironment;->hasClass(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "io.selendroid.server.UncaughtExceptionHandling"

    .line 43
    invoke-static {v0}, Lcom/google/android/material/internal/TestEnvironment;->hasClass(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 42
    :goto_0
    return v0

    .line 43
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isTest()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 17
    sget v2, Lcom/google/android/material/internal/TestEnvironment;->sIsTest:I

    if-eqz v2, :cond_1

    .line 18
    sget v2, Lcom/google/android/material/internal/TestEnvironment;->sIsTest:I

    if-ne v2, v0, :cond_0

    .line 32
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 18
    goto :goto_0

    .line 21
    :cond_1
    const-class v2, Lcom/google/android/material/internal/TestEnvironment;

    monitor-enter v2

    .line 22
    :try_start_0
    sget v3, Lcom/google/android/material/internal/TestEnvironment;->sIsTest:I

    if-eqz v3, :cond_3

    .line 23
    sget v3, Lcom/google/android/material/internal/TestEnvironment;->sIsTest:I

    if-ne v3, v0, :cond_2

    :goto_1
    monitor-exit v2

    goto :goto_0

    .line 33
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    move v0, v1

    .line 23
    goto :goto_1

    .line 26
    :cond_3
    :try_start_1
    const-string v3, "org.junit.Test"

    invoke-static {v3}, Lcom/google/android/material/internal/TestEnvironment;->hasClass(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-static {}, Lcom/google/android/material/internal/TestEnvironment;->isE2eTest()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-static {}, Lcom/google/android/material/internal/TestEnvironment;->isCamTest()Z

    move-result v3

    if-nez v3, :cond_4

    .line 27
    const/4 v3, 0x1

    sput v3, Lcom/google/android/material/internal/TestEnvironment;->sIsTest:I

    .line 32
    :goto_2
    sget v3, Lcom/google/android/material/internal/TestEnvironment;->sIsTest:I

    if-ne v3, v0, :cond_5

    :goto_3
    monitor-exit v2

    goto :goto_0

    .line 29
    :cond_4
    const/4 v3, -0x1

    sput v3, Lcom/google/android/material/internal/TestEnvironment;->sIsTest:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :cond_5
    move v0, v1

    .line 32
    goto :goto_3
.end method
