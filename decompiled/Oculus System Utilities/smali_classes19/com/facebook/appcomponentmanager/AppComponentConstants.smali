.class public Lcom/facebook/appcomponentmanager/AppComponentConstants;
.super Ljava/lang/Object;
.source "AppComponentConstants.java"


# static fields
.field public static final INTENT_ACTION_CMP_ENABLING_DONE:Ljava/lang/String; = "com.facebook.appcomponentmanager.ENABLING_CMPS_DONE"

.field private static final IS_PRE_TOS_BUILD:Z

.field public static final PPRETOS_PROCESS_NAME:Ljava/lang/String; = "pretosproc"

.field private static final VERSION_CODE:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    sget-boolean v0, Lcom/facebook/appcomponentmanager/build/BuildConfig;->IS_PRE_TOS_BUILD:Z

    sput-boolean v0, Lcom/facebook/appcomponentmanager/AppComponentConstants;->IS_PRE_TOS_BUILD:Z

    .line 11
    sget v0, Lcom/facebook/appcomponentmanager/build/BuildConfig;->VERSION_CODE:I

    sput v0, Lcom/facebook/appcomponentmanager/AppComponentConstants;->VERSION_CODE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getVersionCode()I
    .locals 1

    .prologue
    .line 25
    sget v0, Lcom/facebook/appcomponentmanager/AppComponentConstants;->VERSION_CODE:I

    return v0
.end method

.method public static final isPreTosBuild()Z
    .locals 1

    .prologue
    .line 21
    sget-boolean v0, Lcom/facebook/appcomponentmanager/AppComponentConstants;->IS_PRE_TOS_BUILD:Z

    return v0
.end method
