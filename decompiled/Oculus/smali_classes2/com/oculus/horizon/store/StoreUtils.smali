.class public Lcom/oculus/horizon/store/StoreUtils;
.super Ljava/lang/Object;
.source "StoreUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/horizon/store/StoreUtils$FilteringSet;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static StoreRoadblockModelFromStoreSectionBrand(Lcom/oculus/horizon/store/StoreSectionBrand;)Lcom/oculus/model/StoreRoadblockModel;
    .locals 3
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v2, -0x1

    .line 195
    if-nez p0, :cond_0

    .line 196
    const/4 v0, 0x0

    .line 213
    :goto_0
    return-object v0

    .line 198
    :cond_0
    new-instance v0, Lcom/oculus/model/StoreRoadblockModel$Builder;

    invoke-direct {v0}, Lcom/oculus/model/StoreRoadblockModel$Builder;-><init>()V

    .line 200
    invoke-static {p0}, Lcom/oculus/horizon/store/roadblock/RoadblockedStoreSectionHelper;->getKeyForStoreSectionBrand(Lcom/oculus/horizon/store/StoreSectionBrand;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oculus/model/StoreRoadblockModel$Builder;->setKey(Ljava/lang/String;)Lcom/oculus/model/StoreRoadblockModel$Builder;

    move-result-object v0

    iget v1, p0, Lcom/oculus/horizon/store/StoreSectionBrand;->roadblockTitleText:I

    .line 201
    invoke-virtual {v0, v1}, Lcom/oculus/model/StoreRoadblockModel$Builder;->setTitle(I)Lcom/oculus/model/StoreRoadblockModel$Builder;

    move-result-object v0

    iget v1, p0, Lcom/oculus/horizon/store/StoreSectionBrand;->roadblockDescriptionText:I

    .line 202
    invoke-virtual {v0, v1}, Lcom/oculus/model/StoreRoadblockModel$Builder;->setDescription(I)Lcom/oculus/model/StoreRoadblockModel$Builder;

    move-result-object v0

    .line 203
    invoke-virtual {p0}, Lcom/oculus/horizon/store/StoreSectionBrand;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oculus/model/StoreRoadblockModel$Builder;->setCategory(Ljava/lang/String;)Lcom/oculus/model/StoreRoadblockModel$Builder;

    move-result-object v0

    .line 204
    iget v1, p0, Lcom/oculus/horizon/store/StoreSectionBrand;->roadblockSecondDescriptionText:I

    if-eq v1, v2, :cond_1

    .line 205
    iget v1, p0, Lcom/oculus/horizon/store/StoreSectionBrand;->roadblockSecondDescriptionText:I

    invoke-virtual {v0, v1}, Lcom/oculus/model/StoreRoadblockModel$Builder;->setSecondDescription(I)Lcom/oculus/model/StoreRoadblockModel$Builder;

    .line 207
    :cond_1
    iget v1, p0, Lcom/oculus/horizon/store/StoreSectionBrand;->roadblockBannerResourceId:I

    if-eq v1, v2, :cond_2

    .line 208
    iget v1, p0, Lcom/oculus/horizon/store/StoreSectionBrand;->roadblockBannerResourceId:I

    invoke-virtual {v0, v1}, Lcom/oculus/model/StoreRoadblockModel$Builder;->setImage(I)Lcom/oculus/model/StoreRoadblockModel$Builder;

    .line 210
    :cond_2
    iget v1, p0, Lcom/oculus/horizon/store/StoreSectionBrand;->roadblockButtonText:I

    if-eq v1, v2, :cond_3

    .line 211
    iget v1, p0, Lcom/oculus/horizon/store/StoreSectionBrand;->roadblockButtonText:I

    invoke-virtual {v0, v1}, Lcom/oculus/model/StoreRoadblockModel$Builder;->setButtonText(I)Lcom/oculus/model/StoreRoadblockModel$Builder;

    .line 213
    :cond_3
    invoke-virtual {v0}, Lcom/oculus/model/StoreRoadblockModel$Builder;->build()Lcom/oculus/model/StoreRoadblockModel;

    move-result-object v0

    goto :goto_0
.end method

.method public static createStoreItemModel(Landroid/content/Context;Lcom/oculus/horizon/api/common/Item;Lcom/oculus/horizon/store/StoreSection;)Lcom/oculus/horizon/store/StoreItemModel;
    .locals 35

    .prologue
    .line 45
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/oculus/horizon/api/common/Item;->cover_landscape_image:Lcom/oculus/http/common/Image;

    if-eqz v2, :cond_1

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/oculus/horizon/api/common/Item;->cover_landscape_image:Lcom/oculus/http/common/Image;

    iget-object v5, v2, Lcom/oculus/http/common/Image;->uri:Ljava/lang/String;

    .line 46
    :goto_0
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/oculus/horizon/api/common/Item;->cover_square_image:Lcom/oculus/http/common/Image;

    if-eqz v2, :cond_2

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/oculus/horizon/api/common/Item;->cover_square_image:Lcom/oculus/http/common/Image;

    iget-object v6, v2, Lcom/oculus/http/common/Image;->uri:Ljava/lang/String;

    .line 47
    :goto_1
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/oculus/horizon/api/common/Item;->current_offer:Lcom/oculus/horizon/api/common/Item$AppStoreOffer;

    iget-object v2, v2, Lcom/oculus/horizon/api/common/Item$AppStoreOffer;->price:Lcom/oculus/horizon/api/common/Item$AppStoreOffer$Price;

    if-nez v2, :cond_3

    const/4 v7, 0x0

    .line 54
    :goto_2
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/oculus/horizon/api/common/Item;->current_offer:Lcom/oculus/horizon/api/common/Item$AppStoreOffer;

    iget-object v2, v2, Lcom/oculus/horizon/api/common/Item$AppStoreOffer;->strikethrough_price:Lcom/oculus/horizon/api/common/Item$AppStoreOffer$Price;

    if-nez v2, :cond_5

    const/4 v8, 0x0

    .line 59
    :goto_3
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/oculus/horizon/api/common/Item;->current_offer:Lcom/oculus/horizon/api/common/Item$AppStoreOffer;

    iget-object v9, v2, Lcom/oculus/horizon/api/common/Item$AppStoreOffer;->promo_benefit:Ljava/lang/String;

    .line 61
    invoke-virtual/range {p1 .. p1}, Lcom/oculus/horizon/api/common/Item;->isValidApplication()Z

    move-result v2

    if-eqz v2, :cond_6

    move-object/from16 v0, p1

    iget-boolean v2, v0, Lcom/oculus/horizon/api/common/Item;->is_viewer_entitled:Z

    if-eqz v2, :cond_6

    const/16 v20, 0x1

    .line 63
    :goto_4
    const-wide/16 v14, 0x0

    .line 64
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/oculus/horizon/api/common/Item;->current_offer:Lcom/oculus/horizon/api/common/Item$AppStoreOffer;

    if-eqz v2, :cond_0

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/oculus/horizon/api/common/Item;->current_offer:Lcom/oculus/horizon/api/common/Item$AppStoreOffer;

    iget-boolean v2, v2, Lcom/oculus/horizon/api/common/Item$AppStoreOffer;->show_timer:Z

    if-eqz v2, :cond_0

    if-nez v20, :cond_0

    .line 67
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/oculus/horizon/api/common/Item;->current_offer:Lcom/oculus/horizon/api/common/Item$AppStoreOffer;

    iget-wide v14, v2, Lcom/oculus/horizon/api/common/Item$AppStoreOffer;->end_time:J

    .line 69
    :cond_0
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/oculus/horizon/api/common/Item;->category:Ljava/lang/String;

    .line 70
    invoke-static {v2}, Lcom/oculus/horizon/store/StoreSectionBrand;->from(Ljava/lang/String;)Lcom/oculus/horizon/store/StoreSectionBrand;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/oculus/horizon/store/StoreUtils;->getBestStoreRoadblockModel(Lcom/oculus/horizon/store/StoreSectionBrand;Lcom/oculus/horizon/api/common/Section$Assets;Ljava/lang/String;)Lcom/oculus/model/StoreRoadblockModel;

    move-result-object v16

    .line 72
    invoke-virtual/range {p1 .. p1}, Lcom/oculus/horizon/api/common/Item;->isValidApplication()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 73
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/oculus/horizon/api/common/Item;->current_offer:Lcom/oculus/horizon/api/common/Item$AppStoreOffer;

    if-nez v2, :cond_7

    const/4 v2, 0x1

    move v12, v2

    .line 74
    :goto_5
    new-instance v2, Lcom/oculus/horizon/store/StoreApplicationModel;

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/oculus/horizon/api/common/Item;->id:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/oculus/horizon/api/common/Item;->display_name:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/oculus/horizon/api/common/Item;->category:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/oculus/horizon/api/common/Item;->category_name:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/oculus/horizon/api/common/Item;->style_theme:Ljava/lang/String;

    .line 85
    invoke-static {v13}, Lcom/oculus/horizon/store/StoresManager;->getStyleTheme(Ljava/lang/String;)Lcom/oculus/model/StyleTheme;

    move-result-object v13

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/oculus/horizon/api/common/Item;->latest_supported_binary:Lcom/oculus/horizon/api/common/Item$AndroidBinary;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/oculus/horizon/api/common/Item$AndroidBinary;->package_name:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/oculus/horizon/api/common/Item;->quality_rating_histogram_aggregate:Ljava/util/List;

    move-object/from16 v18, v0

    .line 89
    invoke-static/range {v18 .. v18}, Lcom/oculus/horizon/util/ProductUtils;->getTotalCount(Ljava/util/List;)I

    move-result v18

    move-object/from16 v0, p1

    iget v0, v0, Lcom/oculus/horizon/api/common/Item;->quality_rating_aggregate:F

    move/from16 v19, v0

    if-nez v12, :cond_8

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/oculus/horizon/api/common/Item;->current_offer:Lcom/oculus/horizon/api/common/Item$AppStoreOffer;

    iget-object v12, v12, Lcom/oculus/horizon/api/common/Item$AppStoreOffer;->price:Lcom/oculus/horizon/api/common/Item$AppStoreOffer$Price;

    iget v12, v12, Lcom/oculus/horizon/api/common/Item$AppStoreOffer$Price;->offset_amount:I

    if-nez v12, :cond_8

    const/16 v21, 0x1

    :goto_6
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/oculus/horizon/api/common/Item;->latest_supported_binary:Lcom/oculus/horizon/api/common/Item$AndroidBinary;

    iget-object v0, v12, Lcom/oculus/horizon/api/common/Item$AndroidBinary;->permissions:Ljava/util/List;

    move-object/from16 v22, v0

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/oculus/horizon/api/common/Item;->current_offer:Lcom/oculus/horizon/api/common/Item$AppStoreOffer;

    iget-object v0, v12, Lcom/oculus/horizon/api/common/Item$AppStoreOffer;->id:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/oculus/horizon/api/common/Item;->store_wide_offers:Ljava/util/List;

    .line 95
    invoke-static {v12}, Lcom/oculus/util/collection/CollectionUtil;->isNotNullOrEmpty(Ljava/util/Collection;)Z

    move-result v12

    if-eqz v12, :cond_9

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/oculus/horizon/api/common/Item;->store_wide_offers:Ljava/util/List;

    const/16 v24, 0x0

    .line 96
    move/from16 v0, v24

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/oculus/horizon/api/common/Item$StoreWideOffer;

    move-object/from16 v24, v12

    :goto_7
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/oculus/horizon/api/common/Item;->supported_input_devices_list:Ljava/util/List;

    move-object/from16 v25, v0

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/oculus/horizon/api/common/Item;->latest_supported_binary:Lcom/oculus/horizon/api/common/Item$AndroidBinary;

    iget-object v0, v12, Lcom/oculus/horizon/api/common/Item$AndroidBinary;->version:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/oculus/horizon/api/common/Item;->latest_supported_binary:Lcom/oculus/horizon/api/common/Item$AndroidBinary;

    iget v0, v12, Lcom/oculus/horizon/api/common/Item$AndroidBinary;->version_code:I

    move/from16 v27, v0

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/oculus/horizon/api/common/Item;->latest_supported_binary:Lcom/oculus/horizon/api/common/Item$AndroidBinary;

    iget v0, v12, Lcom/oculus/horizon/api/common/Item$AndroidBinary;->target_android_sdk_version:I

    move/from16 v28, v0

    move-object/from16 v12, p2

    invoke-direct/range {v2 .. v28}, Lcom/oculus/horizon/store/StoreApplicationModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/oculus/horizon/store/StoreSection;Lcom/oculus/model/StyleTheme;JLcom/oculus/model/StoreRoadblockModel;Ljava/lang/String;IFZZLjava/util/List;Ljava/lang/String;Lcom/oculus/horizon/api/common/Item$StoreWideOffer;Ljava/util/List;Ljava/lang/String;II)V

    move-object/from16 v17, v2

    .line 185
    :goto_8
    return-object v17

    .line 45
    :cond_1
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 46
    :cond_2
    const/4 v6, 0x0

    goto/16 :goto_1

    .line 47
    :cond_3
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/oculus/horizon/api/common/Item;->current_offer:Lcom/oculus/horizon/api/common/Item$AppStoreOffer;

    iget-object v2, v2, Lcom/oculus/horizon/api/common/Item$AppStoreOffer;->price:Lcom/oculus/horizon/api/common/Item$AppStoreOffer$Price;

    iget v2, v2, Lcom/oculus/horizon/api/common/Item$AppStoreOffer$Price;->offset_amount:I

    if-nez v2, :cond_4

    const/4 v2, 0x1

    :goto_9
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/oculus/horizon/api/common/Item;->current_offer:Lcom/oculus/horizon/api/common/Item$AppStoreOffer;

    iget-object v3, v3, Lcom/oculus/horizon/api/common/Item$AppStoreOffer;->price:Lcom/oculus/horizon/api/common/Item$AppStoreOffer$Price;

    iget-object v3, v3, Lcom/oculus/horizon/api/common/Item$AppStoreOffer$Price;->formatted:Ljava/lang/String;

    .line 50
    move-object/from16 v0, p0

    invoke-static {v0, v2, v3}, Lcom/oculus/horizon/util/ProductUtils;->getPriceLabel(Landroid/content/Context;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_2

    .line 47
    :cond_4
    const/4 v2, 0x0

    goto :goto_9

    .line 54
    :cond_5
    const/4 v2, 0x0

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/oculus/horizon/api/common/Item;->current_offer:Lcom/oculus/horizon/api/common/Item$AppStoreOffer;

    iget-object v3, v3, Lcom/oculus/horizon/api/common/Item$AppStoreOffer;->strikethrough_price:Lcom/oculus/horizon/api/common/Item$AppStoreOffer$Price;

    iget-object v3, v3, Lcom/oculus/horizon/api/common/Item$AppStoreOffer$Price;->formatted:Ljava/lang/String;

    .line 57
    move-object/from16 v0, p0

    invoke-static {v0, v2, v3}, Lcom/oculus/horizon/util/ProductUtils;->getPriceLabel(Landroid/content/Context;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_3

    .line 61
    :cond_6
    const/16 v20, 0x0

    goto/16 :goto_4

    .line 73
    :cond_7
    const/4 v2, 0x0

    move v12, v2

    goto/16 :goto_5

    .line 89
    :cond_8
    const/16 v21, 0x0

    goto/16 :goto_6

    .line 96
    :cond_9
    const/16 v24, 0x0

    goto :goto_7

    .line 102
    :cond_a
    invoke-virtual/range {p1 .. p1}, Lcom/oculus/horizon/api/common/Item;->isValidBanner()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 103
    new-instance v18, Lcom/oculus/horizon/store/StoreBannerModel;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/oculus/horizon/api/common/Item;->id:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/oculus/horizon/api/common/Item;->display_name:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/oculus/horizon/api/common/Item;->category:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/oculus/horizon/api/common/Item;->category_name:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/oculus/horizon/api/common/Item;->style_theme:Ljava/lang/String;

    .line 114
    invoke-static {v2}, Lcom/oculus/horizon/store/StoresManager;->getStyleTheme(Ljava/lang/String;)Lcom/oculus/model/StyleTheme;

    move-result-object v29

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/oculus/horizon/api/common/Item;->banner_target:Lcom/oculus/horizon/api/common/BannerTarget;

    if-eqz v2, :cond_b

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/oculus/horizon/api/common/Item;->banner_target:Lcom/oculus/horizon/api/common/BannerTarget;

    .line 115
    invoke-virtual {v2}, Lcom/oculus/horizon/api/common/BannerTarget;->isValidAppStoreCuratedSection()Z

    move-result v2

    if-eqz v2, :cond_b

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/oculus/horizon/api/common/Item;->banner_target:Lcom/oculus/horizon/api/common/BannerTarget;

    .line 116
    invoke-static {v2}, Lcom/oculus/horizon/store/StoreSection;->from(Lcom/oculus/horizon/api/common/BannerTarget;)Lcom/oculus/horizon/store/StoreSection;

    move-result-object v30

    :goto_a
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/oculus/horizon/api/common/Item;->banner_target:Lcom/oculus/horizon/api/common/BannerTarget;

    if-eqz v2, :cond_c

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/oculus/horizon/api/common/Item;->banner_target:Lcom/oculus/horizon/api/common/BannerTarget;

    .line 118
    invoke-virtual {v2}, Lcom/oculus/horizon/api/common/BannerTarget;->isValidStoreWideOffer()Z

    move-result v2

    if-eqz v2, :cond_c

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/oculus/horizon/api/common/Item;->banner_target:Lcom/oculus/horizon/api/common/BannerTarget;

    .line 119
    invoke-static {v2}, Lcom/oculus/horizon/store/StoreWideOfferModel;->from(Lcom/oculus/horizon/api/common/BannerTarget;)Lcom/oculus/horizon/store/StoreWideOfferModel;

    move-result-object v31

    :goto_b
    move-object/from16 v21, v5

    move-object/from16 v22, v6

    move-object/from16 v23, v7

    move-object/from16 v24, v8

    move-object/from16 v25, v9

    move-object/from16 v28, p2

    move-wide/from16 v32, v14

    move-object/from16 v34, v16

    invoke-direct/range {v18 .. v34}, Lcom/oculus/horizon/store/StoreBannerModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/oculus/horizon/store/StoreSection;Lcom/oculus/model/StyleTheme;Lcom/oculus/horizon/store/StoreSection;Lcom/oculus/horizon/store/StoreWideOfferModel;JLcom/oculus/model/StoreRoadblockModel;)V

    move-object/from16 v17, v18

    goto/16 :goto_8

    .line 116
    :cond_b
    const/16 v30, 0x0

    goto :goto_a

    .line 119
    :cond_c
    const/16 v31, 0x0

    goto :goto_b

    .line 123
    :cond_d
    invoke-virtual/range {p1 .. p1}, Lcom/oculus/horizon/api/common/Item;->isValidAppBundle()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 124
    new-instance v17, Lcom/oculus/horizon/store/StoreBundleModel;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/oculus/horizon/api/common/Item;->id:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/oculus/horizon/api/common/Item;->display_name:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/oculus/horizon/api/common/Item;->category:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/oculus/horizon/api/common/Item;->category_name:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/oculus/horizon/api/common/Item;->style_theme:Ljava/lang/String;

    .line 135
    invoke-static {v2}, Lcom/oculus/horizon/store/StoresManager;->getStyleTheme(Ljava/lang/String;)Lcom/oculus/model/StyleTheme;

    move-result-object v28

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/oculus/horizon/api/common/Item;->is_viewer_entitled:Z

    move/from16 v29, v0

    move-object/from16 v20, v5

    move-object/from16 v21, v6

    move-object/from16 v22, v7

    move-object/from16 v23, v8

    move-object/from16 v24, v9

    move-object/from16 v27, p2

    move-wide/from16 v30, v14

    move-object/from16 v32, v16

    invoke-direct/range {v17 .. v32}, Lcom/oculus/horizon/store/StoreBundleModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/oculus/horizon/store/StoreSection;Lcom/oculus/model/StyleTheme;ZJLcom/oculus/model/StoreRoadblockModel;)V

    goto/16 :goto_8

    .line 139
    :cond_e
    invoke-virtual/range {p1 .. p1}, Lcom/oculus/horizon/api/common/Item;->isValidInAppItem()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 140
    new-instance v17, Lcom/oculus/horizon/store/StoreInAppPurchaseModel;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/oculus/horizon/api/common/Item;->id:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/oculus/horizon/api/common/Item;->display_name:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/oculus/horizon/api/common/Item;->category:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/oculus/horizon/api/common/Item;->category_name:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/oculus/horizon/api/common/Item;->style_theme:Ljava/lang/String;

    .line 151
    invoke-static {v2}, Lcom/oculus/horizon/store/StoresManager;->getStyleTheme(Ljava/lang/String;)Lcom/oculus/model/StyleTheme;

    move-result-object v28

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/oculus/horizon/api/common/Item;->is_viewer_entitled:Z

    move/from16 v29, v0

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/oculus/horizon/api/common/Item;->cinema_video:Lcom/oculus/horizon/api/common/Item$CinemaVideo;

    if-eqz v2, :cond_f

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/oculus/horizon/api/common/Item;->cinema_video:Lcom/oculus/horizon/api/common/Item$CinemaVideo;

    iget-object v0, v2, Lcom/oculus/horizon/api/common/Item$CinemaVideo;->format:Ljava/lang/String;

    move-object/from16 v33, v0

    :goto_c
    move-object/from16 v20, v5

    move-object/from16 v21, v6

    move-object/from16 v22, v7

    move-object/from16 v23, v8

    move-object/from16 v24, v9

    move-object/from16 v27, p2

    move-wide/from16 v30, v14

    move-object/from16 v32, v16

    invoke-direct/range {v17 .. v33}, Lcom/oculus/horizon/store/StoreInAppPurchaseModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/oculus/horizon/store/StoreSection;Lcom/oculus/model/StyleTheme;ZJLcom/oculus/model/StoreRoadblockModel;Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_f
    const/16 v33, 0x0

    goto :goto_c

    .line 156
    :cond_10
    invoke-virtual/range {p1 .. p1}, Lcom/oculus/horizon/api/common/Item;->isValidInAppRentalItem()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 157
    new-instance v17, Lcom/oculus/horizon/store/StoreInAppRentalModel;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/oculus/horizon/api/common/Item;->id:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/oculus/horizon/api/common/Item;->display_name:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/oculus/horizon/api/common/Item;->category:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/oculus/horizon/api/common/Item;->category_name:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/oculus/horizon/api/common/Item;->style_theme:Ljava/lang/String;

    .line 168
    invoke-static {v2}, Lcom/oculus/horizon/store/StoresManager;->getStyleTheme(Ljava/lang/String;)Lcom/oculus/model/StyleTheme;

    move-result-object v28

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/oculus/horizon/api/common/Item;->is_viewer_entitled:Z

    move/from16 v29, v0

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/oculus/horizon/api/common/Item;->cinema_video:Lcom/oculus/horizon/api/common/Item$CinemaVideo;

    if-eqz v2, :cond_11

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/oculus/horizon/api/common/Item;->cinema_video:Lcom/oculus/horizon/api/common/Item$CinemaVideo;

    iget-object v0, v2, Lcom/oculus/horizon/api/common/Item$CinemaVideo;->format:Ljava/lang/String;

    move-object/from16 v33, v0

    :goto_d
    move-object/from16 v20, v5

    move-object/from16 v21, v6

    move-object/from16 v22, v7

    move-object/from16 v23, v8

    move-object/from16 v24, v9

    move-object/from16 v27, p2

    move-wide/from16 v30, v14

    move-object/from16 v32, v16

    invoke-direct/range {v17 .. v33}, Lcom/oculus/horizon/store/StoreInAppRentalModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/oculus/horizon/store/StoreSection;Lcom/oculus/model/StyleTheme;ZJLcom/oculus/model/StoreRoadblockModel;Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_11
    const/16 v33, 0x0

    goto :goto_d

    .line 174
    :cond_12
    new-instance v2, Lcom/oculus/horizon/store/StoreItemModel;

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/oculus/horizon/api/common/Item;->id:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/oculus/horizon/api/common/Item;->display_name:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/oculus/horizon/api/common/Item;->category:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/oculus/horizon/api/common/Item;->category_name:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/oculus/horizon/api/common/Item;->style_theme:Ljava/lang/String;

    .line 185
    invoke-static {v12}, Lcom/oculus/horizon/store/StoresManager;->getStyleTheme(Ljava/lang/String;)Lcom/oculus/model/StyleTheme;

    move-result-object v13

    move-object/from16 v12, p2

    invoke-direct/range {v2 .. v16}, Lcom/oculus/horizon/store/StoreItemModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/oculus/horizon/store/StoreSection;Lcom/oculus/model/StyleTheme;JLcom/oculus/model/StoreRoadblockModel;)V

    move-object/from16 v17, v2

    goto/16 :goto_8
