.class public Lcom/oculus/secure/trustedapp/TrustedApp$VerifiedCallerInfo;
.super Ljava/lang/Object;
.source "TrustedApp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/secure/trustedapp/TrustedApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VerifiedCallerInfo"
.end annotation


# instance fields
.field public final isTrusted:Z

.field public final packageNames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final signatureHash:Lcom/oculus/secure/trustedapp/AppSignatureHash;

.field public final uid:I


# direct methods
.method private constructor <init>(ZILcom/oculus/secure/trustedapp/AppSignatureHash;Ljava/util/Set;)V
    .locals 1
    .param p1, "isTrusted"    # Z
    .param p2, "uid"    # I
    .param p3, "signatureHash"    # Lcom/oculus/secure/trustedapp/AppSignatureHash;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI",
            "Lcom/oculus/secure/trustedapp/AppSignatureHash;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 287
    .local p4, "packageNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 288
    iput-boolean p1, p0, Lcom/oculus/secure/trustedapp/TrustedApp$VerifiedCallerInfo;->isTrusted:Z

    .line 289
    iput p2, p0, Lcom/oculus/secure/trustedapp/TrustedApp$VerifiedCallerInfo;->uid:I

    .line 290
    iput-object p3, p0, Lcom/oculus/secure/trustedapp/TrustedApp$VerifiedCallerInfo;->signatureHash:Lcom/oculus/secure/trustedapp/AppSignatureHash;

    .line 291
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/secure/trustedapp/TrustedApp$VerifiedCallerInfo;->packageNames:Ljava/util/Set;

    .line 292
    return-void
.end method

.method public static createTrusted(ILcom/oculus/secure/trustedapp/AppSignatureHash;Ljava/util/Set;)Lcom/oculus/secure/trustedapp/TrustedApp$VerifiedCallerInfo;
    .locals 2
    .param p0, "uid"    # I
    .param p1, "signature"    # Lcom/oculus/secure/trustedapp/AppSignatureHash;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/oculus/secure/trustedapp/AppSignatureHash;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/oculus/secure/trustedapp/TrustedApp$VerifiedCallerInfo;"
        }
    .end annotation

    .prologue
    .line 296
    .local p2, "packageNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v0, Lcom/oculus/secure/trustedapp/TrustedApp$VerifiedCallerInfo;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0, p1, p2}, Lcom/oculus/secure/trustedapp/TrustedApp$VerifiedCallerInfo;-><init>(ZILcom/oculus/secure/trustedapp/AppSignatureHash;Ljava/util/Set;)V

    return-object v0
.end method

.method public static createUntrusted(ILcom/oculus/secure/trustedapp/AppSignatureHash;Ljava/util/Set;)Lcom/oculus/secure/trustedapp/TrustedApp$VerifiedCallerInfo;
    .locals 2
    .param p0, "uid"    # I
    .param p1, "signature"    # Lcom/oculus/secure/trustedapp/AppSignatureHash;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/oculus/secure/trustedapp/AppSignatureHash;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/oculus/secure/trustedapp/TrustedApp$VerifiedCallerInfo;"
        }
    .end annotation

    .prologue
    .line 301
    .local p2, "packageNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v0, Lcom/oculus/secure/trustedapp/TrustedApp$VerifiedCallerInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0, p1, p2}, Lcom/oculus/secure/trustedapp/TrustedApp$VerifiedCallerInfo;-><init>(ZILcom/oculus/secure/trustedapp/AppSignatureHash;Ljava/util/Set;)V

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 306
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VerifiedCallerInfo{isTrusted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/oculus/secure/trustedapp/TrustedApp$VerifiedCallerInfo;->isTrusted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/oculus/secure/trustedapp/TrustedApp$VerifiedCallerInfo;->uid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sha1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/secure/trustedapp/TrustedApp$VerifiedCallerInfo;->signatureHash:Lcom/oculus/secure/trustedapp/AppSignatureHash;

    .line 312
    invoke-virtual {v1}, Lcom/oculus/secure/trustedapp/AppSignatureHash;->getSha1Hash()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sha2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/secure/trustedapp/TrustedApp$VerifiedCallerInfo;->signatureHash:Lcom/oculus/secure/trustedapp/AppSignatureHash;

    .line 314
    invoke-virtual {v1}, Lcom/oculus/secure/trustedapp/AppSignatureHash;->getSha256Hash()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", packageNames="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/secure/trustedapp/TrustedApp$VerifiedCallerInfo;->packageNames:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
