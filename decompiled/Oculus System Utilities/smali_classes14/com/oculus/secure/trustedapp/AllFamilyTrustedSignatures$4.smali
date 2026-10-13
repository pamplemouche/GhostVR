.class final Lcom/oculus/secure/trustedapp/AllFamilyTrustedSignatures$4;
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
    .line 197
    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    .line 199
    sget-object v0, Lcom/oculus/secure/trustedapp/AllFamilyTrustedSignatures;->FB_PROD:Ljava/util/Set;

    invoke-virtual {p0, v0}, Lcom/oculus/secure/trustedapp/AllFamilyTrustedSignatures$4;->addAll(Ljava/util/Collection;)Z

    .line 200
    sget-object v0, Lcom/oculus/secure/trustedapp/AllFamilyTrustedSignatures;->FB_FAMILY_PROD:Ljava/util/Set;

    invoke-virtual {p0, v0}, Lcom/oculus/secure/trustedapp/AllFamilyTrustedSignatures$4;->addAll(Ljava/util/Collection;)Z

    .line 201
    sget-object v0, Lcom/oculus/secure/trustedapp/AllFamilyTrustedSignatures;->INSTAGRAM_PROD:Ljava/util/Set;

    invoke-virtual {p0, v0}, Lcom/oculus/secure/trustedapp/AllFamilyTrustedSignatures$4;->addAll(Ljava/util/Collection;)Z

    .line 202
    sget-object v0, Lcom/oculus/secure/trustedapp/AllFamilyTrustedSignatures;->OCULUS_PROD:Ljava/util/Set;

    invoke-virtual {p0, v0}, Lcom/oculus/secure/trustedapp/AllFamilyTrustedSignatures$4;->addAll(Ljava/util/Collection;)Z

    .line 203
    sget-object v0, Lcom/oculus/secure/trustedapp/AllFamilyTrustedSignatures;->OXYGEN_PROD:Ljava/util/Set;

    invoke-virtual {p0, v0}, Lcom/oculus/secure/trustedapp/AllFamilyTrustedSignatures$4;->addAll(Ljava/util/Collection;)Z

    .line 204
    sget-object v0, Lcom/oculus/secure/trustedapp/AllFamilyTrustedSignatures;->WHATSAPP_PROD:Ljava/util/Set;

    invoke-virtual {p0, v0}, Lcom/oculus/secure/trustedapp/AllFamilyTrustedSignatures$4;->addAll(Ljava/util/Collection;)Z

    .line 205
    return-void
.end method
