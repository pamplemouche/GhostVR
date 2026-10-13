.class public Lcom/oculus/horizon/spatialai/GuardianAPI;
.super Ljava/lang/Object;
.source "GuardianAPI.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-string v0, "guardianapi-jni"

    invoke-static {v0}, Lcom/facebook/soloader/SoLoader;->loadLibrary(Ljava/lang/String;)Z

    .line 13
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    invoke-virtual {p0, p1}, Lcom/oculus/horizon/spatialai/GuardianAPI;->initializeRsApi(Ljava/lang/Object;)Z

    .line 19
    return-void
.end method


# virtual methods
.method public native exportGuardianJson([B)[B
.end method

.method public exportGuardianJsonAsString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 23
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/spatialai/GuardianAPI;->exportGuardianJson([B)[B

    move-result-object v1

    .line 25
    if-nez v1, :cond_0

    .line 26
    const/4 v0, 0x0

    .line 29
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/String;

    sget-object v2, Lcom/google/common/base/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    goto :goto_0
.end method

.method public native importGuardianJson([BIZ)Z
.end method

.method public importGuardianJsonAsString(Ljava/lang/String;Z)Z
    .locals 2

    .prologue
    .line 33
    if-nez p1, :cond_0

    .line 34
    const/4 v0, 0x0

    .line 37
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    invoke-virtual {p0, v0, v1, p2}, Lcom/oculus/horizon/spatialai/GuardianAPI;->importGuardianJson([BIZ)Z

    move-result v0

    goto :goto_0
.end method

.method public native initializeRsApi(Ljava/lang/Object;)Z
.end method
