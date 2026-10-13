.class public Lcom/facebook/react/common/build/ReactBuildConfig;
.super Ljava/lang/Object;
.source "ReactBuildConfig.java"


# static fields
.field public static final DEBUG:Z

.field public static final EXOPACKAGE_FLAGS:I

.field public static final IS_INTERNAL_BUILD:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    sget-boolean v0, Lcom/facebook/react/BuildConfig;->DEBUG:Z

    sput-boolean v0, Lcom/facebook/react/common/build/ReactBuildConfig;->DEBUG:Z

    .line 20
    sget-boolean v0, Lcom/facebook/react/BuildConfig;->IS_INTERNAL_BUILD:Z

    sput-boolean v0, Lcom/facebook/react/common/build/ReactBuildConfig;->IS_INTERNAL_BUILD:Z

    .line 21
    sget v0, Lcom/facebook/react/BuildConfig;->EXOPACKAGE_FLAGS:I

    sput v0, Lcom/facebook/react/common/build/ReactBuildConfig;->EXOPACKAGE_FLAGS:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
