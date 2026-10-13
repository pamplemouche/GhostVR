.class public Lcom/oculus/libraryapi/SecureLibraryProvider;
.super Ljava/lang/Object;
.source "SecureLibraryProvider.java"


# instance fields
.field private final expectedSignatures:[Landroid/content/pm/Signature;


# direct methods
.method public constructor <init>([Landroid/content/pm/Signature;)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/oculus/libraryapi/SecureLibraryProvider;->expectedSignatures:[Landroid/content/pm/Signature;

    .line 19
    return-void
.end method


# virtual methods
.method public get(Landroid/content/Context;)Landroid/content/ContentProviderClient;
    .locals 10

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 25
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "com.oculus.library"

    .line 26
    invoke-virtual {v0, v3}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Ljava/lang/String;)Landroid/content/ContentProviderClient;

    move-result-object v3

    .line 28
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 29
    const-string v5, "com.oculus.horizon"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "com.oculus.horizon.dev"

    .line 30
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move-object v0, v3

    .line 74
    :goto_0
    return-object v0

    .line 35
    :cond_1
    if-nez v3, :cond_2

    move-object v0, v2

    .line 36
    goto :goto_0

    .line 43
    :cond_2
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v5, "com.oculus.horizon"

    const/16 v6, 0x48

    .line 44
    invoke-virtual {v0, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 52
    iget-object v6, v5, Landroid/content/pm/PackageInfo;->providers:[Landroid/content/pm/ProviderInfo;

    array-length v7, v6

    move v0, v1

    :goto_1
    if-ge v0, v7, :cond_9

    aget-object v8, v6, v0

    .line 53
    iget-object v8, v8, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    const-string v9, "com.oculus.library"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    move v0, v4

    .line 58
    :goto_2
    if-nez v0, :cond_4

    move-object v0, v2

    .line 59
    goto :goto_0

    .line 47
    :catch_0
    move-exception v0

    move-object v0, v2

    .line 48
    goto :goto_0

    .line 52
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 62
    :cond_4
    iget-object v0, v5, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v0, :cond_5

    iget-object v0, v5, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v0, v0

    if-ne v0, v4, :cond_5

    iget-object v0, v5, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    aget-object v0, v0, v1

    if-nez v0, :cond_6

    :cond_5
    move-object v0, v2

    .line 65
    goto :goto_0

    :cond_6
    move v0, v1

    .line 68
    :goto_3
    iget-object v4, p0, Lcom/oculus/libraryapi/SecureLibraryProvider;->expectedSignatures:[Landroid/content/pm/Signature;

    array-length v4, v4

    if-ge v0, v4, :cond_8

    .line 69
    iget-object v4, p0, Lcom/oculus/libraryapi/SecureLibraryProvider;->expectedSignatures:[Landroid/content/pm/Signature;

    aget-object v4, v4, v0

    iget-object v6, v5, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    aget-object v6, v6, v1

    invoke-virtual {v4, v6}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    move-object v0, v3

    .line 70
    goto :goto_0

    .line 68
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_8
    move-object v0, v2

    .line 74
    goto :goto_0

    :cond_9
    move v0, v1

    goto :goto_2
.end method
