.class final Lcom/facebook/secure/trustedapp/AllFamilyTrustedSignatures$4;
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
    .line 261
    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    .line 263
    sget-object v0, Lcom/facebook/secure/trustedapp/AllFamilyTrustedSignatures;->FB_PROD:Ljava/util/Set;

    invoke-virtual {p0, v0}, Lcom/facebook/secure/trustedapp/AllFamilyTrustedSignatures$4;->addAll(Ljava/util/Collection;)Z

    .line 264
    sget-object v0, Lcom/facebook/secure/trustedapp/AllFamilyTrustedSignatures;->FB_FAMILY_PROD:Ljava/util/Set;

    invoke-virtual {p0, v0}, Lcom/facebook/secure/trustedapp/AllFamilyTrustedSignatures$4;->addAll(Ljava/util/Collection;)Z

    .line 265
    sget-object v0, Lcom/facebook/secure/trustedapp/AllFamilyTrustedSignatures;->INSTAGRAM_PROD:Ljava/util/Set;

    invoke-virtual {p0, v0}, Lcom/facebook/secure/trustedapp/AllFamilyTrustedSignatures$4;->addAll(Ljava/util/Collection;)Z

    .line 266
    sget-object v0, Lcom/facebook/secure/trustedapp/AllFamilyTrustedSignatures;->OCULUS_PROD:Ljava/util/Set;

    invoke-virtual {p0, v0}, Lcom/facebook/secure/trustedapp/AllFamilyTrustedSignatures$4;->addAll(Ljava/util/Collection;)Z

    .line 267
    sget-object v0, Lcom/facebook/secure/trustedapp/AllFamilyTrustedSignatures;->OXYGEN_PROD:Ljava/util/Set;

    invoke-virtual {p0, v0}, Lcom/facebook/secure/trustedapp/AllFamilyTrustedSignatures$4;->addAll(Ljava/util/Collection;)Z

    .line 268
    sget-object v0, Lcom/facebook/secure/trustedapp/AllFamilyTrustedSignatures;->WHATSAPP_PROD:Ljava/util/Set;

    invoke-virtual {p0, v0}, Lcom/facebook/secure/trustedapp/AllFamilyTrustedSignatures$4;->addAll(Ljava/util/Collection;)Z

    .line 269
    sget-object v0, Lcom/facebook/secure/trustedapp/AllFamilyTrustedSignatures;->PORTAL_PROD:Ljava/util/Set;

    invoke-virtual {p0, v0}, Lcom/facebook/secure/trustedapp/AllFamilyTrustedSignatures$4;->addAll(Ljava/util/Collection;)Z

    .line 270
    return-void
.end method
