.class public Lcom/facebook/rti/common/util/FbAppCertificates;
.super Ljava/lang/Object;
.source "FbAppCertificates.java"


# static fields
.field private static final SIGNATURE_HASHES_DEBUG:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final SIGNATURE_HASHES_RELEASE:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 24
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "ijxLJi1yGs1JpL-X1SExmchvork"

    aput-object v2, v1, v4

    const-string v2, "e6fv6XFRr-tXEDJmsSANhagF19Y"

    aput-object v2, v1, v5

    const-string/jumbo v2, "xW-31ZG6ZwTfBH_Zj1NTcv6gAhE"

    aput-object v2, v1, v6

    const/4 v2, 0x3

    const-string v3, "OKD31QX-GP7GT780Psqq8xDb15k"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "Sr9mhPKOEwo6NysnYn803dZ3UiY"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "5IMQjt1hTC_xqzPM0QypzwhjD9g"

    aput-object v3, v1, v2

    .line 26
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/facebook/rti/common/util/FbAppCertificates;->SIGNATURE_HASHES_RELEASE:Ljava/util/Set;

    .line 34
    new-instance v0, Ljava/util/HashSet;

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "Xo8WBi6jzSxKDVR4drqm84yr9iU"

    aput-object v2, v1, v4

    const-string v2, "7XE60X540nq3JXIiFpcVSgM8diY"

    aput-object v2, v1, v5

    .line 36
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/facebook/rti/common/util/FbAppCertificates;->SIGNATURE_HASHES_DEBUG:Ljava/util/Set;

    .line 34
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isTrustedSignatureHash(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 45
    invoke-static {p0}, Lcom/facebook/rti/common/util/RtiBuildInfoUtil;->getInstance(Landroid/content/Context;)Lcom/facebook/rti/common/util/RtiBuildInfoUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/rti/common/util/RtiBuildInfoUtil;->isProdBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    sget-object v0, Lcom/facebook/rti/common/util/FbAppCertificates;->SIGNATURE_HASHES_RELEASE:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 48
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/facebook/rti/common/util/FbAppCertificates;->SIGNATURE_HASHES_DEBUG:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method
