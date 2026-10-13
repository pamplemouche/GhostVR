.class public Lcom/oculus/horizon/api/common/BannerTarget;
.super Ljava/lang/Object;
.source "BannerTarget.java"


# instance fields
.field public __typename:Ljava/lang/String;

.field public assets:Lcom/oculus/horizon/api/common/Section$Assets;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public content_type:Ljava/lang/String;

.field public display_long_description:Ljava/lang/String;

.field public display_post_description:Ljava/lang/String;

.field public display_post_title:Ljava/lang/String;

.field public display_short_description:Ljava/lang/String;

.field public display_terms:Ljava/lang/String;

.field public display_title:Ljava/lang/String;

.field public end_time:J

.field public id:Ljava/lang/String;

.field public section_name:Ljava/lang/String;

.field public show_timer:Z

.field public sort_options:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/oculus/horizon/api/common/Section$SortOption;",
            ">;"
        }
    .end annotation
.end field

.field public style_theme:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isValidAppStoreCuratedSection()Z
    .locals 2

    .prologue
    .line 44
    iget-object v0, p0, Lcom/oculus/horizon/api/common/BannerTarget;->__typename:Ljava/lang/String;

    const-string v1, "AppStore"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oculus/horizon/api/common/BannerTarget;->__typename:Ljava/lang/String;

    const-string v1, "Section"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isValidStoreWideOffer()Z
    .locals 2

    .prologue
    .line 48
    const-string v0, "StoreWideOffer"

    iget-object v1, p0, Lcom/oculus/horizon/api/common/BannerTarget;->__typename:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
