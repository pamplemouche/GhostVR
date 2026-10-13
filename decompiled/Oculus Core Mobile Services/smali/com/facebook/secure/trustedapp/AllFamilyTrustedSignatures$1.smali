.class final Lcom/facebook/secure/trustedapp/AllFamilyTrustedSignatures$1;
.super Ljava/util/HashSet;
.source "AllFamilyTrustedSignatures.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/secure/trustedapp/AllFamilyTrustedSignatures;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashSet",
        "<",
        "Lcom/facebook/secure/trustedapp/AppSignatureHash;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 232
    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    .line 234
    sget-object v0, Lcom/facebook/secure/trustedapp/AllFamilyTrustedSignatures;->FB_DEBUG:Ljava/util/Set;

    invoke-virtual {p0, v0}, Lcom/facebook/secure/trustedapp/AllFamilyTrustedSignatures$1;->addAll(Ljava/util/Collection;)Z

    .line 235
    sget-object v0, Lcom/facebook/secure/trustedapp/AllFamilyTrustedSignatures;->FB_INHOUSE:Ljava/util/Set;

    invoke-virtual {p0, v0}, Lcom/facebook/secure/trustedapp/AllFamilyTrustedSignatures$1;->addAll(Ljava/util/Collection;)Z

    .line 236
    sget-object v0, Lcom/facebook/secure/trustedapp/AllFamilyTrustedSignatures;->FB_PROD:Ljava/util/Set;

    invoke-virtual {p0, v0}, Lcom/facebook/secure/trustedapp/AllFamilyTrustedSignatures$1;->addAll(Ljava/util/Collection;)Z

    .line 237
    sget-object v0, Lcom/facebook/secure/trustedapp/AllFamilyTrustedSignatures;->FB_FAMILY_PROD:Ljava/util/Set;

    invoke-virtual {p0, v0}, Lcom/facebook/secure/trustedapp/AllFamilyTrustedSignatures$1;->addAll(Ljava/util/Collection;)Z

    .line 238
    return-void
.end method