.end method

.method public static filterForSupportedItems(Ljava/util/List;Lcom/oculus/horizon/store/StoreUtils$FilteringSet;)Lcom/google/common/collect/ImmutableList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/oculus/horizon/api/common/Item;",
            ">;",
            "Lcom/oculus/horizon/store/StoreUtils$FilteringSet;",
            ")",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/oculus/horizon/api/common/Item;",
            ">;"
        }
    .end annotation

    .prologue
    .line 244
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v1

    .line 245
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/api/common/Item;

    .line 246
    iget-object v3, p1, Lcom/oculus/horizon/store/StoreUtils$FilteringSet;->mFilteringSet:Ljava/util/Set;

    iget-object v4, v0, Lcom/oculus/horizon/api/common/Item;->__typename:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Lcom/oculus/horizon/api/common/Item;->isValidBasedOnType()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 248
    invoke-virtual {v1, v0}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    goto :goto_0

    .line 249
    :cond_1
    iget-object v3, p1, Lcom/oculus/horizon/store/StoreUtils$FilteringSet;->mFilteringSet:Ljava/util/Set;

    const-string v4, "UNKNOWN_TYPE_NAME"

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 250
    invoke-virtual {v0}, Lcom/oculus/horizon/api/common/Item;->isValidUnknownType()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 252
    invoke-virtual {v1, v0}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    goto :goto_0

    .line 255
    :cond_2
    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method public static getBestStoreRoadblockModel(Lcom/oculus/horizon/store/StoreSectionBrand;Lcom/oculus/horizon/api/common/Section$Assets;Ljava/lang/String;)Lcom/oculus/model/StoreRoadblockModel;
    .locals 6
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 223
    if-eqz p0, :cond_0

    .line 224
    invoke-static {p0}, Lcom/oculus/horizon/store/StoreUtils;->StoreRoadblockModelFromStoreSectionBrand(Lcom/oculus/horizon/store/StoreSectionBrand;)Lcom/oculus/model/StoreRoadblockModel;

    move-result-object v0

    .line 226
    :goto_0
    return-object v0

    :cond_0
    sget-object v1, Lcom/oculus/horizon/api/common/Section$Assets$AssetEdge$AssetNode$AssetMediaName;->HORIZON_ROADBLOCK_TITLE:Lcom/oculus/horizon/api/common/Section$Assets$AssetEdge$AssetNode$AssetMediaName;

    sget-object v2, Lcom/oculus/horizon/api/common/Section$Assets$AssetEdge$AssetNode$AssetMediaName;->HORIZON_ROADBLOCK_DESCRIPTION:Lcom/oculus/horizon/api/common/Section$Assets$AssetEdge$AssetNode$AssetMediaName;

    sget-object v3, Lcom/oculus/horizon/api/common/Section$Assets$AssetEdge$AssetNode$AssetMediaName;->HORIZON_ROADBLOCK_SUBDESCRIPTION:Lcom/oculus/horizon/api/common/Section$Assets$AssetEdge$AssetNode$AssetMediaName;

    sget-object v4, Lcom/oculus/horizon/api/common/Section$Assets$AssetEdge$AssetNode$AssetMediaName;->HORIZON_ROADBLOCK_IMAGE:Lcom/oculus/horizon/api/common/Section$Assets$AssetEdge$AssetNode$AssetMediaName;

    move-object v0, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/oculus/model/StoreRoadblockModel;->from(Lcom/oculus/horizon/api/common/Section$Assets;Lcom/oculus/horizon/api/common/Section$Assets$AssetEdge$AssetNode$AssetMediaName;Lcom/oculus/horizon/api/common/Section$Assets$AssetEdge$AssetNode$AssetMediaName;Lcom/oculus/horizon/api/common/Section$Assets$AssetEdge$AssetNode$AssetMediaName;Lcom/oculus/horizon/api/common/Section$Assets$AssetEdge$AssetNode$AssetMediaName;Ljava/lang/String;)Lcom/oculus/model/StoreRoadblockModel;

    move-result-object v0

    goto :goto_0
