.class public Lcom/facebook/oxygen/sdk/status/AppManagerInfo;
.super Ljava/lang/Object;
.source "AppManagerInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/oxygen/sdk/status/AppManagerInfo$AppManagerType;
    }
.end annotation

.annotation build Ljavax/annotation/concurrent/Immutable;
.end annotation


# instance fields
.field public final androidTargetSdk:I

.field public final apiLevel:I

.field public final origin$$CLONE:Ljava/lang/Integer;
    .annotation build Lcom/facebook/annotationprocessors/transformer/api/Clone;
        from = "origin"
        processor = "com.facebook.thecount.transformer.Transformer"
    .end annotation
.end field

.field public final packageEnabled:Z

.field public final packageName:Ljava/lang/String;

.field public final type:Lcom/facebook/oxygen/sdk/status/AppManagerInfo$AppManagerType;

.field public final versionCode:I

.field public final versionName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/facebook/annotationprocessors/transformer/api/StubberErasureParameter;Ljava/lang/String;ZLjava/lang/Integer;Lcom/facebook/oxygen/sdk/status/AppManagerInfo$AppManagerType;ILjava/lang/String;II)V
    .locals 0
    .annotation build Lcom/facebook/annotationprocessors/transformer/api/Clone;
        from = "<init>"
        processor = "com.facebook.thecount.transformer.Transformer"
    .end annotation

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p2, p0, Lcom/facebook/oxygen/sdk/status/AppManagerInfo;->packageName:Ljava/lang/String;

    .line 59
    iput-boolean p3, p0, Lcom/facebook/oxygen/sdk/status/AppManagerInfo;->packageEnabled:Z

    .line 60
    iput-object p4, p0, Lcom/facebook/oxygen/sdk/status/AppManagerInfo;->origin$$CLONE:Ljava/lang/Integer;

    .line 61
    iput-object p5, p0, Lcom/facebook/oxygen/sdk/status/AppManagerInfo;->type:Lcom/facebook/oxygen/sdk/status/AppManagerInfo$AppManagerType;

    .line 62
    iput p6, p0, Lcom/facebook/oxygen/sdk/status/AppManagerInfo;->versionCode:I

    .line 63
    iput-object p7, p0, Lcom/facebook/oxygen/sdk/status/AppManagerInfo;->versionName:Ljava/lang/String;

    .line 64
    iput p8, p0, Lcom/facebook/oxygen/sdk/status/AppManagerInfo;->apiLevel:I

    .line 65
    iput p9, p0, Lcom/facebook/oxygen/sdk/status/AppManagerInfo;->androidTargetSdk:I

    .line 66
    return-void
.end method


# virtual methods
.method public checkApiLevel(I)Z
    .locals 1

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/facebook/oxygen/sdk/status/AppManagerInfo;->packageEnabled:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/facebook/oxygen/sdk/status/AppManagerInfo;->apiLevel:I

    if-lt v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
