.class public Lcom/facebook/oxygen/sdk/build/SdkBuildConstants;
.super Ljava/lang/Object;
.source "SdkBuildConstants.java"


# static fields
.field private static final IS_DEBUG_BUILD:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 7
    sget-boolean v0, Lcom/facebook/oxygen/sdk/build/BuildConfig;->DEBUG:Z

    sput-boolean v0, Lcom/facebook/oxygen/sdk/build/SdkBuildConstants;->IS_DEBUG_BUILD:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isDebugBuild()Z
    .locals 1

    .prologue
    .line 10
    sget-boolean v0, Lcom/facebook/oxygen/sdk/build/SdkBuildConstants;->IS_DEBUG_BUILD:Z

    return v0
.end method