.end method

.method public static navigateFromStoreItemModel(Landroidx/fragment/app/FragmentManager;Lcom/oculus/horizon/fragmentfactory/FragmentFactory;Lcom/oculus/horizon/store/StoreItemModel;Lcom/oculus/horizon/logging/TrackingViews$View;)V
    .locals 1

    .prologue
    .line 263
    instance-of v0, p2, Lcom/oculus/horizon/store/StoreApplicationModel;

    if-eqz v0, :cond_1

    .line 264
    invoke-static {p0, p1, p2, p3}, Lcom/oculus/horizon/store/StoreUtils;->openApplicationPdpFragment(Landroidx/fragment/app/FragmentManager;Lcom/oculus/horizon/fragmentfactory/FragmentFactory;Lcom/oculus/horizon/store/StoreItemModel;Lcom/oculus/horizon/logging/TrackingViews$View;)V

    .line 272
    :cond_0
    :goto_0
    return-void

    .line 265
    :cond_1
    instance-of v0, p2, Lcom/oculus/horizon/store/StoreBannerModel;

    if-eqz v0, :cond_2

    .line 266
    check-cast p2, Lcom/oculus/horizon/store/StoreBannerModel;

    invoke-static {p0, p1, p2}, Lcom/oculus/horizon/store/StoreUtils;->openBannerTarget(Landroidx/fragment/app/FragmentManager;Lcom/oculus/horizon/fragmentfactory/FragmentFactory;Lcom/oculus/horizon/store/StoreBannerModel;)V

    goto :goto_0

    .line 267
    :cond_2
    instance-of v0, p2, Lcom/oculus/horizon/store/StoreBundleModel;

    if-eqz v0, :cond_3

    .line 268
    check-cast p2, Lcom/oculus/horizon/store/StoreBundleModel;

    invoke-static {p0, p1, p2, p3}, Lcom/oculus/horizon/store/StoreUtils;->openBundlePdpFragment(Landroidx/fragment/app/FragmentManager;Lcom/oculus/horizon/fragmentfactory/FragmentFactory;Lcom/oculus/horizon/store/StoreBundleModel;Lcom/oculus/horizon/logging/TrackingViews$View;)V

    goto :goto_0

    .line 269
    :cond_3
    instance-of v0, p2, Lcom/oculus/horizon/store/StoreInAppPurchaseModel;

    if-nez v0, :cond_4

    instance-of v0, p2, Lcom/oculus/horizon/store/StoreInAppRentalModel;

    if-eqz v0, :cond_0

    .line 270
    :cond_4
    invoke-static {p0, p1, p2}, Lcom/oculus/horizon/store/StoreUtils;->openInAppPdpFragment(Landroidx/fragment/app/FragmentManager;Lcom/oculus/horizon/fragmentfactory/FragmentFactory;Lcom/oculus/horizon/store/StoreItemModel;)V

    goto :goto_0
