.class public Lcom/oculus/panelapp/debug/XrspDebugInfo;
.super Ljava/lang/Object;
.source "XrspDebugInfo.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native getState()I
.end method

.method private static native getStateAsByteArray()[B
.end method

.method public static getStateString()Ljava/lang/String;
    .locals 2

    .line 10
    new-instance v0, Ljava/lang/String;

    invoke-static {}, Lcom/oculus/panelapp/debug/XrspDebugInfo;->getStateAsByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method
