.class public Lcom/facebook/acra/DeviceFeaturesCollector;
.super Ljava/lang/Object;
.source "DeviceFeaturesCollector.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFeatures(Landroid/content/Context;)Ljava/lang/String;
    .locals 16
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v12, 0x0

    .line 37
    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    .line 39
    .local v9, "result":Ljava/lang/StringBuffer;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 40
    .local v8, "pm":Landroid/content/pm/PackageManager;
    const-class v11, Landroid/content/pm/PackageManager;

    const-string v13, "getSystemAvailableFeatures"

    const/4 v10, 0x0

    check-cast v10, [Ljava/lang/Class;

    .line 41
    invoke-virtual {v11, v13, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 42
    .local v6, "getSystemAvailableFeatures":Ljava/lang/reflect/Method;
    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-virtual {v6, v8, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Ljava/lang/Object;

    move-object v0, v10

    check-cast v0, [Ljava/lang/Object;

    move-object v4, v0

    .line 43
    .local v4, "features":[Ljava/lang/Object;
    if-eqz v4, :cond_1

    .line 44
    array-length v13, v4

    move v11, v12

    :goto_0
    if-ge v11, v13, :cond_1

    aget-object v2, v4, v11

    .line 45
    .local v2, "feature":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    const-string v14, "name"

    invoke-virtual {v10, v14}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 46
    .local v3, "featureName":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 47
    invoke-virtual {v9, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 54
    :goto_1
    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 44
    add-int/lit8 v10, v11, 0x1

    move v11, v10

    goto :goto_0

    .line 49
    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v14

    const-string v15, "getGlEsVersion"

    const/4 v10, 0x0

    check-cast v10, [Ljava/lang/Class;

    invoke-virtual {v14, v15, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 50
    .local v5, "getGlEsVersion":Ljava/lang/reflect/Method;
    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-virtual {v5, v2, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 51
    .local v7, "glEsVersion":Ljava/lang/String;
    const-string v10, "glEsVersion = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 52
    invoke-virtual {v9, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 57
    .end local v2    # "feature":Ljava/lang/Object;
    .end local v3    # "featureName":Ljava/lang/String;
    .end local v4    # "features":[Ljava/lang/Object;
    .end local v5    # "getGlEsVersion":Ljava/lang/reflect/Method;
    .end local v6    # "getSystemAvailableFeatures":Ljava/lang/reflect/Method;
    .end local v7    # "glEsVersion":Ljava/lang/String;
    .end local v8    # "pm":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v1

    .line 58
    .local v1, "e":Ljava/lang/Throwable;
    sget-object v10, Lcom/facebook/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v11, "Couldn\'t retrieve device features for %s"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v13, v12

    invoke-static {v10, v1, v11, v13}, Lcom/facebook/debug/log/BLog;->w(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 59
    const-string v10, "Could not retrieve data: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 60
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 63
    .end local v1    # "e":Ljava/lang/Throwable;
    :cond_1
    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    return-object v10
.end method
