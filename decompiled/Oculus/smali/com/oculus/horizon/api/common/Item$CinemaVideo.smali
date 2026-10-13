.class public Lcom/oculus/horizon/api/common/Item$CinemaVideo;
.super Ljava/lang/Object;
.source "Item.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/api/common/Item;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CinemaVideo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/horizon/api/common/Item$CinemaVideo$Dimension;
    }
.end annotation


# instance fields
.field public format:Ljava/lang/String;

.field public purchasable_items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oculus/horizon/api/common/Item;",
            ">;"
        }
    .end annotation
.end field

.field public rating:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static is3D(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 119
    if-eqz p0, :cond_0

    sget-object v0, Lcom/oculus/horizon/api/common/Item$CinemaVideo$Dimension;->THREE_D:Lcom/oculus/horizon/api/common/Item$CinemaVideo$Dimension;

    invoke-virtual {v0}, Lcom/oculus/horizon/api/common/Item$CinemaVideo$Dimension;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public is3D()Z
    .locals 2

    .prologue
    .line 115
    iget-object v0, p0, Lcom/oculus/horizon/api/common/Item$CinemaVideo;->format:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oculus/horizon/api/common/Item$CinemaVideo;->format:Ljava/lang/String;

    sget-object v1, Lcom/oculus/horizon/api/common/Item$CinemaVideo$Dimension;->THREE_D:Lcom/oculus/horizon/api/common/Item$CinemaVideo$Dimension;

    invoke-virtual {v1}, Lcom/oculus/horizon/api/common/Item$CinemaVideo$Dimension;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
