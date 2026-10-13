.class public Lcom/oculus/libraryapi/OVRLibraryInternal;
.super Lcom/oculus/libraryapi/OVRLibrary;
.source "OVRLibraryInternal.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;[Landroid/content/pm/Signature;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "additionalTrustedSignatures"    # [Landroid/content/pm/Signature;

    .prologue
    .line 30
    new-instance v0, Lcom/oculus/libraryapi/SecureLibraryProvider;

    invoke-static {p2}, Lcom/oculus/libraryapi/OVRLibraryInternal;->buildTrustedSignatures([Landroid/content/pm/Signature;)[Landroid/content/pm/Signature;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/oculus/libraryapi/SecureLibraryProvider;-><init>([Landroid/content/pm/Signature;)V

    invoke-direct {p0, p1, v0}, Lcom/oculus/libraryapi/OVRLibrary;-><init>(Landroid/content/Context;Lcom/oculus/libraryapi/SecureLibraryProvider;)V

    .line 31
    return-void
.end method

.method private static buildTrustedSignatures([Landroid/content/pm/Signature;)[Landroid/content/pm/Signature;
    .locals 3
    .param p0, "additionalTrustedSignatures"    # [Landroid/content/pm/Signature;

    .prologue
    .line 34
    if-eqz p0, :cond_0

    array-length v1, p0

    if-nez v1, :cond_1

    .line 35
    :cond_0
    const/4 v1, 0x1

    new-array v0, v1, [Landroid/content/pm/Signature;

    const/4 v1, 0x0

    sget-object v2, Lcom/oculus/library/provider/contract/LibraryProviderContract;->OCULUS_SIGNATURE:Landroid/content/pm/Signature;

    aput-object v2, v0, v1

    .line 40
    :goto_0
    return-object v0

    .line 37
    :cond_1
    array-length v1, p0

    add-int/lit8 v1, v1, 0x1

    .line 38
    invoke-static {p0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/content/pm/Signature;

    .line 39
    .local v0, "trustedSignatures":[Landroid/content/pm/Signature;
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    sget-object v2, Lcom/oculus/library/provider/contract/LibraryProviderContract;->OCULUS_SIGNATURE:Landroid/content/pm/Signature;

    aput-object v2, v0, v1

    goto :goto_0
.end method


# virtual methods
.method public clear()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 71
    iget-object v1, p0, Lcom/oculus/libraryapi/OVRLibraryInternal;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 72
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    invoke-static {}, Lcom/oculus/library/provider/contract/LibraryProviderContract;->queryAllPackages()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public getAppInternalById(Ljava/lang/String;)Lcom/oculus/library/model/App;
    .locals 5
    .param p1, "id"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/oculus/libraryapi/OVRLibraryInternal;->getAllApps()[Lcom/oculus/library/model/App;

    move-result-object v1

    .line 62
    .local v1, "apps":[Lcom/oculus/library/model/App;
    array-length v3, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v0, v1, v2

    .line 63
    .local v0, "app":Lcom/oculus/library/model/App;
    iget-object v4, v0, Lcom/oculus/library/model/App;->id:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 67
    .end local v0    # "app":Lcom/oculus/library/model/App;
    :goto_1
    return-object v0

    .line 62
    .restart local v0    # "app":Lcom/oculus/library/model/App;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 67
    .end local v0    # "app":Lcom/oculus/library/model/App;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public insertApp(Lcom/oculus/library/model/App;)V
    .locals 0
    .param p1, "app"    # Lcom/oculus/library/model/App;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/oculus/libraryapi/OVRLibraryInternal;->refetch()V

    .line 57
    return-void
.end method

.method public useOCMS()Z
    .locals 1

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/oculus/libraryapi/OVRLibraryInternal;->mUseOCMS:Z

    return v0
.end method
