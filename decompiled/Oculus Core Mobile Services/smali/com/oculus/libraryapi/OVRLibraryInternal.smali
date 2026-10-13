.class public Lcom/oculus/libraryapi/OVRLibraryInternal;
.super Lcom/oculus/libraryapi/OVRLibrary;
.source "OVRLibraryInternal.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;[Landroid/content/pm/Signature;)V
    .locals 2

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

    .prologue
    .line 34
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    .line 35
    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/content/pm/Signature;

    const/4 v1, 0x0

    sget-object v2, Lcom/oculus/library/provider/contract/LibraryProviderContract;->OCULUS_SIGNATURE:Landroid/content/pm/Signature;

    aput-object v2, v0, v1

    .line 40
    :goto_0
    return-object v0

    .line 37
    :cond_1
    array-length v0, p0

    add-int/lit8 v0, v0, 0x1

    .line 38
    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/content/pm/Signature;

    .line 39
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    sget-object v2, Lcom/oculus/library/provider/contract/LibraryProviderContract;->OCULUS_SIGNATURE:Landroid/content/pm/Signature;

    aput-object v2, v0, v1

    goto :goto_0
.end method
