.class public Lcom/facebook/quicklog/identifiers/PerformanceEventFields;
.super Ljava/lang/Object;
.source "PerformanceEventFields.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMethodString(ZZ)Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    if-eqz p0, :cond_0

    .line 139
    const-string v0, "missing_config"

    .line 143
    :goto_0
    return-object v0

    .line 140
    :cond_0
    if-eqz p1, :cond_1

    .line 141
    const-string v0, "always_on"

    goto :goto_0

    .line 143
    :cond_1
    const-string/jumbo v0, "random_sampling"

    goto :goto_0
.end method
