.class public final Lcom/facebook/crudolib/appstrictmode/AppStrictMode$AppPolicy$Builder;
.super Ljava/lang/Object;
.source "AppStrictMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/crudolib/appstrictmode/AppStrictMode$AppPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mMask:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 57
    iput v0, p0, Lcom/facebook/crudolib/appstrictmode/AppStrictMode$AppPolicy$Builder;->mMask:I

    .line 60
    iput v0, p0, Lcom/facebook/crudolib/appstrictmode/AppStrictMode$AppPolicy$Builder;->mMask:I

    return-void
.end method

.method public constructor <init>(Lcom/facebook/crudolib/appstrictmode/AppStrictMode$AppPolicy;)V
    .locals 1

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 57
    iput v0, p0, Lcom/facebook/crudolib/appstrictmode/AppStrictMode$AppPolicy$Builder;->mMask:I

    .line 64
    iget p1, p1, Lcom/facebook/crudolib/appstrictmode/AppStrictMode$AppPolicy;->mMask:I

    iput p1, p0, Lcom/facebook/crudolib/appstrictmode/AppStrictMode$AppPolicy$Builder;->mMask:I

    return-void
.end method

.method private disable(I)Lcom/facebook/crudolib/appstrictmode/AppStrictMode$AppPolicy$Builder;
    .locals 1

    .line 121
    iget v0, p0, Lcom/facebook/crudolib/appstrictmode/AppStrictMode$AppPolicy$Builder;->mMask:I

    not-int p1, p1

    and-int/2addr p1, v0

    iput p1, p0, Lcom/facebook/crudolib/appstrictmode/AppStrictMode$AppPolicy$Builder;->mMask:I

    return-object p0
.end method

.method private disablePenalty(I)Lcom/facebook/crudolib/appstrictmode/AppStrictMode$AppPolicy$Builder;
    .locals 0

    .line 112
    invoke-direct {p0, p1}, Lcom/facebook/crudolib/appstrictmode/AppStrictMode$AppPolicy$Builder;->disable(I)Lcom/facebook/crudolib/appstrictmode/AppStrictMode$AppPolicy$Builder;

    move-result-object p1

    return-object p1
.end method

.method private disableViolation(I)Lcom/facebook/crudolib/appstrictmode/AppStrictMode$AppPolicy$Builder;
    .locals 0

    .line 104
    invoke-direct {p0, p1}, Lcom/facebook/crudolib/appstrictmode/AppStrictMode$AppPolicy$Builder;->disable(I)Lcom/facebook/crudolib/appstrictmode/AppStrictMode$AppPolicy$Builder;

    move-result-object p1

    return-object p1
.end method

.method private enable(I)Lcom/facebook/crudolib/appstrictmode/AppStrictMode$AppPolicy$Builder;
    .locals 1

    .line 116
    iget v0, p0, Lcom/facebook/crudolib/appstrictmode/AppStrictMode$AppPolicy$Builder;->mMask:I

    or-int/2addr p1, v0

    iput p1, p0, Lcom/facebook/crudolib/appstrictmode/AppStrictMode$AppPolicy$Builder;->mMask:I

    return-object p0
.end method

.method private enablePenalty(I)Lcom/facebook/crudolib/appstrictmode/AppStrictMode$AppPolicy$Builder;
    .locals 0

    .line 108
    invoke-direct {p0, p1}, Lcom/facebook/crudolib/appstrictmode/AppStrictMode$AppPolicy$Builder;->enable(I)Lcom/facebook/crudolib/appstrictmode/AppStrictMode$AppPolicy$Builder;

    move-result-object p1

    return-object p1
.end method

.method private enableViolation(I)Lcom/facebook/crudolib/appstrictmode/AppStrictMode$AppPolicy$Builder;
    .locals 0

    .line 100
    invoke-direct {p0, p1}, Lcom/facebook/crudolib/appstrictmode/AppStrictMode$AppPolicy$Builder;->enable(I)Lcom/facebook/crudolib/appstrictmode/AppStrictMode$AppPolicy$Builder;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public build()Lcom/facebook/crudolib/appstrictmode/AppStrictMode$AppPolicy;
    .locals 2

    .line 135
    iget v0, p0, Lcom/facebook/crudolib/appstrictmode/AppStrictMode$AppPolicy$Builder;->mMask:I

    if-eqz v0, :cond_1

    const/high16 v1, 0x30000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    .line 137
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You have specified violations, but no penalties. This is likely an error."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 140
    :cond_1
    :goto_0
    new-instance v0, Lcom/facebook/crudolib/appstrictmode/AppStrictMode$AppPolicy;

    iget v1, p0, Lcom/facebook/crudolib/appstrictmode/AppStrictMode$AppPolicy$Builder;->mMask:I

    invoke-direct {v0, v1}, Lcom/facebook/crudolib/appstrictmode/AppStrictMode$AppPolicy;-><init>(I)V

    return-object v0
.end method

.method public detectInefficientUsage()Lcom/facebook/crudolib/appstrictmode/AppStrictMode$AppPolicy$Builder;
    .locals 1

    const/4 v0, 0x2

    .line 76
    invoke-direct {p0, v0}, Lcom/facebook/crudolib/appstrictmode/AppStrictMode$AppPolicy$Builder;->enableViolation(I)Lcom/facebook/crudolib/appstrictmode/AppStrictMode$AppPolicy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public detectResourceNotReleased()Lcom/facebook/crudolib/appstrictmode/AppStrictMode$AppPolicy$Builder;
    .locals 1

    const/4 v0, 0x1

    .line 68
    invoke-direct {p0, v0}, Lcom/facebook/crudolib/appstrictmode/AppStrictMode$AppPolicy$Builder;->enableViolation(I)Lcom/facebook/crudolib/appstrictmode/AppStrictMode$AppPolicy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public penaltyDialog()Lcom/facebook/crudolib/appstrictmode/AppStrictMode$AppPolicy$Builder;
    .locals 1

    const/high16 v0, 0x20000

    .line 96
    invoke-direct {p0, v0}, Lcom/facebook/crudolib/appstrictmode/AppStrictMode$AppPolicy$Builder;->enablePenalty(I)Lcom/facebook/crudolib/appstrictmode/AppStrictMode$AppPolicy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public penaltyLog()Lcom/facebook/crudolib/appstrictmode/AppStrictMode$AppPolicy$Builder;
    .locals 1

    const/high16 v0, 0x10000

    .line 88
    invoke-direct {p0, v0}, Lcom/facebook/crudolib/appstrictmode/AppStrictMode$AppPolicy$Builder;->enablePenalty(I)Lcom/facebook/crudolib/appstrictmode/AppStrictMode$AppPolicy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public permitInefficientUsage()Lcom/facebook/crudolib/appstrictmode/AppStrictMode$AppPolicy$Builder;
    .locals 1

    const/4 v0, 0x2

    .line 80
    invoke-direct {p0, v0}, Lcom/facebook/crudolib/appstrictmode/AppStrictMode$AppPolicy$Builder;->disableViolation(I)Lcom/facebook/crudolib/appstrictmode/AppStrictMode$AppPolicy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public permitResourceNotReleased()Lcom/facebook/crudolib/appstrictmode/AppStrictMode$AppPolicy$Builder;
    .locals 1

    const/4 v0, 0x1

    .line 72
    invoke-direct {p0, v0}, Lcom/facebook/crudolib/appstrictmode/AppStrictMode$AppPolicy$Builder;->disableViolation(I)Lcom/facebook/crudolib/appstrictmode/AppStrictMode$AppPolicy$Builder;

    move-result-object v0

    return-object v0
.end method
