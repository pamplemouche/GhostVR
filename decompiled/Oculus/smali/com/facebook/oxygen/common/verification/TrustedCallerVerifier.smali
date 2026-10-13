.class public Lcom/facebook/oxygen/common/verification/TrustedCallerVerifier;
.super Ljava/lang/Object;
.source "TrustedCallerVerifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/oxygen/common/verification/TrustedCallerVerifier$TrustedCallerInfo;
    }
.end annotation


# instance fields
.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field private final mTrustedPackages:Lcom/google/common/collect/ImmutableSetMultimap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableSetMultimap",
            "<",
            "Landroid/content/pm/Signature;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mTrustedSignatures:Lcom/google/common/collect/ImmutableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableSet",
            "<",
            "Landroid/content/pm/Signature;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/common/collect/Multimap;Landroid/content/pm/PackageManager;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Multimap",
            "<",
            "Landroid/content/pm/Signature;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/pm/PackageManager;",
            ")V"
        }
    .end annotation

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-static {}, Lcom/google/common/collect/ImmutableSet;->builder()Lcom/google/common/collect/ImmutableSet$Builder;

    move-result-object v1

    .line 39
    invoke-static {}, Lcom/google/common/collect/ImmutableSetMultimap;->builder()Lcom/google/common/collect/ImmutableSetMultimap$Builder;

    move-result-object v2

    .line 41
    invoke-interface {p1}, Lcom/google/common/collect/Multimap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/Signature;

    .line 42
    const-string v4, "*|all_packages|*"

    invoke-interface {p1, v0, v4}, Lcom/google/common/collect/Multimap;->containsEntry(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 44
    invoke-virtual {v1, v0}, Lcom/google/common/collect/ImmutableSet$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$Builder;

    goto :goto_0

    .line 47
    :cond_0
    invoke-interface {p1, v0}, Lcom/google/common/collect/Multimap;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Lcom/google/common/collect/ImmutableSetMultimap$Builder;->putAll(Ljava/lang/Object;Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableSetMultimap$Builder;

    goto :goto_0

    .line 51
    :cond_1
    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableSet$Builder;->build()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/oxygen/common/verification/TrustedCallerVerifier;->mTrustedSignatures:Lcom/google/common/collect/ImmutableSet;

    .line 52
    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableSetMultimap$Builder;->build()Lcom/google/common/collect/ImmutableSetMultimap;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/oxygen/common/verification/TrustedCallerVerifier;->mTrustedPackages:Lcom/google/common/collect/ImmutableSetMultimap;

    .line 53
    iput-object p2, p0, Lcom/facebook/oxygen/common/verification/TrustedCallerVerifier;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 54
    return-void
.end method


# virtual methods
.method public checkTrustedCaller()Z
    .locals 1

    .prologue
    .line 118
    invoke-virtual {p0}, Lcom/facebook/oxygen/common/verification/TrustedCallerVerifier;->checkTrustedCallerInfo()Lcom/facebook/oxygen/common/verification/TrustedCallerVerifier$TrustedCallerInfo;

    move-result-object v0

    iget-boolean v0, v0, Lcom/facebook/oxygen/common/verification/TrustedCallerVerifier$TrustedCallerInfo;->isTrusted:Z

    return v0
.end method

.method public checkTrustedCallerInfo()Lcom/facebook/oxygen/common/verification/TrustedCallerVerifier$TrustedCallerInfo;
    .locals 6

    .prologue
    .line 83
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 88
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This method should be called on behalf of an IPC transaction from binder thread."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 92
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 93
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 95
    invoke-virtual {p0, v0}, Lcom/facebook/oxygen/common/verification/TrustedCallerVerifier;->getUidPackageNames(I)Lcom/google/common/collect/ImmutableSet;

    move-result-object v2

    .line 96
    invoke-virtual {p0, v2}, Lcom/facebook/oxygen/common/verification/TrustedCallerVerifier;->getUidSignature(Ljava/util/Set;)Landroid/content/pm/Signature;

    move-result-object v3

    .line 98
    iget-object v4, p0, Lcom/facebook/oxygen/common/verification/TrustedCallerVerifier;->mTrustedSignatures:Lcom/google/common/collect/ImmutableSet;

    invoke-virtual {v4, v3}, Lcom/google/common/collect/ImmutableSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 100
    invoke-static {v0, v1, v3, v2}, Lcom/facebook/oxygen/common/verification/TrustedCallerVerifier$TrustedCallerInfo;->createTrusted(IILandroid/content/pm/Signature;Ljava/util/Set;)Lcom/facebook/oxygen/common/verification/TrustedCallerVerifier$TrustedCallerInfo;

    move-result-object v0

    .line 109
    :goto_0
    return-object v0

    .line 104
    :cond_1
    iget-object v4, p0, Lcom/facebook/oxygen/common/verification/TrustedCallerVerifier;->mTrustedPackages:Lcom/google/common/collect/ImmutableSetMultimap;

    invoke-virtual {v4, v3}, Lcom/google/common/collect/ImmutableSetMultimap;->get(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v4

    .line 105
    invoke-static {v2, v4}, Lcom/google/common/collect/Sets;->intersection(Ljava/util/Set;Ljava/util/Set;)Lcom/google/common/collect/Sets$SetView;

    move-result-object v4

    .line 106
    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    .line 107
    invoke-static {v0, v1, v3, v4}, Lcom/facebook/oxygen/common/verification/TrustedCallerVerifier$TrustedCallerInfo;->createTrusted(IILandroid/content/pm/Signature;Ljava/util/Set;)Lcom/facebook/oxygen/common/verification/TrustedCallerVerifier$TrustedCallerInfo;

    move-result-object v0

    goto :goto_0

    .line 109
    :cond_2
    invoke-static {v0, v1, v3, v2}, Lcom/facebook/oxygen/common/verification/TrustedCallerVerifier$TrustedCallerInfo;->createUntrusted(IILandroid/content/pm/Signature;Ljava/util/Set;)Lcom/facebook/oxygen/common/verification/TrustedCallerVerifier$TrustedCallerInfo;

    move-result-object v0

    goto :goto_0
.end method

.method public enforceTrustedCaller()Lcom/facebook/oxygen/common/verification/TrustedCallerVerifier$TrustedCallerInfo;
    .locals 4

    .prologue
    .line 123
    invoke-virtual {p0}, Lcom/facebook/oxygen/common/verification/TrustedCallerVerifier;->checkTrustedCallerInfo()Lcom/facebook/oxygen/common/verification/TrustedCallerVerifier$TrustedCallerInfo;

    move-result-object v0

    .line 124
    iget-boolean v1, v0, Lcom/facebook/oxygen/common/verification/TrustedCallerVerifier$TrustedCallerInfo;->isTrusted:Z

    if-nez v1, :cond_0

    .line 125
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Access denied. Caller is not trusted: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 127
    :cond_0
    return-object v0
.end method

.method public getUidPackageNames(I)Lcom/google/common/collect/ImmutableSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/collect/ImmutableSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 132
    iget-object v0, p0, Lcom/facebook/oxygen/common/verification/TrustedCallerVerifier;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    .line 133
    if-eqz v0, :cond_0

    array-length v1, v0

    if-nez v1, :cond_1

    .line 135
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No packages associated with uid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 137
    :cond_1
    invoke-static {v0}, Lcom/google/common/collect/ImmutableSet;->copyOf([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method protected getUidSignature(Ljava/util/Set;)Landroid/content/pm/Signature;
    .locals 6
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/content/pm/Signature;"
        }
    .end annotation

    .prologue
    .line 155
    const/4 v1, 0x0

    .line 156
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 159
    :try_start_0
    iget-object v3, p0, Lcom/facebook/oxygen/common/verification/TrustedCallerVerifier;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v4, 0x40

    invoke-virtual {v3, v0, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 164
    iget-object v4, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 165
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Package name mismatch: expected="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", was="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 160
    :catch_0
    move-exception v1

    .line 161
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Name not found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 169
    :cond_0
    iget-object v4, v3, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v4, :cond_1

    iget-object v4, v3, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v4, v4

    if-nez v4, :cond_2

    .line 170
    :cond_1
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Signatures are missing: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 173
    :cond_2
    iget-object v4, v3, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v4, v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_3

    .line 174
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Multiple signatures not supported: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 177
    :cond_3
    iget-object v0, v3, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v3, 0x0

    aget-object v0, v0, v3

    .line 178
    if-nez v1, :cond_4

    :goto_1
    move-object v1, v0

    .line 184
    goto/16 :goto_0

    .line 180
    :cond_4
    invoke-virtual {v1, v0}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 181
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " has inconsistent signatures across packages."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 186
    :cond_5
    if-nez v1, :cond_6

    .line 187
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "No uid signature."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 190
    :cond_6
    return-object v1

    :cond_7
    move-object v0, v1

    goto :goto_1
.end method
