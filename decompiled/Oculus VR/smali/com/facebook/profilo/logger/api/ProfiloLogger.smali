.class public final Lcom/facebook/profilo/logger/api/ProfiloLogger;
.super Ljava/lang/Object;
.source "ProfiloLogger.java"


# annotations
.annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
.end annotation


# static fields
.field public static volatile sHasProfilo:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const/4 v0, 0x0

    sput-boolean v0, Lcom/facebook/profilo/logger/api/ProfiloLogger;->sHasProfilo:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static classLoadEnd(Ljava/lang/Class;)I
    .locals 2
    .annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)I"
        }
    .end annotation

    .prologue
    .line 30
    sget-boolean v0, Lcom/facebook/profilo/logger/api/ProfiloLogger;->sHasProfilo:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/facebook/profilo/provider/constants/ConstantsProvider;->PROVIDER_CLASS_LOAD:I

    invoke-static {v0}, Lcom/facebook/profilo/core/TraceEvents;->isEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 31
    sget v0, Lcom/facebook/profilo/provider/constants/ConstantsProvider;->PROVIDER_CLASS_LOAD:I

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/facebook/profilo/logger/ClassLoadLogger;->logClassLoadEnd(ILjava/lang/Class;I)I

    move-result v0

    .line 33
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static classLoadFailed()I
    .locals 2
    .annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
    .end annotation

    .prologue
    .line 38
    sget-boolean v0, Lcom/facebook/profilo/logger/api/ProfiloLogger;->sHasProfilo:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/facebook/profilo/provider/constants/ConstantsProvider;->PROVIDER_CLASS_LOAD:I

    invoke-static {v0}, Lcom/facebook/profilo/core/TraceEvents;->isEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    sget v0, Lcom/facebook/profilo/provider/constants/ConstantsProvider;->PROVIDER_CLASS_LOAD:I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/facebook/profilo/logger/ClassLoadLogger;->logClassLoadFailed(II)I

    move-result v0

    .line 41
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static classLoadStart()I
    .locals 2
    .annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
    .end annotation

    .prologue
    .line 22
    sget-boolean v0, Lcom/facebook/profilo/logger/api/ProfiloLogger;->sHasProfilo:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/facebook/profilo/provider/constants/ConstantsProvider;->PROVIDER_CLASS_LOAD:I

    invoke-static {v0}, Lcom/facebook/profilo/core/TraceEvents;->isEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 23
    sget v0, Lcom/facebook/profilo/provider/constants/ConstantsProvider;->PROVIDER_CLASS_LOAD:I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/facebook/profilo/logger/ClassLoadLogger;->logClassLoadStart(II)I

    move-result v0

    .line 25
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method
