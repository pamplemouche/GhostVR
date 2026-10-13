.class final Lcom/oculus/secure/trustedapp/AllFamilyTrustedSignatures$2;
.super Ljava/util/HashSet;
.source "AllFamilyTrustedSignatures.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/secure/trustedapp/AllFamilyTrustedSignatures;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashSet",
        "<",
        "Lcom/oculus/secure/trustedapp/AppSignatureHash;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 179
    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    .line 181
    sget-object v0, Lcom/oculus/secure/trustedapp/AllFamilyTrustedSignatures;->FB_INHOUSE:Ljava/util/Set;

    invoke-virtual {p0, v0}, Lcom/oculus/secure/trustedapp/AllFamilyTrustedSignatures$2;->addAll(Ljava/util/Collection;)Z

    .line 182
    return-void
.end method