.end method

.method private static newPdpFragmentArgs(Ljava/lang/String;Ljava/lang/String;ZLcom/oculus/model/StyleTheme;)Landroid/os/Bundle;
    .locals 1
    .param p3    # Lcom/oculus/model/StyleTheme;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 373
    sget-object v0, Lcom/oculus/horizon/logging/TrackingViews$View;->NOT_SET:Lcom/oculus/horizon/logging/TrackingViews$View;

    invoke-static {p0, p1, p2, p3, v0}, Lcom/oculus/horizon/store/StoreUtils;->newPdpFragmentArgs(Ljava/lang/String;Ljava/lang/String;ZLcom/oculus/model/StyleTheme;Lcom/oculus/horizon/logging/TrackingViews$View;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method private static newPdpFragmentArgs(Ljava/lang/String;Ljava/lang/String;ZLcom/oculus/model/StyleTheme;Lcom/oculus/horizon/logging/TrackingViews$View;)Landroid/os/Bundle;
    .locals 3
    .param p3    # Lcom/oculus/model/StyleTheme;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 383
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 384
    const-string v1, "Model item id is null for product %s."

    invoke-static {p0, v1, p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    const-string v1, "arg_item_id"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    const-string v1, "arg_item_style_theme"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 387
    const-string v1, "arg_should_purchase_on_start"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 388
    const-string v1, "arg_referral_view"

    invoke-virtual {p4}, Lcom/oculus/horizon/logging/TrackingViews$View;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    return-object v0
.end method

.method private static newPdpFragmentIntent(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)Landroid/content/Intent;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<+",
            "Landroidx/fragment/app/Fragment;",
            ">;",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 359
    invoke-static {p0, p1, p2}, Lcom/oculus/horizon/main/MainActivity;->newFragmentIntent(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    .line 361
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 362
    invoke-virtual {v1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 363
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 365
    :cond_0
    return-object v0
.end method

.method public static openApplicationPdpFragment(Landroidx/fragment/app/FragmentManager;Lcom/oculus/horizon/fragmentfactory/FragmentFactory;Lcom/oculus/horizon/store/StoreItemModel;Lcom/oculus/horizon/logging/TrackingViews$View;)V
    .locals 4

    .prologue
    .line 279
    new-instance v0, Lcom/oculus/horizon/navigation/FragmentNavigator;

    invoke-direct {v0, p0}, Lcom/oculus/horizon/navigation/FragmentNavigator;-><init>(Landroidx/fragment/app/FragmentManager;)V

    iget-object v1, p2, Lcom/oculus/horizon/store/StoreItemModel;->itemId:Ljava/lang/String;

    iget-object v2, p2, Lcom/oculus/horizon/store/StoreItemModel;->name:Ljava/lang/String;

    iget-object v3, p2, Lcom/oculus/horizon/store/StoreItemModel;->styleTheme:Lcom/oculus/model/StyleTheme;

    .line 281
    invoke-virtual {p1, v1, v2, v3, p3}, Lcom/oculus/horizon/fragmentfactory/FragmentFactory;->newApplicationPdpFragment(Ljava/lang/String;Ljava/lang/String;Lcom/oculus/model/StyleTheme;Lcom/oculus/horizon/logging/TrackingViews$View;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    .line 280
    invoke-virtual {v0, v1}, Lcom/oculus/horizon/navigation/FragmentNavigator;->to(Landroidx/fragment/app/Fragment;)Lcom/oculus/horizon/navigation/FragmentNavigator;

    move-result-object v0

    .line 283
    invoke-virtual {v0}, Lcom/oculus/horizon/navigation/FragmentNavigator;->go()V

    .line 284
    return-void
.end method

.method public static openApplicationPdpFragment(Landroidx/fragment/app/FragmentManager;Lcom/oculus/horizon/fragmentfactory/FragmentFactory;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 291
    new-instance v0, Lcom/oculus/horizon/navigation/FragmentNavigator;

    invoke-direct {v0, p0}, Lcom/oculus/horizon/navigation/FragmentNavigator;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 292
    invoke-virtual {p1, p2}, Lcom/oculus/horizon/fragmentfactory/FragmentFactory;->newApplicationPdpFragment(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/navigation/FragmentNavigator;->to(Landroidx/fragment/app/Fragment;)Lcom/oculus/horizon/navigation/FragmentNavigator;

    move-result-object v0

    .line 293
    invoke-virtual {v0}, Lcom/oculus/horizon/navigation/FragmentNavigator;->go()V

    .line 294
    return-void
.end method

.method public static openApplicationPdpFragmentFromBundle(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/oculus/model/StyleTheme;Lcom/oculus/model/BundleModel;)V
    .locals 2

    .prologue
    .line 302
    const/4 v0, 0x0

    invoke-static {p1, p2, v0, p3}, Lcom/oculus/horizon/store/StoreUtils;->newPdpFragmentArgs(Ljava/lang/String;Ljava/lang/String;ZLcom/oculus/model/StyleTheme;)Landroid/os/Bundle;

    move-result-object v0

    .line 303
    const-string v1, "arg_parent_bundle_model"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 304
    const-class v1, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;

    invoke-static {p0, v1, v0}, Lcom/oculus/horizon/store/StoreUtils;->newPdpFragmentIntent(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 305
    return-void
.end method

.method private static openBannerTarget(Landroidx/fragment/app/FragmentManager;Lcom/oculus/horizon/fragmentfactory/FragmentFactory;Lcom/oculus/horizon/store/StoreBannerModel;)V
    .locals 4

    .prologue
    .line 313
    iget-object v0, p2, Lcom/oculus/horizon/store/StoreBannerModel;->navigateToSection:Lcom/oculus/horizon/store/StoreSection;

    if-eqz v0, :cond_1

    .line 314
    iget-object v0, p2, Lcom/oculus/horizon/store/StoreBannerModel;->navigateToSection:Lcom/oculus/horizon/store/StoreSection;

    iget-object v0, v0, Lcom/oculus/horizon/store/StoreSection;->category:Ljava/lang/String;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0, p1, v0, v1}, Lcom/oculus/horizon/store/StoreUtils;->openCategory(Landroidx/fragment/app/FragmentManager;Lcom/oculus/horizon/fragmentfactory/FragmentFactory;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 328
    :cond_0
    :goto_0
    return-void

    .line 319
    :cond_1
    iget-object v0, p2, Lcom/oculus/horizon/store/StoreBannerModel;->storeWideOffer:Lcom/oculus/horizon/store/StoreWideOfferModel;

    if-eqz v0, :cond_0

    iget-object v0, p2, Lcom/oculus/horizon/store/StoreBannerModel;->storeWideOffer:Lcom/oculus/horizon/store/StoreWideOfferModel;

    .line 320
    invoke-virtual {v0}, Lcom/oculus/horizon/store/StoreWideOfferModel;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 321
    const/4 v0, 0x0

    iget-object v1, p2, Lcom/oculus/horizon/store/StoreBannerModel;->storeWideOffer:Lcom/oculus/horizon/store/StoreWideOfferModel;

    sget-object v2, Lcom/oculus/horizon/store/roadblock/SpecialOfferRoadblockFragment$Status;->UNREDEEMED:Lcom/oculus/horizon/store/roadblock/SpecialOfferRoadblockFragment$Status;

    sget-object v3, Lcom/oculus/horizon/logging/TrackingViews$View;->STORE_BANNER:Lcom/oculus/horizon/logging/TrackingViews$View;

    invoke-static {p0, v0, v1, v2, v3}, Lcom/oculus/horizon/store/roadblock/SpecialOfferRoadblockFragment;->launchMe(Landroidx/fragment/app/FragmentManager;Lcom/oculus/horizon/store/roadblock/SpecialOfferRoadblockFragment$Listener;Lcom/oculus/horizon/store/StoreWideOfferModel;Lcom/oculus/horizon/store/roadblock/SpecialOfferRoadblockFragment$Status;Lcom/oculus/horizon/logging/TrackingViews$View;)V

    goto :goto_0
.end method

.method public static openBundlePdpFragment(Landroidx/fragment/app/FragmentManager;Lcom/oculus/horizon/fragmentfactory/FragmentFactory;Lcom/oculus/horizon/store/StoreBundleModel;Lcom/oculus/horizon/logging/TrackingViews$View;)V
    .locals 4

    .prologue
    .line 410
    new-instance v0, Lcom/oculus/horizon/navigation/FragmentNavigator;

    invoke-direct {v0, p0}, Lcom/oculus/horizon/navigation/FragmentNavigator;-><init>(Landroidx/fragment/app/FragmentManager;)V

    iget-object v1, p2, Lcom/oculus/horizon/store/StoreBundleModel;->itemId:Ljava/lang/String;

    iget-object v2, p2, Lcom/oculus/horizon/store/StoreBundleModel;->name:Ljava/lang/String;

    iget-object v3, p2, Lcom/oculus/horizon/store/StoreBundleModel;->styleTheme:Lcom/oculus/model/StyleTheme;

    .line 411
    invoke-virtual {p1, v1, v2, v3, p3}, Lcom/oculus/horizon/fragmentfactory/FragmentFactory;->newBundlePdpFragment(Ljava/lang/String;Ljava/lang/String;Lcom/oculus/model/StyleTheme;Lcom/oculus/horizon/logging/TrackingViews$View;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/navigation/FragmentNavigator;->to(Landroidx/fragment/app/Fragment;)Lcom/oculus/horizon/navigation/FragmentNavigator;

    move-result-object v0

    .line 412
    invoke-virtual {v0}, Lcom/oculus/horizon/navigation/FragmentNavigator;->go()V

    .line 413
    return-void
.end method

.method public static openBundlePdpFragmentForPurchase(Landroidx/fragment/app/FragmentManager;Lcom/oculus/horizon/fragmentfactory/FragmentFactory;Ljava/lang/String;Ljava/lang/String;Lcom/oculus/model/StyleTheme;Lcom/oculus/horizon/logging/TrackingViews$View;)V
    .locals 4

    .prologue
    .line 400
    invoke-virtual {p1, p2, p3, p4, p5}, Lcom/oculus/horizon/fragmentfactory/FragmentFactory;->newBundlePdpFragment(Ljava/lang/String;Ljava/lang/String;Lcom/oculus/model/StyleTheme;Lcom/oculus/horizon/logging/TrackingViews$View;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 401
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "arg_kickoff_purchase"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 402
    new-instance v1, Lcom/oculus/horizon/navigation/FragmentNavigator;

    invoke-direct {v1, p0}, Lcom/oculus/horizon/navigation/FragmentNavigator;-><init>(Landroidx/fragment/app/FragmentManager;)V

    invoke-virtual {v1, v0}, Lcom/oculus/horizon/navigation/FragmentNavigator;->to(Landroidx/fragment/app/Fragment;)Lcom/oculus/horizon/navigation/FragmentNavigator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/horizon/navigation/FragmentNavigator;->clearBackStack()Lcom/oculus/horizon/navigation/FragmentNavigator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/horizon/navigation/FragmentNavigator;->go()V

    .line 403
    return-void
.end method

.method public static openCategory(Landroidx/fragment/app/FragmentManager;Lcom/oculus/horizon/fragmentfactory/FragmentFactory;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/FragmentManager;",
            "Lcom/oculus/horizon/fragmentfactory/FragmentFactory;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 499
    new-instance v0, Lcom/oculus/horizon/navigation/FragmentNavigator;

    invoke-direct {v0, p0}, Lcom/oculus/horizon/navigation/FragmentNavigator;-><init>(Landroidx/fragment/app/FragmentManager;)V

    invoke-virtual {p1, p2, p3}, Lcom/oculus/horizon/fragmentfactory/FragmentFactory;->newStoreSectionFragment(Ljava/lang/String;Ljava/util/ArrayList;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/navigation/FragmentNavigator;->to(Landroidx/fragment/app/Fragment;)Lcom/oculus/horizon/navigation/FragmentNavigator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/horizon/navigation/FragmentNavigator;->go()V

    .line 500
    return-void
.end method

.method public static openDeveloperFragment(Landroid/content/Context;Lcom/oculus/horizon/api/common/Item;)V
    .locals 8

    .prologue
    .line 477
    const-string v0, "Model item is null."

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 479
    new-instance v0, Lcom/oculus/horizon/pdp/DeveloperFragment$Developer;

    iget-object v1, p1, Lcom/oculus/horizon/api/common/Item;->developer_name:Ljava/lang/String;

    iget-object v2, p1, Lcom/oculus/horizon/api/common/Item;->publisher_name:Ljava/lang/String;

    iget-object v3, p1, Lcom/oculus/horizon/api/common/Item;->category_name:Ljava/lang/String;

    iget-object v4, p1, Lcom/oculus/horizon/api/common/Item;->genre_names:Ljava/util/List;

    iget v5, p1, Lcom/oculus/horizon/api/common/Item;->release_date:I

    int-to-long v6, v5

    .line 485
    invoke-static {v6, v7}, Lcom/oculus/horizon/util/DateUtils;->getDateFromTimestampInSecondsUserLocaleFormat(J)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p1, Lcom/oculus/horizon/api/common/Item;->website_url:Ljava/lang/String;

    invoke-direct/range {v0 .. v6}, Lcom/oculus/horizon/pdp/DeveloperFragment$Developer;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 489
    const-string v2, "developer"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 490
    const-class v0, Lcom/oculus/horizon/pdp/DeveloperFragment;

    invoke-static {p0, v0, v1}, Lcom/oculus/horizon/main/MainActivity;->newFragmentIntent(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 491
    return-void
.end method

.method public static openInAppPdpFragment(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/oculus/model/StyleTheme;)V
    .locals 2

    .prologue
    .line 341
    const-class v0, Lcom/oculus/horizon/pdp/InAppPdpFragment;

    const/4 v1, 0x0

    .line 345
    invoke-static {p1, p2, v1, p3}, Lcom/oculus/horizon/store/StoreUtils;->newPdpFragmentArgs(Ljava/lang/String;Ljava/lang/String;ZLcom/oculus/model/StyleTheme;)Landroid/os/Bundle;

    move-result-object v1

    .line 342
    invoke-static {p0, v0, v1}, Lcom/oculus/horizon/store/StoreUtils;->newPdpFragmentIntent(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    .line 341
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 346
    return-void
.end method

.method private static openInAppPdpFragment(Landroidx/fragment/app/FragmentManager;Lcom/oculus/horizon/fragmentfactory/FragmentFactory;Lcom/oculus/horizon/store/StoreItemModel;)V
    .locals 5

    .prologue
    .line 332
    new-instance v0, Lcom/oculus/horizon/navigation/FragmentNavigator;

    invoke-direct {v0, p0}, Lcom/oculus/horizon/navigation/FragmentNavigator;-><init>(Landroidx/fragment/app/FragmentManager;)V

    iget-object v1, p2, Lcom/oculus/horizon/store/StoreItemModel;->itemId:Ljava/lang/String;

    iget-object v2, p2, Lcom/oculus/horizon/store/StoreItemModel;->name:Ljava/lang/String;

    iget-object v3, p2, Lcom/oculus/horizon/store/StoreItemModel;->styleTheme:Lcom/oculus/model/StyleTheme;

    sget-object v4, Lcom/oculus/horizon/logging/TrackingViews$View;->NOT_SET:Lcom/oculus/horizon/logging/TrackingViews$View;

    .line 334
    invoke-virtual {p1, v1, v2, v3, v4}, Lcom/oculus/horizon/fragmentfactory/FragmentFactory;->newInAppPdpFragment(Ljava/lang/String;Ljava/lang/String;Lcom/oculus/model/StyleTheme;Lcom/oculus/horizon/logging/TrackingViews$View;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    .line 333
    invoke-virtual {v0, v1}, Lcom/oculus/horizon/navigation/FragmentNavigator;->to(Landroidx/fragment/app/Fragment;)Lcom/oculus/horizon/navigation/FragmentNavigator;

    move-result-object v0

    .line 336
    invoke-virtual {v0}, Lcom/oculus/horizon/navigation/FragmentNavigator;->go()V

    .line 337
    return-void
.end method

.method public static openInAppRentalPdpFragment(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/oculus/model/StyleTheme;)V
    .locals 2

    .prologue
    .line 350
    const-class v0, Lcom/oculus/horizon/pdp/InAppPdpFragment;

    const/4 v1, 0x0

    .line 354
    invoke-static {p1, p2, v1, p3}, Lcom/oculus/horizon/store/StoreUtils;->newPdpFragmentArgs(Ljava/lang/String;Ljava/lang/String;ZLcom/oculus/model/StyleTheme;)Landroid/os/Bundle;

    move-result-object v1

    .line 351
    invoke-static {p0, v0, v1}, Lcom/oculus/horizon/store/StoreUtils;->newPdpFragmentIntent(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    .line 350
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 355
    return-void
.end method

.method public static openReviewCommentFragment(Landroidx/fragment/app/FragmentManager;Lcom/oculus/horizon/fragmentfactory/FragmentFactory;Lcom/oculus/horizon/api/common/Item$QualityRating;ZLjava/lang/String;Lcom/oculus/horizon/api/common/Item$AndroidBinary;)V
    .locals 2

    .prologue
    .line 442
    const-string v0, "Model Rating is null"

    invoke-static {p2, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 444
    new-instance v0, Lcom/oculus/horizon/navigation/FragmentNavigator;

    invoke-direct {v0, p0}, Lcom/oculus/horizon/navigation/FragmentNavigator;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 445
    invoke-virtual {p1, p4, p3, p2, p5}, Lcom/oculus/horizon/fragmentfactory/FragmentFactory;->newReviewCommentFragment(Ljava/lang/String;ZLcom/oculus/horizon/api/common/Item$QualityRating;Lcom/oculus/horizon/api/common/Item$AndroidBinary;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/navigation/FragmentNavigator;->to(Landroidx/fragment/app/Fragment;)Lcom/oculus/horizon/navigation/FragmentNavigator;

    move-result-object v0

    .line 446
    invoke-virtual {v0}, Lcom/oculus/horizon/navigation/FragmentNavigator;->go()V

    .line 447
    return-void
.end method

.method public static openReviewFragment(Landroidx/fragment/app/FragmentManager;Lcom/oculus/horizon/fragmentfactory/FragmentFactory;Ljava/lang/String;Ljava/lang/String;ILcom/oculus/horizon/logging/TrackingViews$View;Lcom/oculus/horizon/api/common/Item$QualityRating;)V
    .locals 7
    .param p6    # Lcom/oculus/horizon/api/common/Item$QualityRating;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 424
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 425
    const-string v0, "Package name is null."

    invoke-static {p3, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 427
    new-instance v6, Lcom/oculus/horizon/navigation/FragmentNavigator;

    invoke-direct {v6, p0}, Lcom/oculus/horizon/navigation/FragmentNavigator;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 430
    invoke-virtual {p5}, Lcom/oculus/horizon/logging/TrackingViews$View;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move-object v5, p6

    .line 429
    invoke-virtual/range {v0 .. v5}, Lcom/oculus/horizon/fragmentfactory/FragmentFactory;->newReviewFragment(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/oculus/horizon/api/common/Item$QualityRating;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 428
    invoke-virtual {v6, v0}, Lcom/oculus/horizon/navigation/FragmentNavigator;->to(Landroidx/fragment/app/Fragment;)Lcom/oculus/horizon/navigation/FragmentNavigator;

    move-result-object v0

    .line 431
    invoke-virtual {v0}, Lcom/oculus/horizon/navigation/FragmentNavigator;->go()V

    .line 432
    return-void
.end method

.method public static openReviewsFragment(Landroidx/fragment/app/FragmentManager;Lcom/oculus/horizon/fragmentfactory/FragmentFactory;Lcom/oculus/horizon/api/common/Item;)V
    .locals 2

    .prologue
    .line 452
    const-string v0, "Model item is null."

    invoke-static {p2, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 453
    new-instance v0, Lcom/oculus/horizon/navigation/FragmentNavigator;

    invoke-direct {v0, p0}, Lcom/oculus/horizon/navigation/FragmentNavigator;-><init>(Landroidx/fragment/app/FragmentManager;)V

    invoke-virtual {p1, p2}, Lcom/oculus/horizon/fragmentfactory/FragmentFactory;->newReviewsFragment(Lcom/oculus/horizon/api/common/Item;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/navigation/FragmentNavigator;->to(Landroidx/fragment/app/Fragment;)Lcom/oculus/horizon/navigation/FragmentNavigator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/horizon/navigation/FragmentNavigator;->go()V

    .line 454
    return-void
.end method

.method public static openVersionNotesFragment(Landroid/content/Context;Lcom/oculus/horizon/api/common/Item;)V
    .locals 8

    .prologue
    .line 458
    const-string v0, "Model item is null."

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 460
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 461
    iget-object v0, p1, Lcom/oculus/horizon/api/common/Item;->supported_binaries:Lcom/oculus/horizon/api/common/Item$ChangeLogs;

    iget-object v0, v0, Lcom/oculus/horizon/api/common/Item$ChangeLogs;->nodes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/api/common/Item$ChangeLog;

    .line 462
    new-instance v3, Lcom/oculus/horizon/pdp/VersionNotesFragment$VersionNotes;

    iget-object v4, v0, Lcom/oculus/horizon/api/common/Item$ChangeLog;->version:Ljava/lang/String;

    iget v5, v0, Lcom/oculus/horizon/api/common/Item$ChangeLog;->release_date:I

    int-to-long v6, v5

    .line 465
    invoke-static {v6, v7}, Lcom/oculus/horizon/util/DateUtils;->getDateFromTimestampInSeconds(J)Ljava/lang/String;

    move-result-object v5

    iget-object v0, v0, Lcom/oculus/horizon/api/common/Item$ChangeLog;->change_log:Ljava/lang/String;

    invoke-direct {v3, v4, v5, v0}, Lcom/oculus/horizon/pdp/VersionNotesFragment$VersionNotes;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 469
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 470
    const-string v2, "version_notes"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 471
    const-class v1, Lcom/oculus/horizon/pdp/VersionNotesFragment;

    .line 472
    invoke-static {p0, v1, v0}, Lcom/oculus/horizon/main/MainActivity;->newFragmentIntent(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    .line 471
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 473
    return-void
.end method
