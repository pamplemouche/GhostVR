.class public final Lcom/facebook/crudolib/appstrictmode/AppStrictMode$AppPolicy;
.super Ljava/lang/Object;
.source "AppStrictMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/crudolib/appstrictmode/AppStrictMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AppPolicy"
.end annotation


# static fields
.field public static final LAX:Lcom/facebook/crudolib/appstrictmode/AppStrictMode$AppPolicy;


# instance fields
.field final mMask:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 43
    new-instance v0, Lcom/facebook/crudolib/appstrictmode/AppStrictMode$AppPolicy;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/facebook/crudolib/appstrictmode/AppStrictMode$AppPolicy;-><init>(I)V

    sput-object v0, Lcom/facebook/crudolib/appstrictmode/AppStrictMode$AppPolicy;->LAX:Lcom/facebook/crudolib/appstrictmode/AppStrictMode$AppPolicy;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput p1, p0, Lcom/facebook/crudolib/appstrictmode/AppStrictMode$AppPolicy;->mMask:I

    .line 49
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AppStrictMode.AppPolicy{mask="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/facebook/crudolib/appstrictmode/AppStrictMode$AppPolicy;->mMask:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
