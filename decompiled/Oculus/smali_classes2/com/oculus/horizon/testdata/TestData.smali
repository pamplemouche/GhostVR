.class public Lcom/oculus/horizon/testdata/TestData;
.super Ljava/lang/Object;
.source "TestData.java"


# static fields
.field public static final TEST_EMAIL:Ljava/lang/String;

.field public static final TEST_PASSWORD:Ljava/lang/String;

.field public static final TEST_PIN:Ljava/lang/String;

.field public static final TEST_USER:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-string v0, ""

    .line 43
    invoke-static {v0}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    :goto_0
    sput-object v0, Lcom/oculus/horizon/testdata/TestData;->TEST_EMAIL:Ljava/lang/String;

    .line 45
    const-string v0, ""

    invoke-static {v0}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, ""

    :goto_1
    sput-object v0, Lcom/oculus/horizon/testdata/TestData;->TEST_USER:Ljava/lang/String;

    .line 46
    const-string v0, ""

    invoke-static {v0}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, ""

    :goto_2
    sput-object v0, Lcom/oculus/horizon/testdata/TestData;->TEST_PASSWORD:Ljava/lang/String;

    .line 47
    const-string v0, ""

    invoke-static {v0}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    :goto_3
    sput-object v0, Lcom/oculus/horizon/testdata/TestData;->TEST_PIN:Ljava/lang/String;

    return-void

    .line 43
    :cond_0
    const-string v0, "+0@oculus.com"

    goto :goto_0

    .line 45
    :cond_1
    const-string v0, "0"

    goto :goto_1

    .line 46
    :cond_2
    const-string v0, "n0t3st!!"

    goto :goto_2

    .line 47
    :cond_3
    const-string v0, "1234"

    goto :goto_3
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
