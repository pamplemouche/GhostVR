.class public Lcom/facebook/imagepipeline/systrace/DefaultFrescoSystrace;
.super Ljava/lang/Object;
.source "DefaultFrescoSystrace.java"

# interfaces
.implements Lcom/facebook/imagepipeline/systrace/FrescoSystrace$Systrace;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public beginSection(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 27
    sget-boolean v0, Lcom/facebook/imagepipelinebase/BuildConfig;->DEBUG:Z

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    .line 28
    invoke-static {p1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 30
    :cond_0
    return-void
.end method

.method public endSection()V
    .locals 2

    .prologue
    .line 43
    sget-boolean v0, Lcom/facebook/imagepipelinebase/BuildConfig;->DEBUG:Z

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    .line 44
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 46
    :cond_0
    return-void
.end method

.method public isTracing()Z
    .locals 2

    .prologue
    .line 50
    sget-boolean v0, Lcom/facebook/imagepipelinebase/BuildConfig;->DEBUG:Z

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
