.class public abstract Lcom/facebook/testenv/TestEnvironment;
.super Ljava/lang/Object;
.source "TestEnvironment.java"


# annotations
.annotation build Ljavax/annotation/concurrent/ThreadSafe;
.end annotation


# static fields
.field private static volatile sIsTest:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const/4 v0, 0x0

    sput v0, Lcom/facebook/testenv/TestEnvironment;->sIsTest:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static hasClass(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 62
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    const/4 v0, 0x1

    .line 65
    :goto_0
    return v0

    .line 64
    :catch_0
    move-exception v0

    .line 65
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isCamTest()Z
    .locals 1

    .prologue
    .line 57
    const-string v0, "com.facebook.cam.CamInstrumentationTestRunner"

    invoke-static {v0}, Lcom/facebook/testenv/TestEnvironment;->hasClass(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isE2eTest()Z
    .locals 1

    .prologue
    .line 48
    const-string v0, "io.selendroid.client.SelendroidDriver"

    invoke-static {v0}, Lcom/facebook/testenv/TestEnvironment;->hasClass(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "io.selendroid.server.UncaughtExceptionHandling"

    .line 49
    invoke-static {v0}, Lcom/facebook/testenv/TestEnvironment;->hasClass(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isTest()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 21
    sget v2, Lcom/facebook/testenv/TestEnvironment;->sIsTest:I

    if-eqz v2, :cond_1

    .line 22
    sget v2, Lcom/facebook/testenv/TestEnvironment;->sIsTest:I

    if-ne v2, v0, :cond_0

    .line 38
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 22
    goto :goto_0

    .line 25
    :cond_1
    const-class v2, Lcom/facebook/testenv/TestEnvironment;

    monitor-enter v2

    .line 26
    :try_start_0
    sget v3, Lcom/facebook/testenv/TestEnvironment;->sIsTest:I

    if-eqz v3, :cond_3

    .line 27
    sget v3, Lcom/facebook/testenv/TestEnvironment;->sIsTest:I

    if-ne v3, v0, :cond_2

    :goto_1
    monitor-exit v2

    goto :goto_0

    .line 39
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    move v0, v1

    .line 27
    goto :goto_1

    .line 30
    :cond_3
    :try_start_1
    invoke-static {}, Lcom/facebook/common/build/BuildConstants;->isInternalBuild()Z

    move-result v3

    if-nez v3, :cond_4

    .line 31
    const/4 v3, -0x1

    sput v3, Lcom/facebook/testenv/TestEnvironment;->sIsTest:I

    .line 38
    :goto_2
    sget v3, Lcom/facebook/testenv/TestEnvironment;->sIsTest:I

    if-ne v3, v0, :cond_6

    :goto_3
    monitor-exit v2

    goto :goto_0

    .line 32
    :cond_4
    const-string v3, "org.junit.Test"

    invoke-static {v3}, Lcom/facebook/testenv/TestEnvironment;->hasClass(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-static {}, Lcom/facebook/testenv/TestEnvironment;->isE2eTest()Z

    move-result v3

    if-nez v3, :cond_5

    invoke-static {}, Lcom/facebook/testenv/TestEnvironment;->isCamTest()Z

    move-result v3

    if-nez v3, :cond_5

    .line 33
    const/4 v3, 0x1

    sput v3, Lcom/facebook/testenv/TestEnvironment;->sIsTest:I

    goto :goto_2

    .line 35
    :cond_5
    const/4 v3, -0x1

    sput v3, Lcom/facebook/testenv/TestEnvironment;->sIsTest:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :cond_6
    move v0, v1

    .line 38
    goto :goto_3
.end method
