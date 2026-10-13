.class public Lcom/oculus/libraryapi/SecureLibraryProvider;
.super Ljava/lang/Object;
.source "SecureLibraryProvider.java"


# instance fields
.field private final expectedSignatures:[Landroid/content/pm/Signature;


# direct methods
.method public constructor <init>([Landroid/content/pm/Signature;)V
    .locals 0
    .param p1, "expectedSignatures"    # [Landroid/content/pm/Signature;

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
    .locals 14
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v9, 0x0

    const/4 v7, 0x0

    .line 23
    .line 25
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v10, "com.oculus.library"

    .line 26
    invoke-virtual {v8, v10}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Ljava/lang/String;)Landroid/content/ContentProviderClient;

    move-result-object v0

    .line 28
    .local v0, "client":Landroid/content/ContentProviderClient;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 29
    .local v4, "localPackageName":Ljava/lang/String;
    const-string v8, "com.oculus.horizon"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "com.oculus.horizon.dev"

    .line 30
    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 74
    .end local v0    # "client":Landroid/content/ContentProviderClient;
    :cond_0
    :goto_0
    return-object v0

    .line 35
    .restart local v0    # "client":Landroid/content/ContentProviderClient;
    :cond_1
    if-nez v0, :cond_2

    move-object v0, v7

    .line 36
    goto :goto_0

    .line 43
    :cond_2
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    const-string v10, "com.oculus.horizon"

    const/16 v11, 0x48

    .line 44
    invoke-virtual {v8, v10, v11}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 51
    .local v5, "packageInfo":Landroid/content/pm/PackageInfo;
    const/4 v2, 0x0

    .line 52
    .local v2, "found":Z
    iget-object v10, v5, Landroid/content/pm/PackageInfo;->providers:[Landroid/content/pm/ProviderInfo;

    array-length v11, v10

    move v8, v9

    :goto_1
    if-ge v8, v11, :cond_3

    aget-object v6, v10, v8

    .line 53
    .local v6, "providerInfo":Landroid/content/pm/ProviderInfo;
    iget-object v12, v6, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    const-string v13, "com.oculus.library"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 54
    const/4 v2, 0x1

    .line 58
    .end local v6    # "providerInfo":Landroid/content/pm/ProviderInfo;
    :cond_3
    if-nez v2, :cond_5

    move-object v0, v7

    .line 59
    goto :goto_0

    .line 47
    .end local v2    # "found":Z
    .end local v5    # "packageInfo":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v1

    .local v1, "ex":Landroid/content/pm/PackageManager$NameNotFoundException;
    move-object v0, v7

    .line 48
    goto :goto_0

    .line 52
    .end local v1    # "ex":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v2    # "found":Z
    .restart local v5    # "packageInfo":Landroid/content/pm/PackageInfo;
    .restart local v6    # "providerInfo":Landroid/content/pm/ProviderInfo;
    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 62
    .end local v6    # "providerInfo":Landroid/content/pm/ProviderInfo;
    :cond_5
    iget-object v8, v5, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v8, :cond_6

    iget-object v8, v5, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v8, v8

    const/4 v10, 0x1

    if-ne v8, v10, :cond_6

    iget-object v8, v5, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    aget-object v8, v8, v9

    if-nez v8, :cond_7

    :cond_6
    move-object v0, v7

    .line 65
    goto :goto_0

    .line 68
    :cond_7
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    iget-object v8, p0, Lcom/oculus/libraryapi/SecureLibraryProvider;->expectedSignatures:[Landroid/content/pm/Signature;

    array-length v8, v8

    if-ge v3, v8, :cond_8

    .line 69
    iget-object v8, p0, Lcom/oculus/libraryapi/SecureLibraryProvider;->expectedSignatures:[Landroid/content/pm/Signature;

    aget-object v8, v8, v3

    iget-object v10, v5, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    aget-object v10, v10, v9

    invoke-virtual {v8, v10}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 68
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_8
    move-object v0, v7

    .line 74
    goto :goto_0
.end method
