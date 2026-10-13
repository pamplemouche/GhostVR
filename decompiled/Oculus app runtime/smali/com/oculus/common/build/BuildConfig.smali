.class public Lcom/oculus/common/build/BuildConfig;
.super Ljava/lang/Object;
.source "BuildConfig.java"


# static fields
.field public static final DEBUG:Z

.field public static final EXOPACKAGE_FLAGS:I

.field public static final IS_EXOPACKAGE:Z

.field public static final PACKAGE_NAME_HOME:Ljava/lang/String;

.field public static final PACKAGE_NAME_HORIZON:Ljava/lang/String;

.field public static final PROVIDER_SUFFIX:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    .line 5
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "com.oculus.horizon"

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    sput-object v1, Lcom/oculus/common/build/BuildConfig;->PACKAGE_NAME_HORIZON:Ljava/lang/String;

    .line 6
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "com.oculus.home"

    goto :goto_1

    :cond_1
    move-object v1, v0

    :goto_1
    sput-object v1, Lcom/oculus/common/build/BuildConfig;->PACKAGE_NAME_HOME:Ljava/lang/String;

    .line 7
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, ""

    goto :goto_2

    :cond_2
    move-object v1, v0

    :goto_2
    sput-object v1, Lcom/oculus/common/build/BuildConfig;->PROVIDER_SUFFIX:Ljava/lang/String;

    .line 8
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    sput-boolean v1, Lcom/oculus/common/build/BuildConfig;->DEBUG:Z

    .line 9
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/oculus/common/build/BuildConfig;->IS_EXOPACKAGE:Z

    .line 10
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    const/4 v0, 0x0

    sput v0, Lcom/oculus/common/build/BuildConfig;->EXOPACKAGE_FLAGS:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
