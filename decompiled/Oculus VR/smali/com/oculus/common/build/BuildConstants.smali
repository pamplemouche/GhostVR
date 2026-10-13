.class public Lcom/oculus/common/build/BuildConstants;
.super Ljava/lang/Object;
.source "BuildConstants.java"


# static fields
.field public static final DEBUG:Z

.field public static final EXOPACKAGE_FLAGS:I

.field public static final IS_EXOPACKAGE:Z

.field public static final PACKAGE_NAME_HOME:Ljava/lang/String;

.field public static final PACKAGE_NAME_HORIZON:Ljava/lang/String;

.field public static final PROVIDER_SUFFIX:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 6
    sget-boolean v0, Lcom/oculus/common/build/BuildConfig;->DEBUG:Z

    sput-boolean v0, Lcom/oculus/common/build/BuildConstants;->DEBUG:Z

    .line 11
    sget-object v0, Lcom/oculus/common/build/BuildConfig;->PACKAGE_NAME_HORIZON:Ljava/lang/String;

    sput-object v0, Lcom/oculus/common/build/BuildConstants;->PACKAGE_NAME_HORIZON:Ljava/lang/String;

    .line 12
    sget-object v0, Lcom/oculus/common/build/BuildConfig;->PACKAGE_NAME_HOME:Ljava/lang/String;

    sput-object v0, Lcom/oculus/common/build/BuildConstants;->PACKAGE_NAME_HOME:Ljava/lang/String;

    .line 22
    sget-boolean v0, Lcom/oculus/common/build/BuildConfig;->IS_EXOPACKAGE:Z

    sput-boolean v0, Lcom/oculus/common/build/BuildConstants;->IS_EXOPACKAGE:Z

    .line 23
    sget v0, Lcom/oculus/common/build/BuildConfig;->EXOPACKAGE_FLAGS:I

    sput v0, Lcom/oculus/common/build/BuildConstants;->EXOPACKAGE_FLAGS:I

    .line 24
    sget-object v0, Lcom/oculus/common/build/BuildConfig;->PROVIDER_SUFFIX:Ljava/lang/String;

    sput-object v0, Lcom/oculus/common/build/BuildConstants;->PROVIDER_SUFFIX:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
