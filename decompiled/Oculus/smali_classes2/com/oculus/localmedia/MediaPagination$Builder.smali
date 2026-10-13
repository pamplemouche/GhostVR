.class public Lcom/oculus/localmedia/MediaPagination$Builder;
.super Ljava/lang/Object;
.source "MediaPagination.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/localmedia/MediaPagination;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mLastCursor:Ljava/lang/String;

.field private mStartCursor:Ljava/lang/String;

.field private mTotalCount:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const/4 v0, -0x1

    iput v0, p0, Lcom/oculus/localmedia/MediaPagination$Builder;->mTotalCount:I

    return-void
.end method


# virtual methods
.method public build()Lcom/oculus/localmedia/MediaPagination;
    .locals 4

    .prologue
    .line 80
    new-instance v0, Lcom/oculus/localmedia/MediaPagination;

    iget v1, p0, Lcom/oculus/localmedia/MediaPagination$Builder;->mTotalCount:I

    iget-object v2, p0, Lcom/oculus/localmedia/MediaPagination$Builder;->mStartCursor:Ljava/lang/String;

    iget-object v3, p0, Lcom/oculus/localmedia/MediaPagination$Builder;->mLastCursor:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/oculus/localmedia/MediaPagination;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public setLastCursor(Ljava/lang/String;)Lcom/oculus/localmedia/MediaPagination$Builder;
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lcom/oculus/localmedia/MediaPagination$Builder;->mLastCursor:Ljava/lang/String;

    .line 76
    return-object p0
.end method

.method public setStartCursor(Ljava/lang/String;)Lcom/oculus/localmedia/MediaPagination$Builder;
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/oculus/localmedia/MediaPagination$Builder;->mStartCursor:Ljava/lang/String;

    .line 71
    return-object p0
.end method

.method public setTotalCount(I)Lcom/oculus/localmedia/MediaPagination$Builder;
    .locals 0

    .prologue
    .line 65
    iput p1, p0, Lcom/oculus/localmedia/MediaPagination$Builder;->mTotalCount:I

    .line 66
    return-object p0
.end method
