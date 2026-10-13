.class public Lcom/facebook/quicklog/identifiers/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getModuleId(I)S
    .locals 1

    .prologue
    .line 9
    shr-int/lit8 v0, p0, 0x10

    int-to-short v0, v0

    return v0
.end method
