.class public Lcom/facebook/oxygen/common/verification/TrustedCallerVerifier$TrustedCallerInfo;
.super Ljava/lang/Object;
.source "TrustedCallerVerifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/oxygen/common/verification/TrustedCallerVerifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TrustedCallerInfo"
.end annotation


# instance fields
.field public final isTrusted:Z

.field public final packageNames:Lcom/google/common/collect/ImmutableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final pid:I

.field public final signature:Landroid/content/pm/Signature;

.field public final uid:I


# direct methods
.method private constructor <init>(ZIILandroid/content/pm/Signature;Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZII",
            "Landroid/content/pm/Signature;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 230
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 231
    iput-boolean p1, p0, Lcom/facebook/oxygen/common/verification/TrustedCallerVerifier$TrustedCallerInfo;->isTrusted:Z

    .line 232
    iput p2, p0, Lcom/facebook/oxygen/common/verification/TrustedCallerVerifier$TrustedCallerInfo;->uid:I

    .line 233
    iput p3, p0, Lcom/facebook/oxygen/common/verification/TrustedCallerVerifier$TrustedCallerInfo;->pid:I

    .line 234
    iput-object p4, p0, Lcom/facebook/oxygen/common/verification/TrustedCallerVerifier$TrustedCallerInfo;->signature:Landroid/content/pm/Signature;

    .line 235
    invoke-static {p5}, Lcom/google/common/collect/ImmutableSet;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/oxygen/common/verification/TrustedCallerVerifier$TrustedCallerInfo;->packageNames:Lcom/google/common/collect/ImmutableSet;

    .line 236
    return-void
.end method

.method public static createTrusted(IILandroid/content/pm/Signature;Ljava/util/Set;)Lcom/facebook/oxygen/common/verification/TrustedCallerVerifier$TrustedCallerInfo;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Landroid/content/pm/Signature;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/facebook/oxygen/common/verification/TrustedCallerVerifier$TrustedCallerInfo;"
        }
    .end annotation

    .prologue
    .line 240
    new-instance v0, Lcom/facebook/oxygen/common/verification/TrustedCallerVerifier$TrustedCallerInfo;

    const/4 v1, 0x1

    move v2, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/facebook/oxygen/common/verification/TrustedCallerVerifier$TrustedCallerInfo;-><init>(ZIILandroid/content/pm/Signature;Ljava/util/Set;)V

    return-object v0
.end method

.method public static createUntrusted(IILandroid/content/pm/Signature;Ljava/util/Set;)Lcom/facebook/oxygen/common/verification/TrustedCallerVerifier$TrustedCallerInfo;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Landroid/content/pm/Signature;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/facebook/oxygen/common/verification/TrustedCallerVerifier$TrustedCallerInfo;"
        }
    .end annotation

    .prologue
    .line 245
    new-instance v0, Lcom/facebook/oxygen/common/verification/TrustedCallerVerifier$TrustedCallerInfo;

    const/4 v1, 0x0

    move v2, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/facebook/oxygen/common/verification/TrustedCallerVerifier$TrustedCallerInfo;-><init>(ZIILandroid/content/pm/Signature;Ljava/util/Set;)V

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 250
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TrustedCallerInfo{isTrusted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/facebook/oxygen/common/verification/TrustedCallerVerifier$TrustedCallerInfo;->isTrusted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/facebook/oxygen/common/verification/TrustedCallerVerifier$TrustedCallerInfo;->uid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", signature="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/oxygen/common/verification/TrustedCallerVerifier$TrustedCallerInfo;->signature:Landroid/content/pm/Signature;

    .line 256
    invoke-static {v1}, Lcom/facebook/oxygen/installer/signatures/SignatureHash;->hashBase64(Landroid/content/pm/Signature;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", packageNames="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/oxygen/common/verification/TrustedCallerVerifier$TrustedCallerInfo;->packageNames:Lcom/google/common/collect/ImmutableSet;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
