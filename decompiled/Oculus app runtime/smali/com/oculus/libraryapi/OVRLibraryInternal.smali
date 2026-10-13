.class public Lcom/oculus/libraryapi/OVRLibraryInternal;
.super Lcom/oculus/libraryapi/OVRLibrary;
.source "OVRLibraryInternal.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;[Landroid/content/pm/Signature;)V
    .locals 1

    .line 30
    new-instance v0, Lcom/oculus/libraryapi/SecureLibraryProvider;

    invoke-static {p2}, Lcom/oculus/libraryapi/OVRLibraryInternal;->buildTrustedSignatures([Landroid/content/pm/Signature;)[Landroid/content/pm/Signature;

    move-result-object p2

    invoke-direct {v0, p2}, Lcom/oculus/libraryapi/SecureLibraryProvider;-><init>([Landroid/content/pm/Signature;)V

    invoke-direct {p0, p1, v0}, Lcom/oculus/libraryapi/OVRLibrary;-><init>(Landroid/content/Context;Lcom/oculus/libraryapi/SecureLibraryProvider;)V

    return-void
.end method

.method private static buildTrustedSignatures([Landroid/content/pm/Signature;)[Landroid/content/pm/Signature;
    .locals 2

    const/4 v0, 0x1

    if-eqz p0, :cond_1

    .line 34
    array-length v1, p0

    if-nez v1, :cond_0

    goto :goto_0

    .line 37
    :cond_0
    array-length v1, p0

    add-int/2addr v1, v0

    .line 38
    invoke-static {p0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/content/pm/Signature;

    .line 39
    array-length v1, p0

    sub-int/2addr v1, v0

    sget-object v0, Lcom/oculus/library/provider/contract/LibraryProviderContract;->OCULUS_SIGNATURE:Landroid/content/pm/Signature;

    aput-object v0, p0, v1

    return-object p0

    .line 35
    :cond_1
    :goto_0
    new-array p0, v0, [Landroid/content/pm/Signature;

    const/4 v0, 0x0

    sget-object v1, Lcom/oculus/library/provider/contract/LibraryProviderContract;->OCULUS_SIGNATURE:Landroid/content/pm/Signature;

    aput-object v1, p0, v0

    return-object p0
.end method


# virtual methods
.method public clear()I
    .locals 3

    .line 67
    iget-object v0, p0, Lcom/oculus/libraryapi/OVRLibraryInternal;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 68
    invoke-static {}, Lcom/oculus/library/provider/contract/LibraryProviderContract;->queryAllPackages()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getAppInternalById(Ljava/lang/String;)Lcom/oculus/library/model/App;
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 57
    invoke-virtual {p0}, Lcom/oculus/libraryapi/OVRLibraryInternal;->getAllApps()[Lcom/oculus/library/model/App;

    move-result-object v0

    .line 58
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 59
    iget-object v4, v3, Lcom/oculus/library/model/App;->id:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public insertApp(Lcom/oculus/library/model/App;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 52
    invoke-virtual {p0}, Lcom/oculus/libraryapi/OVRLibraryInternal;->refetch()V

    return-void
.end method
